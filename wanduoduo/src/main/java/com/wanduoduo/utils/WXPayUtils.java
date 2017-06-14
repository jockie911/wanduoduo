package com.wanduoduo.utils;

import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.istatic.IConstant;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by jockie on 2016/8/26.
 */
public class WXPayUtils {

    public static void wxPay(String paycode) {
        IWXAPI api = WXAPIFactory.createWXAPI(BaseApp.getContext(),null);
        api.registerApp(IConstant.WXAPP_ID);

        try {
            JSONObject obj = new JSONObject(paycode);
        PayReq request = new PayReq();
        request.appId = IConstant.WXAPP_ID;
        request.partnerId = obj.getString("partnerid");
        request.prepayId= obj.getString("prepayid");
        request.packageValue = "Sign=WXPay";
        request.nonceStr= obj.getString("noncestr");
        request.timeStamp= obj.getString("timestamp");
        request.sign= obj.getString("sign");
        api.sendReq(request);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
