package com.wanduoduo.utils;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.content.IntentCompat;

import com.squareup.okhttp.Callback;
import com.squareup.okhttp.FormEncodingBuilder;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.MultipartBuilder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.login.LogInActivity;
import com.wanduoduo.widget.MyListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jockie on 2016/3/31.
 */
public class OkHttpUtils {

    private static OkHttpClient sOkHttpClient;
    private static Handler sHanlder;

    private OkHttpUtils() {
    }

    private static OkHttpClient getInstence() {
        if (null == sOkHttpClient) {
            sOkHttpClient = new OkHttpClient();
            sHanlder = new Handler(Looper.getMainLooper());
        }
        return sOkHttpClient;
    }

    /**
     * get上传
     * @param interfaceUrl 接口
     * @param map          get键值对
     * @param mListen      回调
     */
    public static void sendGetRequest(String interfaceUrl, Map<String, String> map, final OnResultListener mListen) {
        String currentTimeMillis = getCurrentTimeMills();
        String ktParams = "?" + IConstant.K + "=" + getMD5Value(map, currentTimeMillis) + "&" + IConstant.T + "=" + currentTimeMillis;
        StringBuffer sb = new StringBuffer();
        if (null != map) {
            for (Map.Entry<String, String> kv : map.entrySet()) {
                sb.append("&").append(kv.getKey()).append("=").append(kv.getValue());
            }
        }
        Request request = new Request.Builder().url(IConstant.BASE_URL + interfaceUrl + ktParams + sb.toString()).build();
        getInstence().newCall(request).enqueue(new MyCallBack(mListen));
    }

    /**
     * post上传
     * @param url
     * @param map
     * @param mListen
     */
    public static void sendPostRequest(String url, Map<String, String> map, final OnResultListener mListen) {
        FormEncodingBuilder builder = new FormEncodingBuilder();
        if (null != map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                builder.add(entry.getKey(), entry.getValue());
            }
        }
        String currentTimeMillis = getCurrentTimeMills();
        builder.add(IConstant.K, getMD5Value(map, currentTimeMillis));
        builder.add(IConstant.T, currentTimeMillis);

        final Request request = new Request.Builder()
                .url(IConstant.BASE_URL + url)
                .post(builder.build())
                .build();
        getInstence().newCall(request).enqueue(new MyCallBack(mListen));
    }

    /**
     * 发动态
     * @param url
     * @param map
     * @param picList   图片list
     * @param mListen
     */
    public static void sendPostRequest(String url, Map<String, String> map,List<String> picList,String picKey,final OnResultListener mListen) {
        FormEncodingBuilder builder = new FormEncodingBuilder();
        if (null != map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if(entry.getKey().equals("sign")){
                    try {
                        JSONArray jsonArray = new JSONArray(entry.getValue());
                        for (int i = 0;i < jsonArray.length();i++)
                            builder.add("sign[" + i+ "]",jsonArray.getString(i));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }else{
                    builder.add(entry.getKey(), entry.getValue());
                }
            }
        }
      if(picList != null && picList.size() != 0){
          for (int i = 0; i < picList.size(); i++) {
              builder.add(picKey + "[" + i+ "]",picList.get(i));
          }
      }
        final Request request = new Request.Builder()
                .url(IConstant.BASE_URL + url)
                .post(builder.build())
                .build();
        getInstence().newCall(request).enqueue(new MyCallBack(mListen));
    }

    // TODO
    @NonNull
    private static String getMD5Value(Map<String, String> map, String currentTimeMillis) {
        return MD5Utils.string2MD5(map, currentTimeMillis);
    }

    @NonNull
    private static String getCurrentTimeMills() {
        return System.currentTimeMillis() + "";
    }


    static class MyCallBack implements Callback {
        OnResultListener mListen;

        public MyCallBack(OnResultListener mListen) {
            this.mListen = mListen;
        }

        @Override
        public void onFailure(Request request, IOException e) {
        }

        @Override
        public void onResponse(Response response) throws IOException {
            String result = response.body().string();
            try {
                int errCode = new JSONObject(result).getInt("errCode");
                if(errCode == 110){     //未登录
                    SPUtils.deleteSP();
                    Intent intent = new Intent(BaseApp.getContext(), LogInActivity.class);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK + Intent.FLAG_ACTIVITY_CLEAR_TASK);
                    ComponentName cn = intent.getComponent();
                    Intent mainIntent = IntentCompat.makeRestartActivityTask(cn);
                    BaseApp.getContext().startActivity(mainIntent);
                }else if(errCode == 0){
                    mListen.onSuccess(result);
                }else{
                    mListen.onFailure(errCode,new JSONObject(result).getString("errMsg"));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 上传video
     */
    private static final MediaType MEDIA_TYPE_VIDEO = MediaType.parse("video");
    public static void sendPostVideo(String url,String videoDir, final OnResultListener mListen) {
        MultipartBuilder builder = new MultipartBuilder();
        builder.type(MultipartBuilder.FORM);
        String currentTimeMillis = getCurrentTimeMills();
        builder.addFormDataPart(IConstant.K, getMD5Value(null, currentTimeMillis));
        builder.addFormDataPart(IConstant.T, currentTimeMillis);
        File file = new File(videoDir);
        builder.addFormDataPart("video", file.getName(), RequestBody.create(MEDIA_TYPE_VIDEO, file));
        commenRequest(url, mListen, builder);
    }

    private static void commenRequest(String url, OnResultListener mListen, MultipartBuilder builder) {
        final Request request = new Request.Builder()
                .url(IConstant.BASE_URL + url)
                .post(builder.build())
                .build();
        getInstence().newCall(request).enqueue(new MyCallBack(mListen));
    }

    /**
     * 上传图片
     */
    private static final MediaType MEDIA_TYPE_PNG = MediaType.parse("image/png");
    public static void sendPostPic(String url,List<String> fileDirlists,OnResultListener mListen){
        MultipartBuilder builder = new MultipartBuilder().type(MultipartBuilder.FORM);
        String currentTimeMillis = getCurrentTimeMills();
        builder.addFormDataPart(IConstant.K, getMD5Value(null, currentTimeMillis));
        builder.addFormDataPart(IConstant.T, currentTimeMillis);
        for (int i = 0; i < fileDirlists.size(); i++) {
            File file = new File(fileDirlists.get(i));
            builder.addFormDataPart("image[" + i + "]", file.getName(), RequestBody.create(MEDIA_TYPE_PNG, file));
        }
        commenRequest(url, mListen, builder);
    }

    public static void sendPostAvatar(String url,String fileName,OnResultListener mListen){
        MultipartBuilder builder = new MultipartBuilder().type(MultipartBuilder.FORM);
        String currentTimeMillis = getCurrentTimeMills();
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        builder.addFormDataPart(IConstant.K, getMD5Value(map, currentTimeMillis));
        builder.addFormDataPart(IConstant.T, currentTimeMillis);
        builder.addFormDataPart(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        File file = new File(fileName);
        builder.addFormDataPart("avatar", file.getName(), RequestBody.create(MEDIA_TYPE_PNG, file));
        commenRequest(url, mListen, builder);
    }

    /**
     * 回调接口
     */
    public interface OnResultListener {
        void onSuccess(String result);

        void onFailure(int errCode,String errMsg);
    }
}
