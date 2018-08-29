# Android 6.0 如何默认打开user版本的root权限

链接：https://blog.csdn.net/wangjicong_215/article/details/77601638

### 1.system/core/adb/Android.mk

```
diff --git a/adb/Android.mk b/adb/Android.mk

index d4adbfb..e06956a 100644

--- a/adb/Android.mk

+++ b/adb/Android.mk

@@ -237,10 +237,8 @@ LOCAL_CFLAGS := \

 LOCAL_CFLAGS += -DALLOW_ADBD_NO_AUTH=(if (filter userdebug eng,$(TARGET_BUILD_VARIANT)),1,0)

-ifneq (,(filter userdebug eng,(TARGET_BUILD_VARIANT)))

-LOCAL_CFLAGS += -DALLOW_ADBD_DISABLE_VERITY=1

-LOCAL_CFLAGS += -DALLOW_ADBD_ROOT=1

-endif

+  LOCAL_CFLAGS += -DALLOW_ADBD_DISABLE_VERITY=1

+  LOCAL_CFLAGS += -DALLOW_ADBD_ROOT=1

 LOCAL_MODULE := adbd

```



### 2.system/core/adb/adb_main.cpp

```
diff --git a/adb/adb_main.cpp b/adb/adb_main.cpp

index 45a2158..8181f79 100644

--- a/adb/adb_main.cpp

+++ b/adb/adb_main.cpp

@@ -85,11 +85,12 @@ static const char *root_seclabel = NULL;

 static void drop_capabilities_bounding_set_if_needed() {

 #ifdef ALLOW_ADBD_ROOT

-    char value[PROPERTY_VALUE_MAX];

+    return;

+    /*char value[PROPERTY_VALUE_MAX];

     property_get("ro.debuggable", value, "");

     if (strcmp(value, "1") == 0) {

         return;

-    }

+    }*/

 #endif

     int i;

     for (i = 0; prctl(PR_CAPBSET_READ, i, 0, 0, 0) >= 0; i++) {

@@ -109,6 +110,7 @@ static void drop_capabilities_bounding_set_if_needed() {

 }

 static bool should_drop_privileges() {

+       return false;

 #if defined(ALLOW_ADBD_ROOT)

     char value[PROPERTY_VALUE_MAX];

```



