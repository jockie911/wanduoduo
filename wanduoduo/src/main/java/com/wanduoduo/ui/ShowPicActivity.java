package com.wanduoduo.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.utils.Bimp;
import com.wanduoduo.widget.ViewPagerFixed;

import java.io.IOException;
import java.util.ArrayList;

import butterknife.Bind;
import io.rong.photoview.PhotoView;

/**
 * Created by jockie on 2016/9/26.
 */
public class ShowPicActivity extends BaseActivity implements ViewPager.OnPageChangeListener {

    @Bind(R.id.tv_pic_location)
    TextView tvPicLocation;
    @Bind(R.id.viewpager)
    ViewPagerFixed viewPager;
    private int kind;       // kind = 0 全是网络图片，kind = 1，全是本地图片， kind = 2 前半部分是网络，后面是本地
    private int position;
    private ArrayList<String> picflist;
    private ShowPicAdapter showPicAdapter;
    private ArrayList<String> bimp;

    @Override
    protected int getLayoutRes() {
        isHaveTitleBar = false;
        return R.layout.activity_show_pic;
    }

    @Override
    protected void initData() {
        kind = getIntent().getIntExtra("kind", 0);
        position = getIntent().getIntExtra("position", 0);

        if(kind == 0 )
            picflist = getIntent().getStringArrayListExtra("piclist");
        if(kind == 1)
            bimp = getIntent().getStringArrayListExtra("bimp");
        if(kind == 2){
            picflist = getIntent().getStringArrayListExtra("piclist");
            bimp = getIntent().getStringArrayListExtra("bimp");
        }

        viewPager.setOnPageChangeListener(this);
        showPicAdapter = new ShowPicAdapter();
        viewPager.setAdapter(showPicAdapter);
        viewPager.setCurrentItem(position);
        showPicAdapter.notifyDataSetChanged();
        onPageSelected(position);
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

    }

    @Override
    public void onPageSelected(int position) {
        if(kind == 0 && picflist != null)
            tvPicLocation.setText( (position + 1) + "/" + picflist.size());
        if(kind == 1 && bimp != null)
            tvPicLocation.setText( (position + 1) + "/" + (bimp.size()));
        if(kind == 2 && picflist != null && bimp != null)
            tvPicLocation.setText( (position + 1) + "/" + (picflist.size() + bimp.size()));
    }

    @Override
    public void onPageScrollStateChanged(int state) {

    }

    /**
     * adapter
     */
    private class ShowPicAdapter extends PagerAdapter{

        @Override
        public int getCount() {
            if(kind == 0 && picflist != null)
                return picflist.size();
            if(kind == 1 && bimp != null)
                return bimp.size();
            if(kind == 2 && picflist != null && bimp != null)
                return picflist.size() + bimp.size();
            return 0;
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override
        public Object instantiateItem(final ViewGroup container, final int position) {
            View view = View.inflate(container.getContext(), R.layout.item_person_ability_vp, null);

            final PhotoView imageView = (PhotoView) view.findViewById(R.id.item_iv_photo);
            ImageView ivPlay = (ImageView) view.findViewById(R.id.item_iv_play);
            ivPlay.setVisibility(View.GONE);
            RelativeLayout relRoot = (RelativeLayout) view.findViewById(R.id.rel_root);
            relRoot.setBackgroundColor(container.getResources().getColor(R.color.bottom_color));

            final ViewGroup.LayoutParams params = imageView.getLayoutParams();
            if(kind == 0)
                showNetPic(container, position, imageView, params);
            if(kind == 1)
                showFileImageView(position, imageView);
            if(kind == 2){
                if(position < picflist.size()){
                    showNetPic(container, position, imageView, params);
                }else{
                    showFileImageView(position - picflist.size(), imageView);
                }
            }

            container.addView(view);
            return view;
        }

        private void showNetPic(final ViewGroup container, int position, final ImageView imageView, final ViewGroup.LayoutParams params) {
            Glide.with(container.getContext()).load(picflist.get(position)).asBitmap().into(new SimpleTarget<Bitmap>() {
                @Override
                public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
                    int height = bitmap.getHeight();
                    int width = bitmap.getWidth();
                    WindowManager wm = (WindowManager) container.getContext().getSystemService(Context.WINDOW_SERVICE);
                    params.width = wm.getDefaultDisplay().getWidth();
                    params.height = params.width * height / width;
                    imageView.setLayoutParams(params);
                    imageView.setImageBitmap(bitmap);
                }
            });
        }

        private void showFileImageView(int position, ImageView imageView) {
            Bitmap bitmap = null;
            try {
                bitmap = Bimp.revitionImageSize(bimp.get(position));
                imageView.setImageBitmap(bitmap);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override
        public int getItemPosition(Object object) {
            return POSITION_NONE;
        }
    }
}
