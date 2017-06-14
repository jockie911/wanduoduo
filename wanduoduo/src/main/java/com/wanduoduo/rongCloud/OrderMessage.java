package com.wanduoduo.rongCloud;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.UnsupportedEncodingException;

import io.rong.common.ParcelUtils;
import io.rong.imlib.MessageTag;
import io.rong.imlib.model.MessageContent;
import io.rong.imlib.model.UserInfo;

/**
 * Created by jockie on 2016/9/9.
 */
@SuppressLint("ParcelCreator")
@MessageTag(value = "RCD:OrderMsg", flag = MessageTag.ISCOUNTED | MessageTag.ISPERSISTED)
public class OrderMessage extends MessageContent {

    private String extra;
    private String content;

    public OrderMessage(String extra, String content) {
        this.extra = extra;
        this.content = content;
    }

    public OrderMessage(byte[] data) {
        String jsonStr = null;
        try {
            jsonStr = new String(data, "UTF-8");
        } catch (UnsupportedEncodingException e1) {

        }
        try {
            JSONObject jsonObj = new JSONObject(jsonStr);
            setextra(jsonObj.getString("extra"));
            setcontent(jsonObj.getString("content"));
            if(jsonObj.has("user")){
                setUserInfo(parseJsonToUserInfo(jsonObj.getJSONObject("user")));
            }
        } catch (JSONException e) {
            Log.e("JSONException", e.getMessage());
        }
    }

    @Override
    public byte[] encode() {
        JSONObject jsonObj = new JSONObject();
        try {
            jsonObj.put("extra", extra);
            jsonObj.put("content", content);

            if(getJSONUserInfo() != null)
                jsonObj.putOpt("user",getJSONUserInfo());

        } catch (JSONException e) {
            Log.e("JSONException", e.getMessage());
        }

        try {
            return jsonObj.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 构造函数。
     *
     * @param in 初始化传入的 Parcel。
     */
    public OrderMessage(Parcel in) {
        setextra(ParcelUtils.readFromParcel(in));
        setcontent(ParcelUtils.readFromParcel(in));
        setUserInfo(ParcelUtils.readFromParcel(in, UserInfo.class));
    }

    /**
     * 读取接口，目的是要从Parcel中构造一个实现了Parcelable的类的实例处理。
     */
    public static final Creator<OrderMessage> CREATOR = new Creator<OrderMessage>() {

        @Override
        public OrderMessage createFromParcel(Parcel source) {
            return new OrderMessage(source);
        }

        @Override
        public OrderMessage[] newArray(int size) {
            return new OrderMessage[size];
        }
    };
    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        ParcelUtils.writeToParcel(dest, content);
        ParcelUtils.writeToParcel(dest, extra);
        ParcelUtils.writeToParcel(dest, getUserInfo());
    }

    public String getextra() {
        return extra;
    }

    public void setextra(String extra) {
        this.extra = extra;
    }

    public String getcontent() {
        return content;
    }

    public void setcontent(String content) {
        this.content = content;
    }
}
