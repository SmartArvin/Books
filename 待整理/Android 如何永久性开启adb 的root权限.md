# Android 如何永久性开启adb 的root权限

>  adb 的root 权限是在system/core/adb/adb.c 中控制。主要根据ro.secure 以及 ro.debuggable 等system property 来控制。 
>
> 默认即档ro.secure 为0 时，即开启root 权限，为1时再根据ro.debuggable 等选项来确认是否可以用开启root 权限。

因此如果要永久性开启adb 的root 权限，有两种修改的方式: 

- 修改system property ro.secure， 让ro.secure=0。 

- 修改adb.c 中开启root 权限的判断逻辑。

  

下面详细说明这两种修改方式:

### 方法一、 修改system property ro.secure， 让ro.secure=0。 

#### 1、修改alps/build/core/main.mk

```
ifneq (,$(user_variant))
  # Target is secure in user builds.
  ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1123
```

将ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1 
改成 ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

#### 2、 在android JB 版本(4.1) 以后，google 从编译上直接去除了adbd 的user 版本root 权限， 为此您要修改system/core/adb/Android.mk 

中的编译选项 ALLOW_ADBD_ROOT, 如果没有打开这个选项，那么adb.c 中将不会根据ro.secure 去选择root 还是shell 权限，直接返回shell 权限。 
因此您必须需要Android.mk 中的第126行：

```
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
===> 
ifneq (,$(filter userdebug user eng,$(TARGET_BUILD_VARIANT)))123
```



### 方法二、 修改adb.c 中开启root 权限的判断逻辑。这里针对4.1 以后版本 和4.1以前版本有所区别。

如果是JB 4.1 以后版本，直接修改函数 should_drop_privileges() 函数, 清空这个函数，直接返回 0 即可。返回0 即开启root 权限。

当修改完成后，只需要重新build bootimage ，然后download 即可，然后到setting 中开启debug 选项，adb 连接后，会显示 #, 即root 成功。 