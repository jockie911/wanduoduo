package com.wanduoduo.bean;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by jockie on 2016/9/18.
 */
public class OnLineSelectBean implements Parcelable {

    private int gender;
    private String city_code;
    private String city_name;
    private boolean isVideo;
    private String age;
    private String height;
    private boolean loveinfo;
    private int order;
    private boolean isGift;

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getCity_code() {
        return city_code;
    }

    public void setCity_code(String city_code) {
        this.city_code = city_code;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public boolean isVideo() {
        return isVideo;
    }

    public void setVideo(boolean video) {
        isVideo = video;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public boolean getLoveinfo() {
        return loveinfo;
    }

    public void setLoveinfo(boolean loveinfo) {
        this.loveinfo = loveinfo;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public OnLineSelectBean() {
    }

    public boolean isGift() {
        return isGift;
    }

    public void setGift(boolean gift) {
        isGift = gift;
    }

    @Override
    public String toString() {
        return "OnLineSelectBean{" +
                "gender=" + gender +
                ", city_code='" + city_code + '\'' +
                ", city_name='" + city_name + '\'' +
                ", isVideo=" + isVideo +
                ", age='" + age + '\'' +
                ", height='" + height + '\'' +
                ", loveinfo=" + loveinfo +
                ", order=" + order +
                ", isGift=" + isGift +
                '}';
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.gender);
        dest.writeString(this.city_code);
        dest.writeString(this.city_name);
        dest.writeByte(this.isVideo ? (byte) 1 : (byte) 0);
        dest.writeString(this.age);
        dest.writeString(this.height);
        dest.writeByte(this.loveinfo ? (byte) 1 : (byte) 0);
        dest.writeInt(this.order);
        dest.writeByte(this.isGift ? (byte) 1 : (byte) 0);
    }

    protected OnLineSelectBean(Parcel in) {
        this.gender = in.readInt();
        this.city_code = in.readString();
        this.city_name = in.readString();
        this.isVideo = in.readByte() != 0;
        this.age = in.readString();
        this.height = in.readString();
        this.loveinfo = in.readByte() != 0;
        this.order = in.readInt();
        this.isGift = in.readByte() != 0;
    }

    public static final Creator<OnLineSelectBean> CREATOR = new Creator<OnLineSelectBean>() {
        @Override
        public OnLineSelectBean createFromParcel(Parcel source) {
            return new OnLineSelectBean(source);
        }

        @Override
        public OnLineSelectBean[] newArray(int size) {
            return new OnLineSelectBean[size];
        }
    };
}
