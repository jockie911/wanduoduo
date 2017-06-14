package com.wanduoduo.fragment.info.setting;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.utils.ToastUtils;

import butterknife.Bind;

/**
 * Created by jockie on 2016/8/22.
 */
public class SettingMsgReturnFragment extends BaseFragment{

    @Bind(R.id.et_content)
    EditText etContent;
    @Bind(R.id.et_phone_num)
    EditText etPhoneNum;
    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragmetn_setting_msg_return,null);
    }

    @Override
    protected void initData() {

    }

    public boolean isReadySubmit(){
        if(TextUtils.isEmpty(etContent.getText().toString())){
            ToastUtils.makeToast("请填写您的意见！！！");
            return false;
        }
        if(TextUtils.isEmpty(etPhoneNum.getText().toString())){
            ToastUtils.makeToast("请填写您的手机号码");
            return false;
        }
        return true;
    }

    public String getContent(){
        return etContent.getText().toString();
    }

    public String getPhoneNum(){
        return etPhoneNum.getText().toString();
    }
}
