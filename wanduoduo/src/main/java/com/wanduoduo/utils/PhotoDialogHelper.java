package com.wanduoduo.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;

import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.PhotoActivity;
import com.wanduoduo.widget.ActionSheetDialog;

/**
 * Created by jockie on 2016/11/29.
 */

public class PhotoDialogHelper<T extends Activity,K extends Fragment> {

    private int PHOTO_PIC_REQUEST_CODE = IConstant.PHOTO_PIC_REQUEST_CODE;
    private T activity;
    private K fragment;
    private boolean isUseCrop;
    private int maxPicCount = 1;

    public PhotoDialogHelper(T activity){
        this.activity = activity;
    }

    public PhotoDialogHelper setFragment(K fragment){
        this.fragment = fragment;
        return this;
    }

    public PhotoDialogHelper setCrop(boolean isUseCrop){
        this.isUseCrop = isUseCrop;
        return this;
    }

    public PhotoDialogHelper setMaxPicCount(int maxPicCount){
        this.maxPicCount = maxPicCount;
        return this;
    }

    public int getMaxPicCount(){
        return maxPicCount;
    }

    public PhotoDialogHelper setRequestCode(int code){
        this.PHOTO_PIC_REQUEST_CODE = code;
        return this;
    }

    public int getRequestCode(){
        return PHOTO_PIC_REQUEST_CODE;
    }

    public void show(){
        new ActionSheetDialog(activity).builder()
                .addSheetItem("相机拍照", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int position) {
                        stepIntoPhoto(0);
                    }
                }).addSheetItem("相册选取", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int position) {
                        stepIntoPhoto(1);
                    }
                }).show();
    }

    private void stepIntoPhoto(int which) {
        Intent intent = new Intent(activity, PhotoActivity.class);
        if(isUseCrop){
            intent.putExtra(IConsName.IS_USER_CROP,true);
            if(which == 0){     // 相机 剪裁
                intent.putExtra(IConsName.IS_USE_PHOTO,true);
            }
        }else{
            intent.putExtra(IConsName.MAX_PIC_COUNT,getMaxPicCount());
            if(which == 0){
                intent.putExtra(IConsName.IS_USE_PHOTO,true);
            }
        }
        if(fragment == null){
            activity.startActivityForResult(intent,getRequestCode());
        }else{
            fragment.startActivityForResult(intent,getRequestCode());
        }
    }
}
