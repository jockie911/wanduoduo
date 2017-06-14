package com.wanduoduo.adapter.activi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.ActiviBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.index.VideoPlayActivity;

import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.MyGridView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/21.
 */
public class ActiviAdapter extends MyBaseAdapter<ActiviBean.DataBean.DataListBean> {

    private Activity activity;

    public ActiviAdapter(Activity activity) {
        this.activity = activity;
    }


    @Override
    public View getView(final int i, View view, final ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_lv_activi, null);
        final ViewHolder holder = ViewHolder.getHolder(view);
//        Glide.with(viewGroup.getContext()).load(mData.get(i).getUser().getAvatar()).centerCrop().into(holder.ivAvctor);
        Glide.with(viewGroup.getContext()).load(mData.get(i).getUser().getAvatar()).placeholder(R.drawable.photo).error(R.drawable.photo).centerCrop().into(new SimpleTarget<GlideDrawable>() {
            @Override
            public void onResourceReady(GlideDrawable resource,
                                        GlideAnimation<? super GlideDrawable> glideAnimation) {
                holder.ivAvctor.setImageDrawable(resource);
            }
        });
        holder.tvName.setText(mData.get(i).getUser().getNickname());

        holder.ivVipLevel.setVisibility(View.VISIBLE);
        switch (mData.get(i).getUser().getVip_level()){
            case "1": holder.ivVipLevel.setImageResource(R.drawable.vip_1);break;
            case "2": holder.ivVipLevel.setImageResource(R.drawable.vip_2);break;
            case "3": holder.ivVipLevel.setImageResource(R.drawable.vip_3);break;
            case "4": holder.ivVipLevel.setImageResource(R.drawable.vip_4);break;
            default: holder.ivVipLevel.setVisibility(View.INVISIBLE);
        }

        holder.tvAge.setVisibility(View.VISIBLE);
        if(mData.get(i).getUser().getGender() == 1){
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_male);
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_male);
            holder.tvAge.setText(mData.get(i).getUser().getAge() + "");
        }else if(mData.get(i).getUser().getGender() == 2){
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_female);
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_female);
            holder.tvAge.setText(mData.get(i).getUser().getAge() + "");
        }else{
            holder.tvAge.setVisibility(View.INVISIBLE);
        }

        holder.tvActiviTime.setText(TimeShowUtils.getStandardDate(mData.get(i).getCreate_time()));
        holder.ivJianTou.setVisibility(View.INVISIBLE);
        holder.relPersonInfo.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor1));

        if(TextUtils.isEmpty(mData.get(i).getContent())){
            holder.tvContent.setVisibility(View.GONE);
        }else{
            holder.tvContent.setVisibility(View.VISIBLE);
            holder.tvContent.setText(mData.get(i).getContent());
            holder.tvContent.setMaxLines(4);
            holder.tvContent.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        }


        ItemPicAdapter itemPicAdapter = new ItemPicAdapter(mData.get(i).getPics());
        if(TextUtils.equals("更新了形象视频",mData.get(i).getContent())){
            itemPicAdapter.setVideoUrl(true,mData.get(i).getVideo());
        }else{
            itemPicAdapter.setVideoUrl(false);
        }
        /** 图片显示 */
        holder.flPic.setVisibility(View.VISIBLE);
        if(mData.get(i).getPics() != null && mData.get(i).getPics().size() > 0){
            holder.mgvPic.setAdapter(itemPicAdapter);
        }else{
//            holder.ivPic.setImageBitmap(null);
            holder.flPic.setVisibility(View.GONE);
        }


        /**
         * 定位
         */
        holder.llMapLocation.setVisibility(View.GONE);
        if(TextUtils.isEmpty(mData.get(i).getAddress())){
            holder.llMapLocation.setVisibility(View.GONE);
        }else{
            holder.llMapLocation.setVisibility(View.VISIBLE);
            holder.tvLocationPlace.setText(mData.get(i).getAddress());
        }

        holder.tvReadCount.setText(mData.get(i).getView() + "阅读");

        /**
         * 点赞 评论
         */
        holder.tvZan.setText(mData.get(i).getLikeCount() + "");
        holder.tvDiscuss.setText(mData.get(i).getCommentCount() + "");
        if(mData.get(i).isIsLike()){
            TvDrawableUtils.setTvDrawableLeft(holder.tvZan,R.color.c_mei_hong,R.drawable.activi_zan_selected);
        }else{
            TvDrawableUtils.setTvDrawableLeft(holder.tvZan,R.color.c_127_130_134,R.drawable.activi_zan_normal);
        }
        holder.tvZan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                zan(holder,i);
            }
        });

        holder.ivAvctor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(viewGroup.getContext(), InfoEditorPersonActivity.class);
                intent.putExtra(IConsName.ISCANEDIT,false);
                intent.putExtra(IConsName.USER_ID,mData.get(i).getUser().getId());
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                viewGroup.getContext().startActivity(intent);
            }
        });

        holder.mgvPic.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int j, long l) {
                Intent intent = new Intent(viewGroup.getContext(), ShowPicActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) mData.get(i).getPics());
                intent.putExtra("position",j);
                viewGroup.getContext().startActivity(intent);
            }
        });


        if(TextUtils.equals(mData.get(i).getUser().getId(),SPUtils.getStringData(IConsName.USER_ID,""))){
            holder.relItemTop.setVisibility(View.VISIBLE);
            switch (mData.get(i).getView_type()){
                case "1":
                    holder.tvItemTop.setText("全部可见");
                    TvDrawableUtils.setTvDrawableLeft(holder.tvItemTop,R.color.c_127_130_134,R.drawable.activi_item_public);
                    break;
                case "2":
                    holder.tvItemTop.setText("喜欢好友可见");
                    TvDrawableUtils.setTvDrawableLeft(holder.tvItemTop,R.color.c_mei_hong,R.drawable.activi_item_both);
                    break;
                case "3":
                    holder.tvItemTop.setText("仅自己可见");
                    TvDrawableUtils.setTvDrawableLeft(holder.tvItemTop,R.color.c_127_130_134,R.drawable.activi_item_self);
                    break;
            }
        }else{
            holder.relItemTop.setVisibility(View.GONE);
        }

        holder.relItemTop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                alertEditViewType(i);
            }
        });
        return view;
    }

    /**
     * 修改可见性
     * @param position
     */
    private void alertEditViewType(final int position) {
        new ActionSheetDialog(activity).builder()
                .addSheetItem("全部可见", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        requestSeen(0, position);
                    }
                }).addSheetItem("好友可见", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        requestSeen(1, position);
                    }
                }).addSheetItem("仅自己可见", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        requestSeen(2, position);
                    }
                }).show();
    }

    private void requestSeen(final int i, final int position) {
        OkHttpUtils.sendPostRequest(IConstant.NEW_VIEWTYPE, getTypeMap(position,i), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                mData.get(position).setView_type((i + 1) +"");
                handler.sendEmptyMessage(0);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getTypeMap(int position,int type) {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("id",mData.get(position).getId());
        map.put("type",(type + 1) + "");
        return map;
    }

    /**
     * @param holder
     * @param position
     */
    private void zan(ViewHolder holder, final int position) {
        final boolean isLike = mData.get(position).isIsLike();
        String url = "";
        if(isLike){     //取消点赞
            url = IConstant.NEWS_DISLIKE;
        }else{
            url = IConstant.NEWS_LIKE;
        }
        OkHttpUtils.sendPostRequest(url, getZanMap(mData.get(position).getId()), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                mData.get(position).setIsLike(!isLike);
                mData.get(position).setLikeCount(!isLike?mData.get(position).getLikeCount()+1:mData.get(position).getLikeCount()-1);
                handler.sendEmptyMessage(1234);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    Handler handler = new Handler(Looper.getMainLooper()){
        @Override
        public void handleMessage(Message msg) {
            notifyDataSetChanged();
        }
    };

    private Map<String,String> getZanMap(String news_id){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("news_id",news_id);
        return map;
    }

    static class ViewHolder {
        @Bind(R.id.iv_avctor)
        CircleImageView ivAvctor;
        @Bind(R.id.tv_name)
        TextView tvName;
        @Bind(R.id.tv_age)
        TextView tvAge;
        @Bind(R.id.iv_jian_tou)
        ImageView ivJianTou;
        @Bind(R.id.v_bottom_line)
        View vBottomLine;
        @Bind(R.id.tv_content)
        TextView tvContent;
        @Bind(R.id.mgv_pic)
        MyGridView mgvPic;
        @Bind(R.id.iv_pic)
        ImageView ivPic;
        @Bind(R.id.ll_map_location)
        LinearLayout llMapLocation;
        @Bind(R.id.tv_zan)
        TextView tvZan;
        @Bind(R.id.tv_discuss)
        TextView tvDiscuss;
        @Bind(R.id.rel_person_info)
        RelativeLayout relPersonInfo;
        @Bind(R.id.iv_vip_level)
        ImageView ivVipLevel;
        @Bind(R.id.fl_pic)
        FrameLayout flPic;
        @Bind(R.id.tv_location_place)
        TextView tvLocationPlace;
        @Bind(R.id.tv_read_count)
        TextView tvReadCount;
        @Bind(R.id.tv_activi_time)
        TextView tvActiviTime;

        @Bind(R.id.rel_item_top)
        RelativeLayout relItemTop;
        @Bind(R.id.tv_item_top)
        TextView tvItemTop;
        @Bind(R.id.iv_item_top)
        ImageView ivItemTop;

        ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }
        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
    }

    private class ItemPicAdapter extends BaseAdapter{

        private List mPics;
        private boolean isVideo;
        private String videoUrl;

        public ItemPicAdapter(List pics) {
            mPics = pics;
        }

        @Override
        public int getCount() {
            return mPics == null?0:mPics.size()>3?3:mPics.size();
        }

        public void setVideoUrl(boolean isVideo, String ...video) {
            this.isVideo = isVideo;
            if(isVideo && video != null && video.length!=0)
                videoUrl = video[0];
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
                view = View.inflate(viewGroup.getContext(),R.layout.item_lv_gv_pic_activi,null);

            final ImageView imageView = (ImageView) view.findViewById(R.id.iv_pic);
            final ImageView ivBg = (ImageView) view.findViewById(R.id.iv_bg);
            TextView textView = (TextView) view.findViewById(R.id.tv_pic_count);
            if(mPics.size() > 3 && i == getCount() - 1){
                textView.setVisibility(View.VISIBLE);
                textView.setText(mPics.size() + "");
            }else{
                textView.setVisibility(View.INVISIBLE);
            }
            WindowManager wm = (WindowManager) viewGroup.getContext().getSystemService(Context.WINDOW_SERVICE);
            int width = (wm.getDefaultDisplay().getWidth() - DensityUtil.dip2px(viewGroup.getContext(),40))/3;
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            params.height = width;
            params.width = width;
            imageView.setLayoutParams(params);

            ViewGroup.LayoutParams layoutParams = ivBg.getLayoutParams();
            layoutParams.width = width;
            layoutParams.height = width;
            ivBg.setLayoutParams(layoutParams);

            Glide.with(viewGroup.getContext()).load(mPics.get(i)).asBitmap().centerCrop().into(imageView);
//            Glide.with(viewGroup.getContext()).load(mPics.get(i)).placeholder(R.drawable.pic_default).centerCrop().into(new SimpleTarget<GlideDrawable>() {
//                @Override
//                public void onResourceReady(GlideDrawable resource,
//                                            GlideAnimation<? super GlideDrawable> glideAnimation) {
//                    imageView.setImageDrawable(resource);
//                }
//            });
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
    }
}
