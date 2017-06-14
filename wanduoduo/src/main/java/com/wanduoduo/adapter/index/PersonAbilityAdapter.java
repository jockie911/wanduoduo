package com.wanduoduo.adapter.index;

import android.content.Intent;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.index.VideoPlayActivity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/7/26.
 */
public class PersonAbilityAdapter extends PagerAdapter {

    List<String> videoLists = new ArrayList<>();
    List<String> giftLists = new ArrayList<>();

    public PersonAbilityAdapter(List<String> videoList, List<String> giftList) {
        videoLists.addAll(videoList);
        giftLists.addAll(giftList);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return /*videoLists.size() +*/ giftLists.size();
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    @Override
    public Object instantiateItem(final ViewGroup container, final int position) {
        View view = View.inflate(container.getContext(), R.layout.item_person_ability_vp_1, null);
        ImageView imageView = (ImageView) view.findViewById(R.id.item_iv_photo);
        ImageView ivPlay = (ImageView) view.findViewById(R.id.item_iv_play);

        if(position < videoLists.size()){
            ivPlay.setVisibility(View.VISIBLE);
        }else{
            ivPlay.setVisibility(View.INVISIBLE);
        }

        Glide.with(container.getContext()).load(giftLists.get(position /*- videoLists.size()*/)).asBitmap().into(imageView);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(BaseApp.getContext(), ShowPicActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putStringArrayListExtra("piclist", (ArrayList<String>) giftLists);
                intent.putExtra("position",position /*- videoLists.size()*/);
                BaseApp.getContext().startActivity(intent);
            }
        });

        ivPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(container.getContext(), VideoPlayActivity.class);
                intent.putExtra("video",videoLists.get(position));
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                container.getContext().startActivity(intent);
            }
        });
        container.addView(view);
        return view;
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
