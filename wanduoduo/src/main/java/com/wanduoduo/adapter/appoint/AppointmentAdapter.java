package com.wanduoduo.adapter.appoint;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.AppointBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.ShowPicActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.CircleImageView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/10/17.
 */
public class AppointmentAdapter extends MyBaseAdapter<AppointBean.DataBean.DataListBean> {

    private int type;
    private int[] iconTitls = {R.drawable.icon_tag_traval,R.drawable.icon_tag_eat,R.drawable.icon_tag_movie,
    R.drawable.icon_tag_sing,R.drawable.icon_tag_run,R.drawable.icon_tag_other};

    public AppointmentAdapter(int position) {
        this.type = position;
    }

    @Override
    public View getView(int i, View view, final ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_lv_appoint, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        final AppointBean.DataBean.DataListBean itemData = mData.get(i);
        Glide.with(viewGroup.getContext()).load(itemData.getOrganizer().getAvatar()).centerCrop().into(holder.ivAvctor);
        holder.tvName.setText(itemData.getOrganizer().getNickname());

        holder.ivVipLevel.setVisibility(View.VISIBLE);
        switch (mData.get(i).getOrganizer().getVip_level()){
            case "1": holder.ivVipLevel.setImageResource(R.drawable.vip_1);break;
            case "2": holder.ivVipLevel.setImageResource(R.drawable.vip_2);break;
            case "3": holder.ivVipLevel.setImageResource(R.drawable.vip_3);break;
            case "4": holder.ivVipLevel.setImageResource(R.drawable.vip_4);break;
            default: holder.ivVipLevel.setVisibility(View.INVISIBLE);
        }

        holder.tvAge.setVisibility(View.VISIBLE);
        if(itemData.getOrganizer().getGender() == 1){
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_male);
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_male);
            holder.tvAge.setText(mData.get(i).getOrganizer().getAge() + "");
        }else if(mData.get(i).getOrganizer().getGender() == 2){
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_female);
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_female);
            holder.tvAge.setText(mData.get(i).getOrganizer().getAge() + "");
        }else{
            holder.tvAge.setVisibility(View.INVISIBLE);
        }

        holder.ivJianTou.setVisibility(View.INVISIBLE);
        holder.relPersonInfo.setBackgroundColor(viewGroup.getResources().getColor(R.color.bgcolor));

        holder.tvVisitTime.setTextSize(15);
        holder.tvVisitTime.setTextColor(viewGroup.getResources().getColor(R.color.c_mei_hong));
        holder.tvVisitTime.setVisibility(View.VISIBLE);
        if("1".equals(itemData.getPay_type())){
            holder.tvVisitTime.setText("我买单");
        }/*else if("2".equals(itemData.getPay_type())){
            holder.tvVisitTime.setText("求买单");
        }else if("3".equals(itemData.getPay_type())){
            holder.tvVisitTime.setText("AA");
        }*/else{
            holder.tvVisitTime.setVisibility(View.INVISIBLE);
        }

        holder.tvItemTitle.setText(itemData.getTitle());
        TvDrawableUtils.setTvDrawableLeft(holder.tvItemTitle,R.color.c_208_210_211,iconTitls[Integer.parseInt(itemData.getDate_tag_id()) - 1]);
        holder.tvItemDesc.setText(itemData.getIntro());
        if(TextUtils.isEmpty(itemData.getAddress())){
            holder.tvItemPlace.setText("未知，请联系主人!");
        }else{
            try {
                String name = new JSONObject(itemData.getAddress()).getString("name");
                holder.tvItemPlace.setText(!TextUtils.isEmpty(name)?name:"未知，请联系主人!");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        holder.tvitemTime.setText(TextUtils.isEmpty(itemData.getStart_time())?"不限时间":itemData.getStart_time());

        holder.tvItemCreateTime.setText(TimeShowUtils.getStandardDate(itemData.getCreate_time()));
        if(itemData.getDate_pic() != null && itemData.getDate_pic().size() != 0){
            holder.tvItemDesc.setPadding(0,0, DensityUtil.dip2px(viewGroup.getContext(),102),0);
            holder.tvItemTitle.setPadding(0,0, DensityUtil.dip2px(viewGroup.getContext(),102),0);
            holder.ivItemPic.setVisibility(View.VISIBLE);
            Glide.with(viewGroup.getContext()).load(itemData.getDate_pic().get(0)).centerCrop().into(holder.ivItemPic);
            holder.ivItemPic.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(viewGroup.getContext(), ShowPicActivity.class);
                    ArrayList<String> objects = new ArrayList<>();
                    objects.add((String) itemData.getDate_pic().get(0));
                    intent.putStringArrayListExtra("piclist", objects);
                    intent.putExtra("position",0);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    viewGroup.getContext().startActivity(intent);
                }
            });
        }
        else{
            holder.tvItemDesc.setPadding(0,0, DensityUtil.dip2px(viewGroup.getContext(),15),0);
            holder.tvItemTitle.setPadding(0,0, DensityUtil.dip2px(viewGroup.getContext(),15),0);
            holder.ivItemPic.setVisibility(View.INVISIBLE);
        }

        holder.ivAvctor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(viewGroup.getContext(), InfoEditorPersonActivity.class);
                intent.putExtra(IConsName.ISCANEDIT,false);
                intent.putExtra(IConsName.USER_ID,itemData.getOrganizer().getId());
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                viewGroup.getContext().startActivity(intent);
            }
        });
        return view;
    }

    public void deleteItem(int position) {
        mData.remove(position);
        notifyDataSetChanged();
    }


    static class ViewHolder {

        @Bind(R.id.iv_avctor)
        CircleImageView ivAvctor;
        @Bind(R.id.tv_name)
        TextView tvName;
        @Bind(R.id.tv_age)
        TextView tvAge;
        @Bind(R.id.tv_visit_time)
        TextView tvVisitTime;
        @Bind(R.id.iv_jian_tou)
        ImageView ivJianTou;
        @Bind(R.id.iv_vip_level)
        ImageView ivVipLevel;
        @Bind(R.id.rel_person_info)
        RelativeLayout relPersonInfo;

        @Bind(R.id.tv_item_title)
        TextView tvItemTitle;
        @Bind(R.id.tv_item_desc)
        TextView tvItemDesc;
        @Bind(R.id.tv_item_time)
        TextView tvitemTime;
        @Bind(R.id.tv_item_place)
        TextView tvItemPlace;

        @Bind(R.id.tv_item_create_time)
        TextView tvItemCreateTime;
        @Bind(R.id.iv_item_pic)
        ImageView ivItemPic;
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
