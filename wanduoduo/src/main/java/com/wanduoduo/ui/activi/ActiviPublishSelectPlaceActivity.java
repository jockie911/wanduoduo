package com.wanduoduo.ui.activi;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.baidu.location.Poi;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.PubSelectPlaceBean;
import com.wanduoduo.utils.BDLocationUtils;

import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

public class ActiviPublishSelectPlaceActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    @Bind(R.id.lv_place)
    ListView lvPlace;
    private ActiviPublishSelectPlaceAdapter activiPublishSelectPlaceAdapter;
    private double lat = 0.0;
    private double lng = 0.0;
    private PubSelectPlaceBean pubSelectPlaceBean;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_activi_publish_select_place;
    }

    @Override
    protected void initData() {
        tvTitle.setText("定位结果");

        activiPublishSelectPlaceAdapter = new ActiviPublishSelectPlaceAdapter();
        lvPlace.setAdapter(activiPublishSelectPlaceAdapter);

        pubSelectPlaceBean = new PubSelectPlaceBean();
        BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
            @Override
            public void onLocationSuccess(BDLocation location) {
                List<Poi> poiList = location.getPoiList();
                activiPublishSelectPlaceAdapter.addData(poiList);
                pubSelectPlaceBean.setLat(location.getLatitude());
                pubSelectPlaceBean.setLng(location.getLongitude());
            }
        });
        lvPlace.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        String name = "";
        if(i != 0 && activiPublishSelectPlaceAdapter.poiList != null)
            name = activiPublishSelectPlaceAdapter.poiList.get(i - 1).getName();
        Intent intent = new Intent();

        pubSelectPlaceBean.setPlace(name);
        intent.putExtra("pubSelectPlaceBean",pubSelectPlaceBean);
        setResult(RESULT_OK,intent);
        finish();
    }

    private class ActiviPublishSelectPlaceAdapter extends BaseAdapter{
        public List<Poi> poiList;

        @Override
        public int getCount() {
            return poiList == null?1:poiList.size() + 1;
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
                view = View.inflate(viewGroup.getContext(),R.layout.item_select_location_city,null);
            ViewHolder holder = ViewHolder.getHolder(view);
            holder.tvItemHead.setVisibility(View.GONE);
            if(i == 0) {
                holder.tvPlace.setText("不显示地理位置");
            }else{
                holder.tvPlace.setText(poiList.get(i - 1).getName());
            }
            return view;
        }

        public void addData(List<Poi> poiList) {
            this.poiList = poiList;
            notifyDataSetChanged();
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
}
