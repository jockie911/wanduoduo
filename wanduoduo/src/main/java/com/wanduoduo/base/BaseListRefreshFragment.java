package com.wanduoduo.base;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.cjj.MaterialRefreshLayout;
import com.cjj.MaterialRefreshListener;
import com.wanduoduo.R;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;

/**
 * Created by jockie on 2016/8/11.
 */
public abstract class BaseListRefreshFragment extends BaseFragment implements AdapterView.OnItemClickListener {
    private static final int ONSUCCESS = 200;
    private static final int REFFRESH_OK = 201;
    private static final int LOAD_OK = 202;
    private static final int EMPTY_DATA = 1123;
    @Bind(R.id.baselistview)
    protected ListView baseListView;
    @Bind(R.id.refreshlayout)
    protected MaterialRefreshLayout refreshLayout;
    @Bind(R.id.tv_empty)
    TextView tvEmpty;

    protected int page = 1;
    protected int totalPage = 1;
    protected BaseAdapter adapter;
    protected boolean isRefreshData = true;    //判断是否需要刷新列表数据
    private boolean isEmpty ;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_base_list_refresh, null);
    }

    @Override
    protected void initData() {
        setEmptyContent(tvEmpty);
        adapter = getAdapter();
        baseListView.setAdapter(adapter);
        baseListView.setOnItemClickListener(this);

        refreshLayout.setMaterialRefreshListener(new MyMaterialRefreshListener());
//        String stringData = SPUtils.getStringData(this.getClass().getSimpleName(), "");
//        if(TextUtils.isEmpty(stringData)){

        refreshLayout.autoRefresh();
        sendDataRequest();
//        }else{
//            getData(stringData);
//        }
    }

    protected Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            if (msg.what == ONSUCCESS) {
                String result = msg.getData().getString("result");
                if(refreshLayout != null){
//                    if(isRefreshData){
                        refreshLayout.finishRefresh();
//                    }else{
                        refreshLayout.finishRefreshLoadMore();
//                    }
                }
                updateAdapter(parseData(result));
                handler.sendEmptyMessage(EMPTY_DATA);
            }else if(msg.what == EMPTY_DATA && tvEmpty != null){
                if(isEmpty){
                    tvEmpty.setVisibility(View.VISIBLE);
                }else{
                    tvEmpty.setVisibility(View.INVISIBLE);
                }
            }else if(msg.what == 1234){
                refreshLayout.autoRefresh();
            }else if(msg.what == 12345){
                if(refreshLayout != null && isRefreshData )
                    refreshLayout.autoRefresh();
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
            if(isRefreshData) {
//                SPUtils.savaStringData(this.getClass().getSimpleName(), result);
            }
//            if(isRefreshData && refreshLayout != null && refreshLayout.isShown())
//                handler.sendEmptyMessage(1234);
//            handler.sendEmptyMessage(12345);
            getData(result);
        }

        @Override
        public void onFailure(int errCode, String errMsg) {

        }
    };

    private void getData(String result) {
        Message obtain = Message.obtain();
        obtain.what = ONSUCCESS;
        Bundle bundle = new Bundle();
        bundle.putString("result",result);
        try {
            JSONObject data = new JSONObject(result).getJSONObject("data");
            if(data.has("data_list")){
                isEmpty = data.getJSONArray("data_list") == null || data.getJSONArray("data_list").length() == 0;
            }else{
                isEmpty = true;
            }
            if(data.has("total_page"))
                totalPage = data.getInt("total_page");
        } catch (JSONException e) {
            e.printStackTrace();
            isEmpty = true;
        }
        obtain.setData(bundle);
        handler.sendMessage(obtain);
    }

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
            if(page < totalPage){
                page ++;
                isRefreshData = false;
                sendDataRequest();
            }else{
                refreshLayout.finishRefreshLoadMore();
            }
        }
    }

    public void onRefreshing(){
        page = 1;
        isRefreshData = true;
        sendDataRequest();
//        handler.sendEmptyMessage(REFFRESH_OK);
    }

    protected void setEmptyContent(TextView textView){

    }

//    @Override
//    public void onResume() {
//        isRefreshData = true;
//        page = 1;
//        if(refreshLayout != null)
//            refreshLayout.autoRefresh();
//        sendDataRequest();
//        super.onResume();
//    }

    protected void autoRefresh(){
        if(baseListView != null && baseListView.getAdapter() != null && baseListView.getAdapter().getCount() != 0){
//            baseListView.smoothScrollToPosition(0);
            baseListView.setSelection(0);
        }
        page = 1;
        isRefreshData = true;
        if(refreshLayout != null){
            refreshLayout.autoRefresh();
        }
        sendDataRequest();
    }
}
