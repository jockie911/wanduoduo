package com.wanduoduo.adapter.info;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.AppointBean;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.TvDrawableUtils;

/**
 * Created by jockie on 2016/12/29.
 */
public class ItemInvateDateAdapter extends MyBaseAdapter<AppointBean.DataBean.DataListBean>{
    private int[] iconTitls = {R.drawable.icon_tag_traval,R.drawable.icon_tag_eat,R.drawable.icon_tag_movie,
            R.drawable.icon_tag_sing,R.drawable.icon_tag_run,R.drawable.icon_tag_other};

    @Override
    public View getView(int position, View contentView, ViewGroup parent) {
        TextView textView = new TextView(parent.getContext());
        textView.setTextColor(parent.getResources().getColor(R.color.c_208_210_211));
        textView.setMinHeight(DensityUtil.dip2px(parent.getContext(),45));
        ViewGroup.LayoutParams params = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        textView.setLayoutParams(params);
        textView.setGravity(Gravity.CENTER_VERTICAL);
        textView.setPadding(DensityUtil.dip2px(parent.getContext(),15),0,0,0);
        textView.setCompoundDrawablePadding(DensityUtil.dip2px(parent.getContext(),10));
        TvDrawableUtils.setTvDrawableLeft(textView,R.color.c_208_210_211,iconTitls[Integer.parseInt(getItem(position).getDate_tag_id()) - 1]);
        textView.setText(mData.get(position).getTitle());
        return textView;
    }
}
