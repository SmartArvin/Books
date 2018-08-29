# Android不编译某个模块

> Android 5.1及以上源码中编译相关的文件一般在build目录下 
> build/target/product 放了很多mk文件,一般不同的产品会有不同的目录

假设我不想编译Music，在build目录下grep一下“Music” 
target/product/full_base.mk 
target/product/sdk_base.mk 
进入这两个文件，删掉这两句及相关库(如果有库文件)后：

```
PRODUCT_PACKAGES := \
libfwdlockengine \
WAPPushManager123
```

把out目录删除，或者只删掉相关文件 
重新编译即可

在 full_base.mk 中，有以下内容

```
PRODUCT_PACKAGES := \
libfwdlockengine \
WAPPushManager

PRODUCT_PACKAGES += \
LiveWallpapersPicker \
NoiseField \
PhaseBeam \
VisualizationWallpapers \
PhotoTable
...... 
123456789101112
```

然后，sdk_base.mk中也许多packages，一般是Android原生的一些应用

```
PRODUCT_PACKAGES := \
        Dialer \
        Gallery \
        Mms \
        Music \
        SystemUI \
......1234567
```

不想编译哪个，直接删除即可，编译打包时将不会编译打包该应用

但是，请注意如果屏蔽某些系统原生应用会出现有的地方可能会调用到这些app。如果不编译该模块，而系统中有对其的调用，很可能会有弹窗警告提示“XXXX”已停止工作，所有请谨慎移除系统应用。

## ==注意：==

> 比如在移除系统原生Music模块时仅删除sdk_base.mk中的模块声明并没有达到移除的目的，因为在源码目录下，进去 /build/target/product 目录下，你会发现有个名为generic_no_telephony.mk 的文件，打开文件后你会看到有一项 “PRODUCT_PACKAGES := ”,在这里同样也有Music模块的编译声明，因此在这里可以添加或删除你想要编译进image下的包。

例如：你不想编译music进image中，你就在该文件里PRODUCT_PACKAGES :=这一项下的Music删除就可以了