package com.wanduoduo.fragment.managecenter;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.CommentListBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.widget.CircleImageView;

import java.util.Map;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/31.
 */
@SuppressLint("ValidFragment")
public class PlayerEvaluationDataFragment extends BaseListRefreshFragment{

    private boolean isAllEva;
    private String gift_id;
    private int type = 0;

    public PlayerEvaluationDataFragment(){}

    public PlayerEvaluationDataFragment(boolean isAllEva, String gift_id) {
        this.isAllEva = isAllEva;
        this.gift_id = gift_id;
    }

    @Override
    public void sendDataRequest() {
        OkHttpUtils.sendGetRequest(isAllEva?IConstant.GCOMMENTLIST_ALL:IConstant.GCOMMENTLIST, getMap(),mListener);
    }

    @Override
    public void updateAdapter(Object obj) {
        ((PlayerEvaluationAdapter)adapter).addData(((CommentListBean)obj).getData().getData_list(), isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new PlayerEvaluationAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, CommentListBean.class);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        if(isAllEva){
            map.put(IConsName.USER_ID, SPUtils.getStringData(IConsName.USER_ID,""));
        }else{
            map.put("gift_id",gift_id);
        }
        map.put(IConsName.PAGE, page + "");
        map.put("type", type + "");
        super.addParams(map);
    }

    public void setType(int type) {
        this.type = type;
        autoRefresh();
    }

    private class PlayerEvaluationAdapter extends MyBaseAdapter<CommentListBean.DataBean.DataListBean> {

        @Override
        public View getView(int position, View view, ViewGroup viewGroup) {
            if (null == view) {
                view = View.inflate(viewGroup.getContext(), R.layout.item_player_evaluation, null);
            }
            ViewHolder holder = ViewHolder.getHolder(view);
            holder.relDetailSkill.setVisibility(View.GONE);
            if ("0".equals(mData.get(position).getIs_show())) {
                holder.civEvalutionActor.setBackgroundResource(R.drawable.photo_default);
                holder.tvNickname.setText("匿名用户");
            } else {
                Glide.with(getActivity()).load(mData.get(position).getComment_user().getAvatar()).centerCrop().into(holder.civEvalutionActor);
                holder.tvNickname.setText(mData.get(position).getComment_user().getNickname());
            }
            holder.evalucation.setText(mData.get(position).getContent());
            if ("1".equals(mData.get(position).getStar())) {
                holder.ivStar.setImageResource(R.drawable.star_1);
            } else if ("2".equals(mData.get(position).getStar())) {
                holder.ivStar.setImageResource(R.drawable.star_2);

            } else if ("3".equals(mData.get(position).getStar())) {
                holder.ivStar.setImageResource(R.drawable.star_3);

            } else if ("4".equals(mData.get(position).getStar())) {
                holder.ivStar.setImageResource(R.drawable.star_4);

            } else if ("5".equals(mData.get(position).getStar())) {
                holder.ivStar.setImageResource(R.drawable.star_5);
            }
            holder.time.setText(mData.get(position).getCreate_time().substring(5, 10));
            return view;
        }

    }

    static class ViewHolder {
        @Bind(R.id.civ_evalution_actor)
        CircleImageView civEvalutionActor;
        @Bind(R.id.tv_nickname)
        TextView tvNickname;
        @Bind(R.id.iv_star)
        ImageView ivStar;
        @Bind(R.id.evalucation)
        TextView evalucation;
        @Bind(R.id.rel_detail_skill)
        RelativeLayout relDetailSkill;
        @Bind(R.id.time)
        TextView time;

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
}
