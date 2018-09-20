# Android应用静默安装方法整理

> 什么是静默安装？就是要在用户不知情的情况下后台安装应用、更新应用、安装插件等操作。
>
> 但是静默安装有诸多限制：
>
> 1.需要申明权限
>
> ```
> <uses-permission android:name="android.permission.INSTALL_PACKAGES" />
> ```
>
> 2.上述权限仅支持System级应用可用，所以需要声明当前应用为System级应用
>
> ```
> android:sharedUserId="android.uid.system"
> ```
>
> 权限配置完成，下面开始梳理实现业务逻辑~

### 一、Java代码执行pm install命令

> 优点：使用简单，代码侵入性较低
>
> 缺点：需要system级应用才能使用
>
> 应用安装的本源都是通过pm install+apkPath 实现
>
> 普通第三方应用不支持直接运行shell命令，仅System级别应用可以提供java方式执行shell命令

#### 1.1 用法

```
mAPKUtils.runShellCmd("pm install "+ getFilesDir().getPath() + File.separator + apkName);
mAPKUtils.installApkBySilentPm(getFilesDir().getPath() + File.separator + apkName);
```

#### 1.2 pm install业务实现

```
public void runShellCmd(String command) {
        Process process = null;
        BufferedReader bufferedReader = null;
        StringBuilder mStringBuilder =new StringBuilder();
        mStringBuilder.delete(0, mStringBuilder.length());
        String[] cmd = new String[] { "/system/bin/sh", "-c", command };
        try {
            byte b[] = new byte[1024];
            process = Runtime.getRuntime().exec(cmd);
            bufferedReader = new BufferedReader(new InputStreamReader(
                    process.getInputStream()));
            String line;

            while ((line = bufferedReader.readLine()) != null) {
                mStringBuilder.append(line);
            }
            Log.d(TAG, "runShellCommand result : " + mStringBuilder.toString());
            process.waitFor();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (process != null) {
                process.destroy();
            }
        }
    }
    
    或者
    public boolean installApkBySilentPm(String apkPath) {
		boolean result = false;
		try {
			String command = "pm install "+ apkPath;
			Runtime runtime = Runtime.getRuntime();
			Process proc = runtime.exec(command);
		} catch (Exception e) {
			Log.e(TAG, e.getMessage(), e);
		}
		return result;
	}
```

### 二、使用反射实现

> 优点：使用简单，代码侵入性较低
>
> 缺点：需要system级应用才能使用
>
> 使用反射的方法拿到PackageManager绕过PackageInstaller安装界面实现应用静默安装

#### 2.1 用法

```
mAPKUtils.installApkBySilentInvoke(getFilesDir().getPath() + File.separator + apkName);
```



#### 2.2 Invoke反射业务实现

```
public void installApkBySilentInvoke(String installPath) {
		Class<?> pmService;
		Class<?> activityTherad;
		Method method;
		try {
			activityTherad = Class.forName("android.app.ActivityThread");
			Class<?> paramTypes[] = getParamTypes(activityTherad,
					"getPackageManager");
			method = activityTherad.getMethod("getPackageManager", paramTypes);
			Object PackageManagerService = method.invoke(activityTherad);
			pmService = PackageManagerService.getClass();
			Class<?> paramTypes1[] = getParamTypes(pmService, "installPackage");
			method = pmService.getMethod("installPackage", paramTypes1);
			method.invoke(PackageManagerService, Uri.parse(installPath), null,
					0, null);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	private static Class<?>[] getParamTypes(Class<?> cls, String mName) {
		Class<?> cs[] = null;
		Method[] mtd = cls.getMethods();
		for (int i = 0; i < mtd.length; i++) {
			if (!mtd[i].getName().equals(mName)) {
				continue;
			}
			cs = mtd[i].getParameterTypes();
		}
		return cs;
	}
```



### 三、使用IPackageManager实现

> 优点：业务逻辑比较严谨
>
> 缺点：代码侵入性太强，需要源码支持，同样需要system级应用才能使用
>
> 使用反射的目的是拿到ServiceManager，进而通过反射获取PackageManager实现apk安装

#### 3.1 用法

```
mAPKUtils.installApkBySilentIPm(getFilesDir().getPath() + File.separator + apkName);
```

#### 3.2 IPackageManager及反射业务实现

```
private final int INSTALL_REPLACE_EXISTING = 2;
public void installApkBySilentIPm(String apkPath) {
		PackageInstallObserver installObserver = new PackageInstallObserver();
		try {
			Log.d(TAG, "apkPath = " + apkPath);
			Class<?> ServiceManager = Class
					.forName("android.os.ServiceManager");
			Method getService = ServiceManager.getDeclaredMethod("getService",
					String.class);
			getService.setAccessible(true);
			IBinder packAgeBinder = (IBinder) getService
					.invoke(null, "package");
			IPackageManager iPm = IPackageManager.Stub
					.asInterface(packAgeBinder);
			iPm.installPackage(Uri.fromFile(new File(apkPath)),
					installObserver, INSTALL_REPLACE_EXISTING,
					new File(apkPath).getPath());

		} catch (Exception e) {
			e.printStackTrace();
			Log.d(TAG, "安装失败1");
			try {
				installObserver.packageInstalled(null, -1);
				Log.d(TAG, "安装失败2");
			} catch (RemoteException ignore) {
				Log.d(TAG, "安装失败3");
			}
		}
	}
```

以上业务需要AIDL辅助实现，需要将IPackageManager.aidl等必要源码支持，具体可见demo