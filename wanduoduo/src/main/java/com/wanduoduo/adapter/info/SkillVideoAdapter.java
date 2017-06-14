package com.wanduoduo.adapter.info;

import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.wanduoduo.R;
import com.wanduoduo.ui.authentication.AuthenticationEditVideoActivity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/9/13.
 */
public class SkillVideoAdapter extends BaseAdapter{
    private OnDeleteListen onDeleteListen;
    List<String> mUrlList = new ArrayList<>();

    public SkillVideoAdapter(OnDeleteListen onDeleteListen){
        this.onDeleteListen = onDeleteListen;
    }
    public void addData(List<String> urlLists){
        if(urlLists != null){
            mUrlList.addAll(urlLists);
            notifyDataSetChanged();
        }
    }

    public void addData(String path) {
        mUrlList.add(path);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
       /* if(mUrlList.size() == 3){
            return 3;
        }else{
            return mUrlList.size() + 1;
        }*/
        return 1;
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
        view = View.inflate(viewGroup.getContext(), R.layout.item_mgv_player_skill_perfection_photo,null);
        ImageView ivPlay = (ImageView) view.findViewById(R.id.iv_play);
        ImageView ivPicDelete = (ImageView) view.findViewById(R.id.iv_pic_delete);
        RoundCornerImageView gvItenIv = (RoundCornerImageView) view.findViewById(R.id.gv_item_iv);
        gvItenIv.setBackgroundColor(Color.parseColor("#666666"));

        if(mUrlList.size() == 3 ){
            ivPicDelete.setVisibility(View.INVISIBLE);
            ivPlay.setVisibility(View.VISIBLE);
        }else{
            if(i == getCount() - 1){
                ivPicDelete.setVisibility(View.INVISIBLE);
                ivPlay.setVisibility(View.INVISIBLE);
                gvItenIv.setBackgroundColor(Color.parseColor("#00ffffff"));
                gvItenIv.setImageResource(R.drawable.prefection_add_video);
            }else{
                ivPicDelete.setVisibility(View.VISIBLE);
                ivPlay.setVisibility(View.VISIBLE);
            }
        }
        ivPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(viewGroup.getContext(),AuthenticationEditVideoActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putExtra("path",mUrlList.get(i));
                viewGroup.getContext().startActivity(intent);
            }
        });

        ivPicDelete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onDeleteListen.onDelete(i);
                mUrlList.remove(i);
                notifyDataSetChanged();
            }
        });
        return view;
    }

    public interface OnDeleteListen{
        void onDelete(int position);
    }
}
