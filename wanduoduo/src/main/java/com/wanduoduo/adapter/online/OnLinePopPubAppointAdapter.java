package com.wanduoduo.adapter.online;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.utils.TvDrawableUtils;

/**
 * Created by jockie on 2016/10/11.
 */
public class OnLinePopPubAppointAdapter extends BaseAdapter{

    private int[] iconArray = {R.drawable.online_trival_selected,R.drawable.online_eat_selected,R.drawable.online_movie_selected,
    R.drawable.online_sing_selected,R.drawable.online_run_selected,R.drawable.online_other_normal};
    private String[] iconNames = {"旅行","吃饭","电影","唱歌","运动","其他"};
    @Override
    public int getCount() {
        return iconArray.length;
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
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(),R.layout.item_gv_pop_appoint,null);
        TextView tvItem = (TextView) view.findViewById(R.id.tv_item);
        TvDrawableUtils.setTvDrawableTop(tvItem,R.color.c_208_208_208,iconArray[i]);
        tvItem.setText(iconNames[i]);
        return view;
    }
}
