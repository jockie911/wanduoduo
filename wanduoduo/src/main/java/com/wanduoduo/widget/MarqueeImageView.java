package com.wanduoduo.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;

import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.ToastUtils;

import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by jockie on 2016/8/25.
 */
public class MarqueeImageView extends View {
    // 背景图片
    Bitmap back;

    int nowX = 0;
    int backWidth;
    int vw;
    int vh;
    int speed;

    public MarqueeImageView(Context context) {
        super(context);
    }

    public MarqueeImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public MarqueeImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    // 启动
    public void Start(Bitmap backMap, Window windows) {

        int h = backMap.getHeight();
        int w = backMap.getWidth();

        // 获取设备高度和宽度
        Rect frame = new Rect();
        windows.getDecorView().getWindowVisibleDisplayFrame(frame);
                vh = frame.height();
      vh = 1000;
        if(vh != h){
            ToastUtils.makeToast(vh + "----" + h);
            JLog.e(vh + "----" + h);
            return;
        }

        vw = frame.width();
        // 设置滚动速度
        speed = 3;
        //裁剪一下
        back = Bitmap.createBitmap(backMap, 0, 0, backMap.getWidth(), vh);
        backWidth = back.getWidth();

        final Handler handler = new Handler() {

            public void handleMessage(Message msg) {
                if (msg.what == 0x123) {
                    // 该函数的作用是使整个窗口客户区无效。窗口的客户区无效意味着需要重绘
                    invalidate();
                }
            }
        };
        new Timer().schedule(new TimerTask() {

            @Override
            public void run() {
                handler.sendEmptyMessage(0x123);
            }
        }, 0, 80);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int w = backWidth - nowX;

        if (vw <= w) {
            // 图片剩余宽度大于屏幕宽度，从原图上截取屏幕窗口大小的一块区域
            Bitmap bitmap = Bitmap.createBitmap(back, nowX, 0, vw, vh);
            canvas.drawBitmap(bitmap, 0, 0, null);
        } else {
            Bitmap bitmap = Bitmap.createBitmap(back, nowX, 0, w, vh);
            canvas.drawBitmap(bitmap, 0, 0, null);
            Bitmap bitmap2 = Bitmap.createBitmap(back, 0, 0, vw - w, vh);
            canvas.drawBitmap(bitmap2, w, 0, null);
        }

        if (nowX + speed >= backWidth) {
            nowX = 0;
        } else {
            nowX += speed;
        }
    }
}
