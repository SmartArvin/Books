# Android WebView实现视频播放

> WebView使用有很多坑，平时做系统定制也很少会用到这部分知识，所以越不用越生疏，底气不足。
>
> 现在有个需求是希望点击一个视频链接跳转到网页上播放视频，然后点击全屏能自动横屏。
>
> 使用很简单，提供视频源的url即可。但是如果你的网站的视频是flash播放的话，会出现空白的情况（需要flash插件），所以下面这个方法使用必须是H5的



**java代码：**

```
package com.example.webviewtest;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;

public class MainActivity extends Activity {

	private WebView webView;
	private String url;

	private static String VIDEO_PLAY_LINK = "http://h16552j072.51mypc.cn/kmanage-web/upload/2018-08-09/0/1533798566869C1YS40.mp4";

	/** 视频全屏参数 */
	protected static final FrameLayout.LayoutParams COVER_SCREEN_PARAMS = new FrameLayout.LayoutParams(
			ViewGroup.LayoutParams.MATCH_PARENT,
			ViewGroup.LayoutParams.MATCH_PARENT);
	private View customView;
	private FrameLayout fullscreenContainer;
	private WebChromeClient.CustomViewCallback customViewCallback;
	private Button start;
	private EditText mEditText;

	@Override
	protected void onCreate(Bundle bundle) {
		super.onCreate(bundle);

		setContentView(R.layout.activity_main);
		webView = (WebView) findViewById(R.id.webView);
		start = (Button) findViewById(R.id.start);
		mEditText = (EditText) findViewById(R.id.edit);

		start.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				url = mEditText.getText().toString();
				initWebView();
			}
		});

	}

	@Override
	protected void onStop() {
		super.onStop();
		webView.reload();
	}

	@Override
	protected void onResume() {
		super.onResume();
		webView.onResume();
		webView.resumeTimers();
	}

	/** 展示网页界面 **/
	public void initWebView() {
		WebChromeClient wvcc = new WebChromeClient();
		WebSettings webSettings = webView.getSettings();
		webSettings.setJavaScriptEnabled(true);
		webSettings.setUseWideViewPort(true); // 关键点
		webSettings.setAllowFileAccess(true); // 允许访问文件
		webSettings.setSupportZoom(true); // 支持缩放
		webSettings.setLoadWithOverviewMode(true);
		webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE); // 不加载缓存内容

		webView.setWebChromeClient(wvcc);
		WebViewClient wvc = new WebViewClient() {
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				webView.loadUrl(url);
				return true;
			}
		};
		webView.setWebViewClient(wvc);
		webView.setWebChromeClient(new WebChromeClient() {

			@Override
			public View getVideoLoadingProgressView() {
				FrameLayout frameLayout = new FrameLayout(MainActivity.this);
				frameLayout.setLayoutParams(new FrameLayout.LayoutParams(
						FrameLayout.LayoutParams.MATCH_PARENT,
						FrameLayout.LayoutParams.MATCH_PARENT));
				return frameLayout;
			}

			@Override
			public void onShowCustomView(View view, CustomViewCallback callback) {
				showCustomView(view, callback);
				setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);// 播放时横屏幕，如果需要改变横竖屏，只需该参数就行了
			}

			@Override
			public void onHideCustomView() {
				hideCustomView();
				setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);// 不播放时竖屏
			}

		});

		// 加载Web地址
		webView.loadUrl(url);
	}

	/** 视频播放全屏 **/
	private void showCustomView(View view,
			WebChromeClient.CustomViewCallback callback) {
		// if a view already exists then immediately terminate the new one
		if (customView != null) {
			callback.onCustomViewHidden();
			return;
		}

		MainActivity.this.getWindow().getDecorView();

		FrameLayout decor = (FrameLayout) getWindow().getDecorView();
		fullscreenContainer = new FullscreenHolder(this);
		fullscreenContainer.addView(view, COVER_SCREEN_PARAMS);
		decor.addView(fullscreenContainer, COVER_SCREEN_PARAMS);
		customView = view;
		setStatusBarVisibility(false);
		customViewCallback = callback;
	}

	/** 隐藏视频全屏 */
	private void hideCustomView() {
		if (customView == null) {
			return;
		}

		setStatusBarVisibility(true);
		FrameLayout decor = (FrameLayout) getWindow().getDecorView();
		decor.removeView(fullscreenContainer);
		fullscreenContainer = null;
		customView = null;
		customViewCallback.onCustomViewHidden();
		webView.setVisibility(View.VISIBLE);
	}

	/** 全屏容器界面 */
	static class FullscreenHolder extends FrameLayout {

		public FullscreenHolder(Context ctx) {
			super(ctx);
			setBackgroundColor(ctx.getResources().getColor(
					android.R.color.black));
		}

		@Override
		public boolean onTouchEvent(MotionEvent evt) {
			return true;
		}
	}

	private void setStatusBarVisibility(boolean visible) {
		int flag = visible ? 0 : WindowManager.LayoutParams.FLAG_FULLSCREEN;
		getWindow().setFlags(flag, WindowManager.LayoutParams.FLAG_FULLSCREEN);
	}

	@Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
		switch (keyCode) {
		case KeyEvent.KEYCODE_BACK:
			/** 回退键 事件处理 优先级:视频播放全屏-网页回退-关闭页面 */
			if (customView != null) {
				hideCustomView();
			} else if (webView.canGoBack()) {
				webView.goBack();
			} else {
				finish();
			}
			return true;
		default:
			return super.onKeyUp(keyCode, event);
		}
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		webView.stopLoading();
		webView.setWebChromeClient(null);
		webView.setWebViewClient(null);
		webView = null;
	}
}
```



**xml布局：**

```
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
    
    <WebView
        android:id="@+id/webView"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        />
    
    <RelativeLayout 
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        >
        <EditText 
        android:id="@+id/edit"
        android:layout_width="match_parent"
        android:layout_height="50dp"
        android:layout_alignParentTop="true"
        android:textColor="@android:color/black"
        android:textSize="20sp"
        android:text="http://h16552j072.51mypc.cn/kmanage-web/upload/2018-08-09/0/1533798566869C1YS40.mp4"
        />
        
        <Button 
            android:id="@+id/start"
            android:layout_width="350dp"
            android:layout_height="50dp"
            android:layout_below="@+id/edit"
            android:layout_marginTop="10dp"
            android:text="START"
            android:textSize="20sp"
            />
    </RelativeLayout> 
    
</FrameLayout>
```



**AndroidManifest.xml配置：**

> 需要增加以下权限

 <uses-permission android:name="android.permission.INTERNET"/>
 <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />