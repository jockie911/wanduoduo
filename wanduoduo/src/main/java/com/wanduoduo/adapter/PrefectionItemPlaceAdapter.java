package com.wanduoduo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.bean.CitySelectBean;
import com.wanduoduo.ui.skill.PlayerPerfectionItemActivity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/8/4.
 */
public class PrefectionItemPlaceAdapter extends BaseAdapter {


    private PlayerPerfectionItemActivity playerPerfectionItemActivity;
    private ArrayList<CitySelectBean.DataBean.SonBean.GrandSonBean> mData = new ArrayList<>();
    private String parentCode;
    public List<String> mAreaIDLists = new ArrayList<>();
    private boolean isCheck;

    public PrefectionItemPlaceAdapter(PlayerPerfectionItemActivity playerPerfectionItemActivity) {
        this.playerPerfectionItemActivity = playerPerfectionItemActivity;
    }

    public String getParentCode(){
        return parentCode;
    }

    @Override
    public int getCount() {
        return mData.size();
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
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_gv_prefection_place,null);
        final TextView tv = (TextView) view.findViewById(R.id.tv_item_prefection_place);
        tv.setText(mData.get(i).getCity_name());
        tv.setTag(1);
        if(isCheck){
            tv.setTag(0);
            tv.setTextColor(viewGroup.getResources().getColor(R.color.c_129_143_255));
            tv.setBackgroundResource(R.drawable.shape_radius_5_818fff);
        }else{
            tv.setTag(1);
            tv.setTextColor(viewGroup.getResources().getColor(R.color.c_65_75_85));
            tv.setBackgroundResource(R.drawable.shape_radius_5_414b55);
        }
        tv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if((int)tv.getTag() == 1){
                    tv.setBackgroundResource(R.drawable.shape_radius_5_818fff);
                    tv.setTag(0);
                    tv.setTextColor(viewGroup.getResources().getColor(R.color.c_129_143_255));
                    mAreaIDLists.add(mData.get(i).getCode());

                }else{
                    tv.setBackgroundResource(R.drawable.shape_radius_5_414b55);
                    tv.setTag(1);
                    tv.setTextColor(viewGroup.getResources().getColor(R.color.c_65_75_85));
                    mAreaIDLists.remove(mData.get(i).getCode());
                }
                if(mAreaIDLists.size() == mData.size()){
                    playerPerfectionItemActivity.setIsFullCheck(true);
                }else{
                    playerPerfectionItemActivity.setIsFullCheck(false);
                }
            }
        });
        return view;
    }

    public void clearData() {
        parentCode = "";
        parentCode = "";
        mData.clear();
        mAreaIDLists.clear();
        isCheck = false;
        notifyDataSetChanged();
    }

    public void addData(List<CitySelectBean.DataBean.SonBean.GrandSonBean> grandSonBeen) {
        parentCode = "";
        mAreaIDLists.clear();
        isCheck = false;
        mData.clear();
        mData.addAll(grandSonBeen);
        if(grandSonBeen != null && grandSonBeen.size() != 0)
            parentCode = grandSonBeen.get(0).getParent_code();
        notifyDataSetChanged();
    }


    public void setDataCheck(boolean isCheck) {
        this.isCheck = isCheck;
        mAreaIDLists.clear();
        mAreaIDLists.clear();
        for (CitySelectBean.DataBean.SonBean.GrandSonBean id : mData){
            mAreaIDLists.add(id.getCode());
        }
        notifyDataSetChanged();
    }
}
