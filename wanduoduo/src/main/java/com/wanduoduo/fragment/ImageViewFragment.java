package com.wanduoduo.fragment;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;

import butterknife.Bind;

/**
 * Created by jockie on 2016/9/2.
 */
@SuppressLint("ValidFragment")
public class ImageViewFragment extends BaseFragment{

    private String url;
    @Bind(R.id.iv_photo)
    ImageView ivPhoto;

    public ImageViewFragment(String url) {
        this.url = url;
    }

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_imageview,null);
    }

    @Override
    protected void initData() {
        Glide.with(this).load(url).centerCrop().into(ivPhoto);
    }
}
