package com.wanduoduo.fragment.info.setting;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.info.InfoLoveAdapter;
import com.wanduoduo.adapter.info.InfoWatchAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.InfoWatchBean;
import com.wanduoduo.bean.LiKeFansBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import java.util.HashMap;
import java.util.Map;

import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;

/**
 * Created by jockie on 2016/9/21.
 */
public class SettingBlackPersonFragmetn extends BaseListRefreshFragment {

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_BLACKLIST,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
    }

    @Override
    protected Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, LiKeFansBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(0);
        }
        ((InfoLoveAdapter)adapter).addData(((LiKeFansBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoLoveAdapter();
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int position, long l) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        CharSequence[] item = {"查看资料","取消黑名单"};
        builder.setItems(item, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                LiKeFansBean.DataBean.DataListBean dataListBean = ((InfoLoveAdapter) adapter).mData.get(position);
                if(i == 0){
                    Intent intent = new Intent(mContext, InfoEditorPersonActivity.class);
                    intent.putExtra(IConsName.ISCANEDIT,false);
                    intent.putExtra(IConsName.USER_ID,dataListBean.getId());
                    startActivity(intent);
                }else{
                    sendRequestUnblack(position,dataListBean.getId());
                }
            }
        }).create().show();
    }

    private void sendRequestUnblack(final int position, final String id) {
        OkHttpUtils.sendPostRequest(IConstant.USER_UNBLACK, getUnBlackMap(id), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        ((InfoLoveAdapter)adapter).removeViewAt(position);
                        if(RongIM.getInstance() != null){
                            RongIM.getInstance().removeFromBlacklist(id, new RongIMClient.OperationCallback() {
                                @Override
                                public void onSuccess() {
                                    ToastUtils.makeToast("取消黑名单那成功");
                                }

                                @Override
                                public void onError(RongIMClient.ErrorCode errorCode) {

                                }
                            });
                        }
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getUnBlackMap(String id) {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.USER_ID,id);
        return map;
    }
}
