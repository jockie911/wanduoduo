package com.wanduoduo.ui.index;

import android.content.DialogInterface;
import android.content.Intent;
import android.widget.Toast;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.umeng.socialize.ShareAction;
import com.umeng.socialize.UMAuthListener;
import com.umeng.socialize.UMShareAPI;
import com.umeng.socialize.UMShareListener;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.media.UMImage;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseWebViewActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.skill.PlayerSkillChooseActivity;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;
import java.util.Set;

/**
 * Created by jockie on 2016/9/7.
 */
public class DetailWebViewActivity extends BaseWebViewActivity{

    private int type;

    @Override
    protected void initData() {
        type = getIntent().getIntExtra("type", -1);
        tvTitle.setText(getIntent().getStringExtra("title"));

        String url = getIntent().getStringExtra("url");
        setURL(url);
        super.initData();

        if(type == IConsName.WEBVIEW_SHARE_SUPRISE || type == IConsName.WEBVIEW_SRART_UP){
            shareGetSurprise();
        }
    }

    private void shareGetSurprise() {
        webview.registerHandler("publish", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                startActivity(new Intent(DetailWebViewActivity.this, PlayerSkillChooseActivity.class));
            }
        });

        webview.registerHandler("share", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                try {
                    JSONObject obj = new JSONObject(data);
                    final String share_title = obj.getString("share_title");
                    final String share_content = obj.getString("share_content");
                    final String share_url = obj.getString("share_url");
                    final String share_icon = obj.getString("share_icon");

                  /*  new ShareAction(DetailWebViewActivity.this).setDisplayList(SHARE_MEDIA.WEIXIN,SHARE_MEDIA.WEIXIN_CIRCLE,SHARE_MEDIA.QQ,SHARE_MEDIA.QZONE)
                            .withTitle(share_title)
                            .withText(share_content)
                            .withTargetUrl(share_url)
                            .withMedia(new UMImage(DetailWebViewActivity.this,share_icon))
                            .setCallback(umShareListener).open();*/
                 /*   new ShareAction(DetailWebViewActivity.this).setPlatform(SHARE_MEDIA.WEIXIN_CIRCLE)
                            .setCallback(umShareListener)
                            .withTitle(share_title)
                            .withText(share_content)
                            .withTargetUrl(share_url)
                            .withMedia(new UMImage(DetailWebViewActivity.this,share_icon))
                            .share();*/
                   android.support.v7.app.AlertDialog.Builder builder = new android.support.v7.app.AlertDialog.Builder(DetailWebViewActivity.this);
                    CharSequence[] item = {"分享至qq","分享至qq空间"};
                    builder.setItems(item, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            new ShareAction(DetailWebViewActivity.this).setPlatform(which == 0?SHARE_MEDIA.QQ:SHARE_MEDIA.QZONE)
                            .withTitle(share_title)
                            .withText(share_content)
                            .withTargetUrl(share_url)
                            .withMedia(new UMImage(DetailWebViewActivity.this,share_icon))
                            .setCallback(umShareListener)
                            .share();
                            dialog.dismiss();
                        }
                    }).create().show();

//                    UMShareAPI  mShareAPI = UMShareAPI.get( DetailWebViewActivity.this );
//                    mShareAPI.doOauthVerify(DetailWebViewActivity.this, SHARE_MEDIA.WEIXIN, umAuthListener);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private UMAuthListener umAuthListener = new UMAuthListener() {
        @Override
        public void onComplete(SHARE_MEDIA platform, int action, Map<String, String> data) {
            if(data != null){
                Set<Map.Entry<String, String>> entries = data.entrySet();
                StringBuffer sb = new StringBuffer();
                for (Map.Entry<String, String> entry : entries) {
                    sb.append(entry.getKey()).append(" -- ").append(entry.getValue()).append("\n");
                }
                Toast.makeText(BaseApp.getContext(),sb.toString(),Toast.LENGTH_LONG).show();
                return;
            }
            ToastUtils.makeToast("wei xin sussess");
        }

        @Override
        public void onError(SHARE_MEDIA platform, int action, Throwable t) {
            Toast.makeText( getApplicationContext(), "Authorize fail", Toast.LENGTH_SHORT).show();
        }

        @Override
        public void onCancel(SHARE_MEDIA platform, int action) {
            Toast.makeText( getApplicationContext(), "Authorize cancel", Toast.LENGTH_SHORT).show();
        }
    };

    private UMShareListener umShareListener = new UMShareListener() {
        @Override
        public void onResult(SHARE_MEDIA platform) {
            JLog.e("onResult "  + platform );
        }

        @Override
        public void onError(SHARE_MEDIA platform, Throwable t) {
            JLog.e("onError "  + platform + "\t" + t.getMessage() );
        }

        @Override
        public void onCancel(SHARE_MEDIA platform) {
            JLog.e("onCancel "  + platform );
        }
    };

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(type == IConsName.WEBVIEW_SHARE_SUPRISE || type == IConsName.WEBVIEW_SRART_UP)
            UMShareAPI.get(this).onActivityResult(requestCode, resultCode, data);
    }
}
