package com.wanduoduo.adapter.index;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.CityAllBean;
import com.wanduoduo.ui.index.SelectLocationActivity;
import com.wanduoduo.utils.AreaNameUtils;
import com.wanduoduo.utils.BDLocationUtils;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyGridView;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/7/25.
 */
public class SelectLocationAdapter extends BaseAdapter implements View.OnClickListener {

    public final static int TYPE_LOCATION = 0;
    public final static int TYPE_HOT = 1;
    public final static int TYPE_ALL = 2;
    private SelectLocationActivity selectLocationActivity;
    public List<CityAllBean.DataBean.AllCityBean> mData = new ArrayList<>();
    List<CityAllBean.DataBean.HotCityBean> hotData = new ArrayList<>();
    public boolean isSearch;        //是否是搜索的数据
    private String locationPlace = "";
    private HotCityAdapter hotCityAdapter;

    public SelectLocationAdapter(SelectLocationActivity selectLocationActivity) {
        this.selectLocationActivity = selectLocationActivity;
    }

    public void addData(List<CityAllBean.DataBean.AllCityBean> all_city, boolean isSearch) {
        this.isSearch = isSearch;
        mData.clear();
        if(all_city != null)
            mData.addAll(all_city);
        notifyDataSetChanged();
    }

    public void addHotData(List<CityAllBean.DataBean.HotCityBean> hot_city) {
        hotData.clear();
        if(hot_city != null)
            hotData.addAll(hot_city);
    }

    @Override
    public int getCount() {
        return isSearch?mData.size():2 + mData.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public int getViewTypeCount() {
        return isSearch?1:3;
    }

    @Override
    public int getItemViewType(int position) {
        if(!isSearch){
            if(position == 0){
                return 0;
            }else if(position == 1){
                return TYPE_HOT;
            }else{
                return TYPE_ALL;
            }
        }else{
            return TYPE_ALL;
        }
    }


    public int getIndex(String letter){
        if(letter.equals("定")){
            return 0;
        }else if(letter.equals("热")){
            return 1;
        }else{
            for(int i = 0;i<mData.size();i++){
                if(letter.equals(mData.get(i).getType().toUpperCase())){
                    return i + 2;
                }
            }
        }
        return -1;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        switch (getItemViewType(i)){
            case TYPE_LOCATION:
                view = View.inflate(viewGroup.getContext(), R.layout.item_select_location_locat, null);
                final TextView tvLocation = (TextView) view.findViewById(R.id.tv_location);
                ViewGroup.LayoutParams params = tvLocation.getLayoutParams();
                WindowManager wm = (WindowManager) viewGroup.getContext().getSystemService(Context.WINDOW_SERVICE);
                params.width = (wm.getDefaultDisplay().getWidth() - DensityUtil.dip2px(viewGroup.getContext(),100))/3;
                tvLocation.setLayoutParams(params);
                tvLocation.setClickable(false);

                if(TextUtils.isEmpty(locationPlace)){
                    BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
                        @Override
                        public void onLocationSuccess(BDLocation location) {
                            locationPlace = location.getCity();
                            tvLocation.setText(location.getCity());
                            tvLocation.setClickable(true);
                        }
                    });
                }else{
                    tvLocation.setClickable(true);
                    tvLocation.setText(locationPlace);
                }
                tvLocation.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        if(!TextUtils.equals("定位中",tvLocation.getText().toString())){
                            selectLocationActivity.setDataResult(tvLocation.getText().toString(),
                                    AreaNameUtils.getCityCode(tvLocation.getText().toString()),AreaNameUtils.getCityCode(tvLocation.getText().toString()));
                        }else{
                            ToastUtils.makeToast("正在获取定位信息...");
                        }
                    }
                });
                break;
            case TYPE_HOT:
               view = View.inflate(viewGroup.getContext(),R.layout.item_select_location_hot,null);
                MyGridView mgvHot = (MyGridView) view.findViewById(R.id.mgv_hot);

                hotCityAdapter = new HotCityAdapter();
                mgvHot.setAdapter(hotCityAdapter);
                hotCityAdapter.addData(hotData);
                mgvHot.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        selectLocationActivity.setDataResult(hotData.get(position).getTitle(),
                                hotData.get(position).getCode(),hotData.get(position).getId());
                    }
                });
                break;
            case TYPE_ALL:
//                if(view == null)
                    view = View.inflate(viewGroup.getContext(),R.layout.item_select_location_city,null);
                ViewHolder holder = ViewHolder.getHolder(view);
                int pos = i;
                if(!isSearch){
                    pos = i - 2;        //这里不要动
                }
                if(pos > 0  ){
                    if(mData.get(pos).getType().equals(mData.get(pos - 1).getType())){
                        holder.tvItemHead.setVisibility(View.GONE);
                    }else{
                        holder.tvItemHead.setVisibility(View.VISIBLE);
                        holder.tvItemHead.setText(mData.get(pos).getType());
                    }
                    holder.tvPlace.setText(mData.get(pos).getTitle());
                }else if(pos == 0){
                    holder.tvItemHead.setVisibility(View.VISIBLE);
                    holder.tvItemHead.setText(mData.get(pos).getType());
                    holder.tvPlace.setText(mData.get(pos).getTitle());
                }
                break;
        }
        return view;
    }

    @Override
    public void onClick(View view) {
         if(view.getId() == R.id.tv_place){
        }
    }

    static class ViewHolder {
        @Bind(R.id.tv_item_head)
        TextView tvItemHead;
        @Bind(R.id.tv_place)
        TextView tvPlace;

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

    private class HotCityAdapter extends BaseAdapter{

        private List<CityAllBean.DataBean.HotCityBean> hotData;

        public void addData(List<CityAllBean.DataBean.HotCityBean> hotData) {
            this.hotData = hotData;
        }

        @Override
        public int getCount() {
            return hotData == null?0:hotData.size();
        }

        @Override
        public Object getItem(int position) {
            return null;
        }

        @Override
        public long getItemId(int position) {
            return 0;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            convertView = View.inflate(parent.getContext(),R.layout.item_select_city_hot_item,null);
            TextView itemHot = (TextView) convertView.findViewById(R.id.tv_item_hot);
            itemHot.setText(hotData.get(position).getTitle());
            return convertView;
        }
    }
}
