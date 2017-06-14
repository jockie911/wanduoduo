package com.wanduoduo.fragment.info.setting;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.ui.index.DetailWebViewActivity;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/9/5.
 */
public class SettingAboutWddFragmetn extends BaseFragment {

    @Bind(R.id.tv_version_name)
    TextView tvVersionName;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_setting_about_wdd,null);
    }

    @Override
    protected void initData() {
        tvVersionName.setText(getVersion());
    }

    public String getVersion() {
        try {
            PackageManager manager = getActivity().getPackageManager();
            PackageInfo info = manager.getPackageInfo(getActivity().getPackageName(), 0);
            return "v." + info.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return "";
    }

    @OnClick({R.id.tv_xieyi_1,R.id.tv_xieyi_2})
    public void onClick(View view){
        if(view.getId() == R.id.tv_xieyi_1){
            jumpToXieYi("http://api.wanduoduo.cc/new/a_cooperation.html", "平台合作协议");
        }else if(view.getId() == R.id.tv_xieyi_2){
            jumpToXieYi("http://api.wanduoduo.cc/new/a_order.html","平台预约协议");
        }
    }

    private void jumpToXieYi(String url,String title){
        Intent intent = new Intent(mContext, DetailWebViewActivity.class);
        intent.putExtra("url",url);
        intent.putExtra("title",title);
        startActivity(intent);
    }
}
