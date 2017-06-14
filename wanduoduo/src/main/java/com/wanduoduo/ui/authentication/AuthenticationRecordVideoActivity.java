package com.wanduoduo.ui.authentication;

import android.content.Intent;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Environment;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import java.io.IOException;

import butterknife.Bind;
import butterknife.OnClick;


public class AuthenticationRecordVideoActivity extends BaseActivity {

    private MediaRecorder mediaRecorder;
    private String path;
    private Camera camera;
    @Bind(R.id.surfaceview)
    SurfaceView surfaceView;
    @Bind(R.id.iv_record_delete)
    ImageView ivRecoordDelete;
    @Bind(R.id.iv_record_play)
    ImageView ivRecordPlay;
    @Bind(R.id.iv_record_ok)
    ImageView ivRecordOk;
    @Bind(R.id.tv_time)
    TextView tvTime;

    private int totalTime = 10000;  //总时长
    private SurfaceHolder surfaceHolder;

    @Override
    protected int getLayoutRes() {
        isHaveTitleBar = false;
        return R.layout.activity_authentication_record_video;
    }

    @Override
    protected void setStatusBar() {
        Window window = getWindow();
        window.addFlags((WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON));
        window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }

    @Override
    protected void initData() {
        init();
        initSurfaceView();
    }


    private void initSurfaceView() {
        surfaceHolder = surfaceView.getHolder();
        surfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
        surfaceView.setKeepScreenOn(true);
        surfaceHolder.addCallback(new SurfaceHolder.Callback() {
            @Override
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                // 开启相机
                if (camera == null) {
                    int CammeraIndex=FindFrontCamera();
                    if(CammeraIndex==-1){
                        ToastUtils.makeToast("您的手机不支持前置摄像头");
                        CammeraIndex=FindBackCamera();
                    }
                    camera = Camera.open(CammeraIndex);
                    try {
                        camera.setPreviewDisplay(surfaceHolder);
                        camera.setDisplayOrientation(90);
                    } catch (IOException e) {
                        e.printStackTrace();
                        camera.release();
                    }
                }
            }

            @Override
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i1, int i2) {
                doChange(surfaceHolder);
//                camera.startPreview();
            }

            @Override
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                if(camera!=null){
                    camera.release();
                }
                surfaceView = null;
                surfaceHolder = null;
                if (surfaceHolder != null) {
                    surfaceHolder = null;
                }
                if (mediaRecorder != null) {
                    mediaRecorder=null;
                }
                if (mediaRecorder != null) {
                    mediaRecorder.release();
                    mediaRecorder = null;
                }
            }
        });
    }

    //判断前置摄像头是否存在
    private int FindFrontCamera(){
        int cameraCount = 0;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        cameraCount = Camera.getNumberOfCameras(); // get cameras number

        for ( int camIdx = 0; camIdx < cameraCount;camIdx++ ) {
            Camera.getCameraInfo( camIdx, cameraInfo ); // get camerainfo
            if ( cameraInfo.facing ==Camera.CameraInfo.CAMERA_FACING_FRONT ) {
                // 代表摄像头的方位，目前有定义值两个分别为CAMERA_FACING_FRONT前置和CAMERA_FACING_BACK后置
                return camIdx;
            }
        }
        return -1;
    }
    //判断后置摄像头是否存在
    private int FindBackCamera(){
        int cameraCount = 0;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        cameraCount = Camera.getNumberOfCameras(); // get cameras number

        for ( int camIdx = 0; camIdx < cameraCount;camIdx++ ) {
            Camera.getCameraInfo( camIdx, cameraInfo ); // get camerainfo
            if ( cameraInfo.facing ==Camera.CameraInfo.CAMERA_FACING_BACK ) {
                // 代表摄像头的方位，目前有定义值两个分别为CAMERA_FACING_FRONT前置和CAMERA_FACING_BACK后置
                return camIdx;
            }
        }
        return -1;
    }

    //当我们的程序开始运行，即使我们没有开始录制视频，我们的surFaceView中也要显示当前摄像头显示的内容
    private void doChange(SurfaceHolder holder) {
        try {
            camera.setPreviewDisplay(holder);
            //设置surfaceView旋转的角度，系统默认的录制是横向的画面，把这句话注释掉运行你就会发现这行代码的作用
            camera.setDisplayOrientation(getDegree());
            camera.startPreview();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public int getDegree() {
        //获取当前屏幕旋转的角度
        int rotating = this.getWindowManager().getDefaultDisplay().getRotation();
        int degree = 0;
        //根据手机旋转的角度，来设置surfaceView的显示的角度
        switch (rotating) {
            case Surface.ROTATION_0:
                degree = 90;
                break;
            case Surface.ROTATION_90:
                degree = 0;
                break;
            case Surface.ROTATION_180:
                degree = 270;
                break;
            case Surface.ROTATION_270:
                degree = 180;
                break;
        }
        return degree;
    }

    private void init() {
        path = Environment.getExternalStorageDirectory().getAbsolutePath() + "/myvideo/" + System.currentTimeMillis() + ".mp4";
    }

    private boolean isRecording;    //是否在录制

    @OnClick({ R.id.iv_left_title_bar,R.id.iv_right_title_bar,R.id.iv_record_delete,R.id.iv_record_play,R.id.iv_record_ok,})
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.iv_record_delete:

                break;
            case R.id.iv_record_play:
                if(!isRecording){
                    startRecord();
                }else{
                    stopRecord();
                }
                break;
            case R.id.iv_record_ok:
                Intent intent = new Intent(AuthenticationRecordVideoActivity.this, AuthenticationPlayVideoActivity.class);
                intent.putExtra("path",path);
                startActivity(intent);
                break;
            case R.id.iv_left_title_bar:
                finish();
                break;
            case R.id.iv_right_title_bar:
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                if (cameraInfo.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {//代表摄像头的方位，CAMERA_FACING_FRONT前置      CAMERA_FACING_BACK后置
                    camera.stopPreview();//停掉原来摄像头的预览
                    camera.release();//释放资源
                    camera = null;//取消原来摄像头
                    camera = Camera.open(1);//打开当前选中的摄像头
                    try {
                        camera.setPreviewDisplay(surfaceHolder);//通过surfaceview显示取景画面
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    camera.startPreview();//开始预览
                    break;
                } else {
            //现在是前置， 变更为后置
            if (cameraInfo.facing == Camera.CameraInfo.CAMERA_FACING_BACK) {// 代表摄像头的方位，CAMERA_FACING_FRONT前置
                camera.stopPreview();// 停掉原来摄像头的预览
                camera.release();// 停掉原来摄像头的预览
                camera = null;// 释放资源
                camera = Camera.open(0);// 取消原来摄像头
                try {
                    camera.setPreviewDisplay(surfaceHolder);// 通过surfaceview显示取景画面
                } catch (IOException e) {
                    e.printStackTrace();
                }
                camera.startPreview();// 开始预览
                break;
            }
                break;
        }
    }}

    private void stopRecord() {
        if(mediaRecorder!=null){
            mediaRecorder.stop();
            mediaRecorder.release();
            mediaRecorder = null;
            isRecording = false;
        }
    }

    private void startRecord() {
        if (!isRecording) {
            try {
                if(camera!=null){
                    camera.stopPreview();
                    camera.release();
                    camera = null;
                }
                mediaRecorder = new MediaRecorder();
                // 声明视频文件对象

                mediaRecorder.reset();
                // 判断是否有前置摄像头，若有则打开，否则打开后置摄像头
                int CammeraIndex=FindFrontCamera();
                if(CammeraIndex==-1){
                    ToastUtils.makeToast("您的手机不支持前置摄像头");
                    CammeraIndex=FindBackCamera();
                }
                camera = Camera.open(CammeraIndex);
                // 设置摄像头预览顺时针旋转90度，才能使预览图像显示为正确的，而不是逆时针旋转90度的。
                camera.setDisplayOrientation(90);
                camera.unlock();
                mediaRecorder.setCamera(camera); //设置摄像头为相机recorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);//视频源
                mediaRecorder.setAudioSource(MediaRecorder.AudioSource.MIC); // 录音源为麦克风		recorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_LOW)); //设置视频和声音的编码为系统自带的格式	recorder.setOutputFile(myRecVideoFile.getAbsolutePath());
                mediaRecorder.setPreviewDisplay(surfaceView.getHolder().getSurface()); // 预览
                mediaRecorder.setMaxFileSize(10*1024*1024); //设置视频文件的最大值为10M,单位B
                mediaRecorder.setOutputFile(path);

//recorder.setMaxDuration(3*1000);//设置视频的最大时长，单位毫秒
//	recorder.setOrientationHint(90);//视频旋转90度，没有用
                mediaRecorder.prepare(); // 准备录像
                mediaRecorder.start(); // 开始录像
                isRecording = true; // 改变录制状态为正在录制
            } catch (IOException e1) {
                releaseMediaRecorder();
                isRecording = false;
            } catch (IllegalStateException e) {
                releaseMediaRecorder();
                isRecording = false;
            }
        } else
            ToastUtils.makeToast("视频录制中...");
    }







       /* mediaRecorder = new MediaRecorder();
        mediaRecorder.reset();
        mediaRecorder.setCamera(camera);
        mediaRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH));
        mediaRecorder.setPreviewDisplay(surfaceView.getHolder().getSurface());
        //设置音频的来源  麦克风
        mediaRecorder.setAudioSource(MediaRecorder.AudioSource.MIC);
        //设置视频的来源
        mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
        //设置视频的输出格式  3gp
        mediaRecorder.setOutputFormat(MediaRecorder.OutputFormat.MPEG_4);
        //设置视频中的声音和视频的编码格式
        mediaRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);
        mediaRecorder.setVideoEncoder(MediaRecorder.VideoEncoder.DEFAULT);
        //设置保存的路径
        mediaRecorder.setOutputFile(path);
        //开始录制
        try {
            mediaRecorder.prepare();
            mediaRecorder.start();
            mediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() {
                @Override
                public void onInfo(MediaRecorder mediaRecorder, int i, int i1) {
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }*/


    //释放recorder资源
    private void releaseMediaRecorder(){
        if (mediaRecorder != null) {
            mediaRecorder.stop();
            mediaRecorder.release();
            mediaRecorder = null;
        }
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0){

            }
        }
    };
}
