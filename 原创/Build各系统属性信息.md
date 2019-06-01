# Build系统属性说明

> Build系统属性保存系统各项配置信息



###  代码示例：

```
private void getDeviceInfo(){
        StringBuffer sb =new StringBuffer();
        sb.append("主板："+Build.BOARD);
        sb.append("\n系统启动程序版本号："+ Build.BOOTLOADER);
        sb.append("\n系统定制商："+Build.BRAND);
        sb.append("\ncpu指令集："+Build.CPU_ABI);
        sb.append("\ncpu指令集2："+Build.CPU_ABI2);
        sb.append("\n设置参数："+Build.DEVICE);
        sb.append("\n显示屏参数："+Build.DISPLAY);
        sb.append("\n无线电固件版本："+Build.getRadioVersion());
        sb.append("\n硬件识别码："+Build.FINGERPRINT);
        sb.append("\n硬件名称："+Build.HARDWARE);
        sb.append("\nHOST:"+Build.HOST);
        sb.append("\n修订版本列表："+Build.ID);
        sb.append("\n硬件制造商："+Build.MANUFACTURER);
        sb.append("\n版本："+Build.MODEL);
        sb.append("\n硬件序列号："+Build.SERIAL);
        sb.append("\n手机制造商："+Build.PRODUCT);
        sb.append("\n描述Build的标签："+Build.TAGS);
        sb.append("\nTIME:"+getTime(Build.TIME));
        sb.append("\nbuilder类型："+Build.TYPE);
        sb.append("\nUSER:"+Build.USER);
        
        Log.i("yzh" ,  "getDeviceInfo:   "+sb.toString());
    }
```

### 信息输出：

```
*主板：ktc
* 系统启动程序版本号：123456789
* 系统定制商：ktc
* cpu指令集：arm64-v8a
* cpu指令集2：
* 设置参数：ktc
* 显示屏参数：ktc-userdebug 6.0 MRA58K user.20181017.094540 release-keys
* 无线电固件版本：
* 硬件识别码：ktc/ktc/ktc:6.0/MRA58K/user.20181017.094540:userdebug/release-keys
* 硬件名称：maxim
* HOST:Comp12171
* 修订版本列表：MRA58K
* 硬件制造商：KTC
* 版本：KTC
* 硬件序列号：08888223055
* 手机制造商：ktc
* 描述Build的标签：release-keys
* TIME:20181017T094611
* builder类型：userdebug
* USER:daizhao
```

