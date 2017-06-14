package com.wanduoduo.wxapi;

import android.app.Activity;

import com.tencent.mm.sdk.constants.ConstantsAPI;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.wanduoduo.utils.ToastUtils;

/**
 * Created by jockie on 2016/8/26.
 */
public class WXPayEntryActivity extends Activity implements IWXAPIEventHandler {

    @Override
    public void onReq(BaseReq baseReq) {

    }

    @Override
    public void onResp(BaseResp resp) {
        String msg = "";

        if(resp.errCode == 0) {
            msg = "支付成功";
        }
        else if(resp.errCode == -1) {
            msg = "已取消支付";
        }
        else if(resp.errCode == -2) {
            msg = "支付失败";
        }

        if (resp.getType() == ConstantsAPI.COMMAND_PAY_BY_WX) {
            ToastUtils.makeToast(msg);
        }
    }
}
