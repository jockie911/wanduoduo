package com.wanduoduo.bean;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by jockie on 2016/10/11.
 */
public class PubSelectPlaceBean implements Parcelable {
    private double lat;
    private double lng;
    private String place;

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeDouble(this.lat);
        dest.writeDouble(this.lng);
        dest.writeString(this.place);
    }

    public PubSelectPlaceBean() {
    }

    protected PubSelectPlaceBean(Parcel in) {
        this.lat = in.readDouble();
        this.lng = in.readDouble();
        this.place = in.readString();
    }

    public static final Parcelable.Creator<PubSelectPlaceBean> CREATOR = new Parcelable.Creator<PubSelectPlaceBean>() {
        @Override
        public PubSelectPlaceBean createFromParcel(Parcel source) {
            return new PubSelectPlaceBean(source);
        }

        @Override
        public PubSelectPlaceBean[] newArray(int size) {
            return new PubSelectPlaceBean[size];
        }
    };
}
