package com.wanduoduo.adapter.activi;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.ui.index.VideoPlayActivity;
import com.wanduoduo.utils.DensityUtil;

import java.util.List;

/**
 * Created by jockie on 2016/10/18.
 */
public class ItemPicAdapter extends BaseAdapter {

    private int itemWidth;
    private boolean isPicOhterSize;
    private List mPics;
    private boolean isVideo;
    private String videoUrl;

    public ItemPicAdapter(List pics) {
        mPics = pics;
    }

    public ItemPicAdapter(List pics,boolean isPicOhterSize) {
        mPics = pics;
        this.isPicOhterSize = isPicOhterSize;
    }

    public ItemPicAdapter(List<String> pics, int itemWidth) {
        mPics = pics;
        this.itemWidth = itemWidth;
    }

    @Override
    public int getCount() {
        return mPics == null ? 0 : (itemWidth > 0 && mPics.size() > 4) ? 4 :mPics.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, final ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_lv_gv_pic_activi,null);
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_pic);
        ImageView ivBg = (ImageView) view.findViewById(R.id.iv_bg);
        TextView textView = (TextView) view.findViewById(R.id.tv_pic_count);
//            if(mPics.size() > 3 && i == getCount() - 1){
//                textView.setVisibility(View.VISIBLE);
//                textView.setText(mPics.size() + "");
//            }else{
        textView.setVisibility(View.INVISIBLE);
//            }

        WindowManager wm = (WindowManager) viewGroup.getContext().getSystemService(Context.WINDOW_SERVICE);
        int width = (wm.getDefaultDisplay().getWidth() - DensityUtil.dip2px(viewGroup.getContext(),isPicOhterSize?105:40))/3;
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        if(itemWidth != 0){
            params.height = itemWidth;
            params.width = itemWidth;
        }else{
            params.height = width;
            params.width = width;
        }
        imageView.setLayoutParams(params);

        ViewGroup.LayoutParams layoutParams = ivBg.getLayoutParams();
        if(itemWidth != 0){
            layoutParams.height = itemWidth;
            layoutParams.width = itemWidth;
        }else{
            layoutParams.height = width;
            layoutParams.width = width;
        }
        ivBg.setLayoutParams(layoutParams);

        Glide.with(viewGroup.getContext()).load(mPics.get(i)).asBitmap().centerCrop().into(imageView);

        ImageView ivPlay = (ImageView) view.findViewById(R.id.iv_video_play);
        if(isVideo){
            ivPlay.setVisibility(View.VISIBLE);
        }else{
            ivPlay.setVisibility(View.INVISIBLE);
        }
        ivPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(viewGroup.getContext(), VideoPlayActivity.class);
                intent.putExtra("video",videoUrl);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                viewGroup.getContext().startActivity(intent);
            }
        });
        return view;
    }

    public void setVideoUrl(boolean isVideo, String ...video) {
        this.isVideo = isVideo;
        if(isVideo && video != null && video.length!=0)
            videoUrl = video[0];
    }
}
