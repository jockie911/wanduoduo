package com.wanduoduo.fragment.info;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.info.InfoLoveAdapter;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.LiKeFansBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/8/15.
 */
@SuppressLint("ValidFragment")
public class InfoLikeTheyFragment extends BaseListRefreshFragment {

    private static final int FOLLOW = 10000;
    private static final int UNFOLLOW = 10001;

    private String type;
    public InfoLikeTheyFragment(String type){
        this.type = type;
    }

    public InfoLikeTheyFragment() {
    }

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_FOLLOWLIST,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.USER_ID,SPUtils.getStringData(IConsName.USER_ID,""));
        map.put(IConsName.TYPE,getType());
        map.put(IConsName.PAGE,page + "");
        super.addParams(map);
    }

    private String getType() {
        return type;
    }

    @Override
    public void updateAdapter(Object obj) {
        baseListView.setDividerHeight(0);
        baseListView.setPadding(0,0,0,0);
        ((InfoLoveAdapter)adapter).addData(((LiKeFansBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoLoveAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, LiKeFansBean.class);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int position, long l) {
        Intent intent = new Intent(BaseApp.getContext(),InfoEditorPersonActivity.class);
        intent.putExtra(IConsName.ISCANEDIT,false);
        String user_id = ((InfoLoveAdapter) adapter).mData.get(position).getId();
        intent.putExtra(IConsName.USER_ID,user_id);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        BaseApp.getContext().startActivity(intent);

       /* final int relation_status = ((InfoLoveAdapter) adapter).mData.get(position).getRelation_status();
        final String user_id = ((InfoLoveAdapter) adapter).mData.get(position).getId();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if(relation_status == 1 || relation_status == 2){
            builder.setTitle("是否取消关注？");
        }else{
            builder.setTitle("是否关注？");
        }
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                follow(relation_status,position,user_id);
                dialogInterface.dismiss();
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();*/
    }

    /**
     * 关注或者取消关注
     * @param relationStatus
     * @param position
     */
    private void follow(int relationStatus, int position,String user_id) {
        if(relationStatus == 1 || relationStatus == 2){
            OkHttpUtils.sendPostRequest(IConstant.USER_UNFOLLOW, MapUtils.clear().addParams(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,"")).
            addParams(IConsName.USER_ID,user_id).getMap(),new MyOnRefreshListen(UNFOLLOW,position));
        }else{
            OkHttpUtils.sendPostRequest(IConstant.USER_UNFOLLOW, MapUtils.clear().addParams(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,"")).
                    addParams(IConsName.USER_ID,user_id).getMap(),new MyOnRefreshListen(FOLLOW,position));
        }
    }

    private class MyOnRefreshListen implements OkHttpUtils.OnResultListener{

        private int isFollow;
        private int position;
        public MyOnRefreshListen(int isFollow, int position) {
            this.isFollow = isFollow;
            this.position = position;
        }

        @Override
        public void onSuccess(String result) {
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    if(isFollow == FOLLOW){
                        ToastUtils.makeToast("关注成功");
                    }else if(isFollow == UNFOLLOW){
                        ToastUtils.makeToast("取消关注成功");
                        ((InfoLoveAdapter)adapter).removeViewAt(position);
                    }
                }
            });
        }

        @Override
        public void onFailure(int errCode,String errMsg) {

        }
    }
}
