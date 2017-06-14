package com.wanduoduo.ui.index;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;

import org.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;

public class ProPicActivity extends BaseActivity {

    @Bind(R.id.gvProPic)
    GridView gridView;
    List<String> mProPicLists = new ArrayList<>();
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_pro_pic;
    }

    @Override
    protected void initData() {
        tvTitle.setText("查看证书");
        String pro_pic = getIntent().getStringExtra("pro_pic");

        if(!TextUtils.isEmpty(pro_pic)){
            try {
                JSONArray jsonArray = new JSONArray(pro_pic);
                for (int i = 0 ; i < jsonArray.length() ; i++)
                    mProPicLists.add(jsonArray.getString(i));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        ProPicAdapter proPicAdapter = new ProPicAdapter();
        gridView.setAdapter(proPicAdapter);
        proPicAdapter.addData(mProPicLists);
    }

    private class ProPicAdapter extends BaseAdapter{
        List<String> mData = new ArrayList<>();
        public void addData(List<String> mProPicLists) {
            if(mProPicLists != null){
                mData.addAll(mProPicLists);
                notifyDataSetChanged();
            }
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
        public View getView(int i, View view, ViewGroup viewGroup) {
            if(view == null)
                view = View.inflate(viewGroup.getContext(),R.layout.item_pro_pic,null);
            RoundCornerImageView rciv = (RoundCornerImageView) view.findViewById(R.id.rciv);
            Glide.with(viewGroup.getContext()).load(mData.get(i)).centerCrop().into(rciv);
            return view;
        }
    }
}
