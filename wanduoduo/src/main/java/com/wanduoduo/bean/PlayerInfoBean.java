package com.wanduoduo.bean;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by jockie on 2016/8/30.
 */
public class PlayerInfoBean implements Parcelable {

    private String id;
    private String cover_pic;
    private String title;
    private String fee;
    private int gender;
    private String nickname;
    private String avatar;
    private String age;
    private String user_id;
    private String time;
    private String order_status;
    private String order_ispay;

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(String totalFee) {
        this.totalFee = totalFee;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    private String totalFee;
    private String order_id;
    private String place;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCover_pic() {
        return cover_pic;
    }

    public void setCover_pic(String cover_pic) {
        this.cover_pic = cover_pic;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public PlayerInfoBean() {
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public String getOrder_ispay() {
        return order_ispay;
    }

    public void setOrder_ispay(String order_ispay) {
        this.order_ispay = order_ispay;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.id);
        dest.writeString(this.cover_pic);
        dest.writeString(this.title);
        dest.writeString(this.fee);
        dest.writeInt(this.gender);
        dest.writeString(this.nickname);
        dest.writeString(this.avatar);
        dest.writeString(this.age);
        dest.writeString(this.user_id);
        dest.writeString(this.time);
        dest.writeString(this.order_status);
        dest.writeString(this.order_ispay);
        dest.writeString(this.totalFee);
        dest.writeString(this.order_id);
        dest.writeString(this.place);
    }

    protected PlayerInfoBean(Parcel in) {
        this.id = in.readString();
        this.cover_pic = in.readString();
        this.title = in.readString();
        this.fee = in.readString();
        this.gender = in.readInt();
        this.nickname = in.readString();
        this.avatar = in.readString();
        this.age = in.readString();
        this.user_id = in.readString();
        this.time = in.readString();
        this.order_status = in.readString();
        this.order_ispay = in.readString();
        this.totalFee = in.readString();
        this.order_id = in.readString();
        this.place = in.readString();
    }

    public static final Creator<PlayerInfoBean> CREATOR = new Creator<PlayerInfoBean>() {
        @Override
        public PlayerInfoBean createFromParcel(Parcel source) {
            return new PlayerInfoBean(source);
        }

        @Override
        public PlayerInfoBean[] newArray(int size) {
            return new PlayerInfoBean[size];
        }
    };
}
