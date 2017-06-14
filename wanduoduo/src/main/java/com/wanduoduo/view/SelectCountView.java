package com.wanduoduo.view;

import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.order.SubmitOrderActivity;
import com.wanduoduo.utils.ToastUtils;

/**
 * Created by jockie on 2016/8/29.
 */
public class SelectCountView implements View.OnClickListener {

    private String id;
    private String cover_pic;
    private String title;
    private String fee;
    private ImageView ivReduce;
    private ImageView ivAdd;
    private EditText etCount;
    private TextView tvShowTime;
    private PlayerInfoBean playerInfoBean;

    public View getRootView(){
        View view = View.inflate(BaseApp.getContext(), R.layout.pop_person_ability, null);
        initData(view);
        return view;
    }

    private void initData(View v) {
        ivReduce = (ImageView) v.findViewById(R.id.iv_reduce);
        ivAdd = (ImageView) v.findViewById(R.id.iv_add);
        etCount = (EditText) v.findViewById(R.id.et_count);
        tvShowTime = (TextView) v.findViewById(R.id.tv_show_time);
        TextView tvMakeSuerOrder = (TextView) v.findViewById(R.id.tv_make_sure_order);

        ivReduce.setOnClickListener(this);
        ivAdd.setOnClickListener(this);
        tvMakeSuerOrder.setOnClickListener(this);
    }

    public void setData(String id, String cover_pic, String title, String fee) {
        this.id = id;
        this.cover_pic = cover_pic;
        this.title = title;
        this.fee = fee;
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.iv_reduce:
                addCount(1);
                break;
            case R.id.iv_add:
                addCount(2);
                break;
            case R.id.tv_make_sure_order:
                if(TextUtils.isEmpty(etCount.getText().toString())){
                    ToastUtils.makeToast("请输入预约数量");
                    return;
                }
                Intent intent = new Intent(BaseApp.getContext(), SubmitOrderActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putExtra("playerinfobean",playerInfoBean);
                intent.putExtra(IConsName.TYPE, IConstant.COMMUNICATE_SECOND);
                intent.putExtra("count",etCount.getText().toString());
                BaseApp.getContext().startActivity(intent);
                break;
        }
    }

    private void addCount(int type){
        if(TextUtils.isEmpty(etCount.getText().toString())){
            ToastUtils.makeToast("请输入预约数量");
            return;
        }
        int count = Integer.parseInt(etCount.getText().toString());
        if(type == 1){
            if(count == 1){
                ToastUtils.makeToast("至少选择1");
                return;
            }
            etCount.setText(( count - 1) + "");
        }else{
            etCount.setText((count + 1) + "");
        }
    }

    public void setData(PlayerInfoBean playerInfoBean) {
        this.playerInfoBean = playerInfoBean;
    }
}
