package com.wanduoduo.adapter.online;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.utils.DensityUtil;

import org.json.JSONArray;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/10/13.
 */
public class OnLineAppointPubTagAdapter extends BaseAdapter{

    private List<String> selectedTagList = new ArrayList<>();
    private String[] mData;
    private boolean isTvClick = true;

    public OnLineAppointPubTagAdapter(String[] resource,boolean ... isCanClick) {
        mData = resource;
        if(isCanClick.length != 0)
            isTvClick = isCanClick[0];
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return mData == null?0:mData.length;
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
        final TextView textView = new TextView(viewGroup.getContext());
        ViewGroup.LayoutParams params = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, DensityUtil.dip2px(viewGroup.getContext(), 30));
        textView.setGravity(Gravity.CENTER);
        textView.setTextSize(12);
        textView.setLayoutParams(params);
        textView.setText(mData[i]);
        textView.setTag(0);
        textView.setTextColor(viewGroup.getResources().getColor(R.color.c_208_210_211));
        textView.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);

        if(isTvClick){
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if((int)view.getTag() == 0){
                  /*  if(selectedTagList.size() > 2){
                        ToastUtils.makeToast("最多选择3个标签");
                        return;
                    }*/
                        textView.setTextColor(viewGroup.getResources().getColor(R.color.white));
                        textView.setBackgroundResource(R.drawable.shape_bule_blue_blue);
                        textView.setTag(1);
                        selectedTagList.add(textView.getText().toString());
                    }else if((int)view.getTag() == 1){
                        textView.setTextColor(viewGroup.getResources().getColor(R.color.c_208_210_211));
                        textView.setBackgroundResource(R.drawable.shape_radius_5_414b55_online);
                        textView.setTag(0);
                        selectedTagList.remove(textView.getText().toString());
                    }
                }
            });
        }
        return textView;
    }

    public String getSelectTag(){
        if(selectedTagList.size() == 0)
            return "";
        JSONArray jsonArray = new JSONArray();
        for (String s : selectedTagList) {
            jsonArray.put(s);
        }
        return jsonArray.toString();
    }
}
