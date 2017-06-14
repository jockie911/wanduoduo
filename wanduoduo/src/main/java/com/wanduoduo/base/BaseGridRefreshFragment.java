package com.wanduoduo.base;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.cjj.MaterialRefreshLayout;
import com.cjj.MaterialRefreshListener;
import com.wanduoduo.R;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.widget.MyGridView;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;

/**
 * Created by jockie on 2016/8/11.
 */
public abstract class BaseGridRefreshFragment extends BaseFragment implements AdapterView.OnItemClickListener {
    private static final int ONSUCCESS = 200;
    private static final int REFFRESH_OK = 201;
    private static final int LOAD_OK = 202;
    @Bind(R.id.index_gv)
    protected MyGridView gridView;
//    @Bind(R.id.refreshlayout)
//    MaterialRefreshLayout refreshLayout;
    public String resultData = "";
    public int page = 1;
    public int totalPage = 1;
    protected BaseAdapter adapter;
    public boolean isRefreshData;    //判断是否需要刷新列表数据

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_index_gridview, null);
    }

    @Override
    protected void initData() {

        adapter = getAdapter();
        setAnimation();
        gridView.setAdapter(adapter);
        gridView.setOnItemClickListener(this);

//        refreshLayout.setMaterialRefreshListener(new MyMaterialRefreshListener());
//        refreshLayout.autoRefresh();
//        refreshLayout.autoRefreshLoadMore();
        sendDataRequest();
    }

    protected void setAnimation() {

    }

    protected Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            if (msg.what == ONSUCCESS) {
                String result = msg.getData().getString("result");

                updateAdapter(parseData(result));

//                refreshLayout.finishRefresh();
//                refreshLayout.finishRefreshLoadMore();

            }else if(msg.what == REFFRESH_OK){
//                refreshLayout.finishRefresh();
            }else if(msg.what == LOAD_OK){
//                refreshLayout.finishRefreshLoadMore();
            }
        }
    };
    
    protected abstract void sendDataRequest();

    protected abstract Object parseData(String result) ;

    public abstract void updateAdapter(final Object obj) ;

    protected abstract BaseAdapter getAdapter();

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {}

    public OkHttpUtils.OnResultListener mListener = new OkHttpUtils.OnResultListener() {

        @Override
        public void onSuccess(String result) {
            Message obtain = Message.obtain();
            obtain.what = ONSUCCESS;
            Bundle bundle = new Bundle();
            try {
                totalPage = new JSONObject(result).getJSONObject("data").getInt("total_page");
            } catch (JSONException e) {
                e.printStackTrace();
            }
            resultData = result;
            bundle.putString("result",result);
            obtain.setData(bundle);
            handler.sendMessage(obtain);
        }

        @Override
        public void onFailure(int errCode, String errMsg) {

        }
    };

    protected Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.PAGE,page + "");
        addParams(map);
        return map;
    }

    protected void addParams(Map<String, String> map) {

    }

    private class MyMaterialRefreshListener extends MaterialRefreshListener {

        @Override
        public void onRefresh(MaterialRefreshLayout materialRefreshLayout) {
            onRefreshing();
        }

        @Override
        public void onRefreshLoadMore(MaterialRefreshLayout materialRefreshLayout) {
            onLoading();
        }
    }

    protected void onRefreshing(){
        page = 1;
        isRefreshData = true;
        sendDataRequest();
//        handler.sendEmptyMessage(REFFRESH_OK);
    }

    protected void onLoading(){
        if(page < totalPage){
            page ++;
            isRefreshData = false;
            sendDataRequest();
        }
//        handler.sendEmptyMessage(LOAD_OK);
    }
}
