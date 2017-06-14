package com.wanduoduo.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.ImageViewTarget;
import com.bumptech.glide.request.target.Target;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.utils.Bimp;
import com.wanduoduo.utils.DensityUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/21.
 */
public class PhotoPicAdapter extends BaseAdapter{
    private boolean isCanEdit = true;
    private int maxUpLoadNums;
    private OnDeleteListen deleteListen;
    private List<String> exitPicLists = new ArrayList<>();  //网络已经存在的照片
    private List<String> localPicLists = new ArrayList<>(); //本地添加的照片
    private int UP_LOAD_PIC_DEFAULT = R.drawable.prefection_upload_photo;
    private int type;
    private int itemWidth;

    /**
     * @param alreadyPicLists   已经存在的网络地址照片
     * @param maxUpLoadNums     最大照片数量
     * @param type               默认图片的样式
     * @param deleteListen       删除照片的回掉
     */
    public PhotoPicAdapter(List<String> alreadyPicLists,int maxUpLoadNums,int type, OnDeleteListen deleteListen, boolean ...isCanEdit) {
        if(alreadyPicLists != null)
            exitPicLists.addAll(alreadyPicLists);
        if(isCanEdit.length != 0)
            this.isCanEdit = isCanEdit[0];
        if(type == 1){
            UP_LOAD_PIC_DEFAULT = R.drawable.prefection_upload_photo;    //点击上传  gridview 为4
        }else if(type == 2){
            UP_LOAD_PIC_DEFAULT = R.drawable.prefection_add_photo;      //点击添加 ，gridview 为3
        }else if(type == 3){
            this.type = type;
            UP_LOAD_PIC_DEFAULT = R.drawable.prefection_activi_one_photo;      //点击添加 ，gridview 为3
        }
        this.maxUpLoadNums = maxUpLoadNums ;
        this.deleteListen = deleteListen;
        notifyDataSetChanged();
    }

    public void addAlreadyPic(List<String> alreadyPicLists) {
        if(alreadyPicLists.size() != 0){
            exitPicLists.clear();
            exitPicLists.addAll(alreadyPicLists);
            notifyDataSetChanged();
        }
    }

    /**
     * 选择的本地图片，调用添加
     * @param localPics
     */
    public void addLocalPics(List<String> localPics){
        if(localPics != null){
            localPicLists.clear();
            localPicLists.addAll(localPics);
        }
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        if(exitPicLists.size() + localPicLists.size() < maxUpLoadNums){
            return exitPicLists.size() + localPicLists.size() + 1;
        }else {
            return maxUpLoadNums;
        }
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
    public View getView(final int i, View view, final ViewGroup viewGroup) {
//        if(view == null)
        view = View.inflate(viewGroup.getContext(), R.layout.item_mgv_player_skill_perfection_photo, null);
        final ViewHolder holder = ViewHolder.getHolder(view);
        if(itemWidth > 0){
            ViewGroup.LayoutParams layoutParams = holder.imageView.getLayoutParams();
            layoutParams.width = itemWidth;
            layoutParams.height = itemWidth;
            holder.imageView.setLayoutParams(layoutParams);

        }

        /** 发表动态上传图片 */
        if(type == 3){
            ViewGroup.LayoutParams params = holder.imageView.getLayoutParams();
            if(getCount() == 1){
                params.width = DensityUtil.dip2px(viewGroup.getContext(),70);
                params.height = DensityUtil.dip2px(viewGroup.getContext(),70);
            }else{
                WindowManager wm = (WindowManager) viewGroup.getContext().getSystemService(Context.WINDOW_SERVICE);
                int width = (wm.getDefaultDisplay().getWidth() - DensityUtil.dip2px(viewGroup.getContext(),50))/3;
                params.height = width;
                params.width = width;
            }
            holder.imageView.setLayoutParams(params);
        }

        if(isCanEdit){
            if(maxUpLoadNums == exitPicLists.size() + localPicLists.size()){
                if(i < exitPicLists.size()){
                    Glide.with(viewGroup.getContext()).load(exitPicLists.get(i)).asBitmap().centerCrop().into(holder.imageView);
                    holder.ivDelete.setVisibility(View.VISIBLE);
                }else{
                    setFilePicShow(i, holder.imageView);
                    holder.ivDelete.setVisibility(View.VISIBLE);
                }
            }else{
                if(i < exitPicLists.size()){
                    Glide.with(viewGroup.getContext()).load(exitPicLists.get(i)).asBitmap().centerCrop().into(holder.imageView);
                    holder.ivDelete.setVisibility(View.VISIBLE);
                }else if(i < getCount() - 1){
                    setFilePicShow(i, holder.imageView);
                    holder.ivDelete.setVisibility(View.VISIBLE);
                }else{
                    if(type == 3){
                        if(getCount() == 1){
                            UP_LOAD_PIC_DEFAULT = R.drawable.prefection_activi_one_photo;
                        }else{
                            UP_LOAD_PIC_DEFAULT = R.drawable.prefection_activi_more_photo;
                        }
                    }
                    Bitmap bitmap = BitmapFactory.decodeResource(viewGroup.getResources(), UP_LOAD_PIC_DEFAULT);
                    holder.imageView.setImageBitmap(bitmap);
                    holder.ivDelete.setVisibility(View.INVISIBLE);
                }
            }
        }else{
            holder.ivDelete.setVisibility(View.GONE);
            if (i < exitPicLists.size()) {
                Glide.with(viewGroup.getContext()).load(exitPicLists.get(i)).centerCrop().into(holder.imageView);
            } else {
                holder.imageView.setImageBitmap(null);
                holder.imageView.setBackgroundResource(R.drawable.prefection_invate_photo);
            }
        }

        holder.ivDelete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(i < exitPicLists.size()){
                    exitPicLists.remove(i);
                    deleteListen.onDelete(i,true);
                }else{
                    localPicLists.remove( i - exitPicLists.size());
                    deleteListen.onDelete(i - exitPicLists.size(),false);
                }
                notifyDataSetChanged();
            }
        });
        return view;
    }

    private void setFilePicShow(int i, ImageView imageView) {
        try {
            Bitmap bitmap = Bimp.revitionImageSize(localPicLists.get(i - exitPicLists.size()));
            imageView.setImageBitmap(bitmap);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void setWidth(int itemWidth) {
        this.itemWidth = itemWidth;
    }

    static class ViewHolder {
        @Bind(R.id.gv_item_iv)
        ImageView imageView;
        @Bind(R.id.iv_pic_delete)
        ImageView ivDelete;

        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
        ViewHolder(View convertView) {
            ButterKnife.bind(this, convertView);
        }
    }


    public interface OnDeleteListen{
        /**
         * @param deletePosition 删除回掉的位置
         * @param isDeleteFromNet 删除的是网络展示的图片（一般都是展示的本地图片）
         */
        void onDelete(int deletePosition,boolean ...isDeleteFromNet);
    }
}
