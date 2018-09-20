# 旋转屏幕导致Activity重建问题的解决办法

[原文链接](http://www.520monkey.com/archives/22)

Android开发文档上专门有一小节解释这个问题。简单来说，Activity是负责与用户交互的最主要机制，任何“设置”（Configuration）的改变都可能对Activity的界面造成影响，这时系统会销毁并重建Activity以便反映新的Configuration。

“屏幕方向”（orientation）是一个Configuration，通过查看[Configuration类的javadoc](http://developer.android.com/reference/android/content/res/Configuration.html)可以看到其他Configuration还有哪些：如fontScale、keyboardHidden和locale等等。

当屏幕旋转时，这个Configuration就发生了改变，因此当前显示的Activity需要被重建，Activity对象会被终止，它的onPause()、onStop()和onDestroy()方法依次触发，然后一个新的Activity对象被创建，onCreate()方法被触发。假设屏幕旋转前，用户正在手机上填写一个注册表单，如果处理不当，用户会发现旋转后的表单变成空白的了，严重影响使用体验。

要解决这个问题有三种方法：

# 方法1：禁止旋转屏幕

毫无疑问，这是最懒的办法了，相当于回避了本文提出的问题，方法如下看看就好：

```
<activity android:name=".MyActivity"
          android:screenOrientation="portrait"
          android:label="@string/app_name">
```

 

# 方法2：旋转后恢复现场

既然Activity会被销毁，那么我们就可以使用[前文](http://www.cnblogs.com/bjzhanghao/archive/2012/11/08/2759948.html)介绍过的“持久化/恢复现场”方法来解决。即在onPause()里将用户当前已经输入的内容保存到数据库或Preference，在onCreate()方法里读取并填充到表单中，这也是官方推荐的方法。

需要补充一点，如果Activity重建需要耗费大量资源或需要访问网络导致时间很长，可以实现onRetainNonConfigurationInstance()方法将所需数据先保存到一个对象里，像下面这样：

```
@Override
public Object onRetainNonConfigurationInstance() {
    final MyDataObject data = collectMyLoadedData();
    return data;
}
```

重建时，在onCreate()方法里通过getLastNonConfigurationInstance()方法获得之前保存的数据，如下所示：

```
@Override
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);

    final MyDataObject data = (MyDataObject) getLastNonConfigurationInstance();
    if (data == null) {//表示不是由于Configuration改变触发的onCreate()
        data = loadMyData();
    }
    ...
}
```

 

# 方法3：手工处理旋转

一般情况下Configuration的改变会导致Activity被销毁重建，但也有办法让指定的Configuration改变时不重建Activity，方法是在AndroidManifest.xml里通过android:configChanges属性指定需要忽略的Configuration名字，例如下面这样：

```
<activity android:name=".MyActivity"
          android:configChanges="orientation|screenSize|keyboardHidden|keyboard|screenLayout"
          android:label="@string/app_name">
```

这样设置以后，当屏幕旋转时Activity对象不会被销毁——作为替代，Activity的onConfigurationChanged()方法被触发，在这里开发者可以获取到当前的屏幕方向以便做必要的更新。既然这种情况下的Activity不会被销毁，旋转后Activity里正显示的信息（例如文本框中的文字）也就不会丢失了。

假如你的应用里，横屏和竖屏使用同一个layout资源文件，onConfigurationChanged()里甚至可以什么都不做。但如果横屏与竖屏使用不同的layout资源文件，例如横屏用res/layout-land/main.xml，竖屏用res/layout-port/main.xml，则必须在onConfigurationChanged()里重新调用setContentView()方法以便新的layout能够生效，这时虽然Activity对象没有销毁，但界面上的各种控件都被销毁重建了，你需要写额外的代码来恢复界面信息。

```
@Override
public void onConfigurationChanged(Configuration newConfig) {
    super.onConfigurationChanged(newConfig);
 
    // Checks the orientation of the screen
    if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
        Toast.makeText(this, "横屏模式", Toast.LENGTH_SHORT).show();
    } else if (newConfig.orientation == Configuration.ORIENTATION_PORTRAIT){
        Toast.makeText(this, "竖屏模式", Toast.LENGTH_SHORT).show();
    }
}
```

官方的[Android开发文档](http://developer.android.com/guide/topics/manifest/activity-element.html#config)不建议使用这种方式处理Configuration改变：

> Note: Using this attribute should be avoided and used only as a last-resort. Please read [Handling Runtime Changes](http://developer.android.com/guide/topics/resources/runtime-changes.html) for more information about how to properly handle a restart due to a configuration change.

 

# 最佳实践

考虑到旋转屏幕并不是使Activity被销毁重建的唯一因素，仍然推荐[前文](http://www.cnblogs.com/bjzhanghao/archive/2012/11/08/2759948.html)介绍过的方法：在onPause()里持久化Activity状态，在onCreate()里恢复现场，可以做到一举多得；虽然Google不推荐设置android:configChanges属性的方式，但如果你的Activity横向纵向共用同一个layout文件，方法3无疑是最省事的.