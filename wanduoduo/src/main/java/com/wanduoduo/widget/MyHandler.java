package com.wanduoduo.widget;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;

import java.lang.ref.WeakReference;

/**
 * Created by jockie on 2016/7/14.
 */
public  class MyHandler extends Handler {
    WeakReference<Activity > mActivityReference;
    public MyHandler(Activity activity) {
        mActivityReference= new WeakReference<>(activity);
    }

    @Override
    public void handleMessage(Message msg) {
        final Activity activity = mActivityReference.get();
        if (activity == null) {
            return;
        }
    }
}
