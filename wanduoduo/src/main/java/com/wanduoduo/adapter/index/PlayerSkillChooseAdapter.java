package com.wanduoduo.adapter.index;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.IndexTagListBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.skill.PlayerSkillChooseActivity;
import com.wanduoduo.ui.skill.PlayerSkillPerfectionActivity;
import com.wanduoduo.widget.MyGridView;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/7/22.
 */
public class PlayerSkillChooseAdapter extends MyBaseAdapter<IndexTagListBean.DataBean.DataListBean> {

    private  PlayerSkillChooseActivity playerSkillChooseActivity;

    public PlayerSkillChooseAdapter(PlayerSkillChooseActivity playerSkillChooseActivity) {
        this.playerSkillChooseActivity = playerSkillChooseActivity;
    }

    @Override
    public View getView(final int position, View contentView, final ViewGroup parent) {
        if (null == contentView) {
            contentView = View.inflate(parent.getContext(), R.layout.item_lv_player_skill_choose, null);
        }
        ViewHolder holder = ViewHolder.getHolder(contentView);
        PlayerSkillChooseItemAdapter itemAdapter = new PlayerSkillChooseItemAdapter();
        holder.mgvPlayerSkillChoose.setAdapter(itemAdapter );
        itemAdapter.addData(mData.get(position).getData_list_child(),false);

        Glide.with(parent.getContext()).load(mData.get(position).getCategory_image_b()).into(holder.ivPlayerSkillChoose);
        holder.mgvPlayerSkillChoose.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Intent intent = new Intent(parent.getContext(), PlayerSkillPerfectionActivity.class);
                intent.putExtra("name",mData.get(position).getData_list_child().get(i).getTag_name());
                intent.putExtra("tag_id",mData.get(position).getData_list_child().get(i).getTag_id());
                intent.putExtra("tag_type",mData.get(position).getData_list_child().get(i).getTag_type());
                intent.putExtra("type", IConsName.SKILL_PUB);
                if(playerSkillChooseActivity.isStartByOthers()){
                    playerSkillChooseActivity.setResult(200,intent);
                    playerSkillChooseActivity.finish();
                }else{
                    parent.getContext().startActivity(intent);
                }
            }
        });
        return contentView;
    }

    static class ViewHolder {
        @Bind(R.id.mgv_player_skill_choose)
        MyGridView mgvPlayerSkillChoose;
        @Bind(R.id.iv_player_skill_choose)
        ImageView ivPlayerSkillChoose;

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
}
