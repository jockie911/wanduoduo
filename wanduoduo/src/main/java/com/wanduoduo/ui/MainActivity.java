package com.wanduoduo.ui;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.baidu.location.BDLocation;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.UpdataBean;
import com.wanduoduo.fragment.ActiviFragment;
import com.wanduoduo.fragment.IndexFragment;
import com.wanduoduo.fragment.InfoFragment;
import com.wanduoduo.fragment.OnLineFragment;
import com.wanduoduo.fragment.online.AppointmentFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.utils.AreaNameUtils;
import com.wanduoduo.utils.BDLocationUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.Conversation;

/**
 *                             _ooOoo_
 *                            o8888888o
 *                            88" . "88
 *                            (| -_- |)
 *                            O\  =  /O
 *                         ____/`---'\____
 *                       .'  \\|     |//  `.
 *                      /  \\|||  :  |||//  \
 *                     /  _||||| -:- |||||-  \
 *                     |   | \\\  -  /// |   |
 *                     | \_|  ''\---/''  |   |
 *                     \  .-\__  `-`  ___/-. /
 *                   ___`. .'  /--.--\  `. . __
 *                ."" '<  `.___\_<|>_/___.'  >'"".
 *               | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *               \  \ `-.   \_ __\ /__ _/   .-` /  /
 *          ======`-.____`-.___\_____/___.-`____.-'======
 *                             `=---='
 *          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *                     佛祖保佑        永无BUG
 *            佛曰:
 *                   写字楼里写字间，写字间里程序员；
 *                   程序人员写程序，又拿程序换酒钱。
 *                   酒醒只在网上坐，酒醉还来网下眠；
 *                   酒醉酒醒日复日，网上网下年复年。
 *                   但愿老死电脑间，不愿鞠躬老板前；
 *                   奔驰宝马贵者趣，公交自行程序员。
 *                   别人笑我忒疯癫，我笑自己命太贱；
 *                   不见满街漂亮妹，哪个归得程序员？
*/

public class MainActivity extends BaseActivity implements View.OnClickListener {

    @Bind(R.id.tv_msg)
    TextView tvMsg;
    @Bind(R.id.tv_online)
    TextView tvOnline;
    @Bind(R.id.tv_index)
    TextView tvIndex;
    @Bind(R.id.tv_activi)
    TextView tvActivi;
    @Bind(R.id.tv_info)
    TextView tvInfo;
    @Bind(R.id.iv_unread)
    ImageView ivUnread;
    private InfoFragment infoFragment;
    List<TextView> tvLists = new ArrayList<>();
    private long exitTime;

    @Override
    protected int getLayoutRes() {
        isHaveTitleBar = false;
        isSwipe = false;
        return R.layout.activity_main;
    }

    /**
     * statusbar状态栏
     */
    protected void setStatusBar() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(Color.TRANSPARENT);
        }
    }

    @Override
    protected void initData() {
        currentSelectedPosition = 2;
        dealWithFragment();

        tvLists.add(tvMsg);
        tvLists.add(tvOnline);
        tvLists.add(tvIndex);
        tvLists.add(tvActivi);
        tvLists.add(tvInfo);
        setUserAlive();

        getUnReadMsgCount();

        // 是否是每天的第一次打开app
        isStartUp();
    }

    private void isStartUp(){
        Long openTime = SPUtils.getLongData("newTime", 0);
        if(openTime < getDayBeginTimestamp()){
            startUp();
        }
    }

    public Long getDayBeginTimestamp() {
        Date date = new Date();
        GregorianCalendar gc = new GregorianCalendar();
        gc.setTime(date);
        Date date2 = new Date(date.getTime() - gc.get(Calendar.HOUR_OF_DAY) * 60 * 60
                * 1000 - gc.get(Calendar.MINUTE) * 60 * 1000 - gc.get(Calendar.SECOND)
                * 1000);
        return date2.getTime();
    }

    @Override
    protected List<Fragment> getFragment() {
//        mFragment.add(new MsgFragment());
        mFragment.add(new AppointmentFragment());
        mFragment.add(new OnLineFragment());
        mFragment.add(new IndexFragment());
        mFragment.add(new ActiviFragment());
        infoFragment = new InfoFragment();
        mFragment.add(infoFragment);
        return mFragment;
    }

    @OnClick({R.id.fl_msg, R.id.fl_index, R.id.fl_info, R.id.fl_online, R.id.fl_activi})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.fl_msg:
                setImageViewBg(0);
                break;
            case R.id.fl_online:
                setImageViewBg(1);
                break;
            case R.id.fl_index:
                setImageViewBg(2);
                break;
            case R.id.fl_activi:
                setImageViewBg(3);
                break;
            case R.id.fl_info:
                setImageViewBg(4);
        }
    }

    int[] selectedBg = {R.drawable.icon_appoint_selected,R.drawable.icon_online_selected,R.drawable.icon_play_selected,
    R.drawable.icon_activi_selected,R.drawable.icon_my_selected};
    int[] normalBg = {R.drawable.icon_appoint_normal,R.drawable.icon_online_normal,R.drawable.icon_play_normal,
            R.drawable.icon_activi_normal,R.drawable.icon_my_normal};

    private void setImageViewBg(int position) {
        for (int i = 0; i < tvLists.size(); i++) {
            TvDrawableUtils.setTvDrawableTop(tvLists.get(i),R.color.c_127_130_134,normalBg[i]);
        }
        TvDrawableUtils.setTvDrawableTop(tvLists.get(position),R.color.c_mei_hong,selectedBg[position]);

        beforeSelectedPosition = currentSelectedPosition;
        currentSelectedPosition = position;
        dealWithFragment();
    }

    /**
     * 用户接口活跃度更新
     */
    private void setUserAlive() {
        if (!TextUtils.isEmpty(SPUtils.getStringData(IConsName.TOKEN, ""))) {
            BDLocationUtils.start(new BDLocationUtils.LocationSuccessListener() {
                @Override
                public void onLocationSuccess(BDLocation location) {
                    SPUtils.savaStringData(IConsName.CITY_TITLE,location.getCity());
                    SPUtils.savaStringData(IConsName.CITY_ID, AreaNameUtils.getCityCode(location.getCity()));

                    OkHttpUtils.sendPostRequest(IConstant.USER_ALIVE, getMap(location.getLatitude(),location.getLongitude()), new OkHttpUtils.OnResultListener() {
                        @Override
                        public void onSuccess(String result) {

                        }

                        @Override
                        public void onFailure(int errCode, String errMsg) {

                        }
                    });
                }
            });
        }
    }

    private Map<String, String> getMap(double lat,double lng) {
        Map<String, String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, ""));
        map.put("lat", lat + "");
        map.put("lng", lng + "");
        return map;
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            exit();
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    public void exit() {
        if ((System.currentTimeMillis() - exitTime) > 2000) {
            ToastUtils.makeToast("再按一次退出程序");
            exitTime = System.currentTimeMillis();
        } else {
            finish();
            System.exit(0);
        }
    }

    private void getUnReadMsgCount(){
        if(RongIM.getInstance() != null){
            RongIM.getInstance().setOnReceiveUnreadCountChangedListener(new RongIM.OnReceiveUnreadCountChangedListener() {
                @Override
                public void onMessageIncreased(int i) {
                    if(i == 0){
                        ivUnread.setVisibility(View.INVISIBLE);
                    }else{
                        ivUnread.setVisibility(View.VISIBLE);
                    }
                }
            }, Conversation.ConversationType.PRIVATE, Conversation.ConversationType.SYSTEM, Conversation.ConversationType.CUSTOMER_SERVICE);
        }
    }

    private void startUp(){
        OkHttpUtils.sendGetRequest(IConstant.STARTUP, getStartUpMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                UpdataBean updataBean = GsonTools.changeGsonToBean(result, UpdataBean.class);
                if(updataBean.getData().getPopupData() != null){
                    // 弹出框
                    showStartDialog(updataBean.getData().getPopupData());
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private void showStartDialog(final UpdataBean.DataBean.PopupDataBean updataBean) {
        SPUtils.savaLongData("newTime",System.currentTimeMillis());
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                final Dialog dialog = new Dialog(MainActivity.this, R.style.AlertDialogStyle);
                View view = View.inflate(BaseApp.getContext(), R.layout.dialog_main_start_up, null);
                dialog.setCancelable(false);
                dialog.setContentView(view);
                ImageView ivDialog = (ImageView) view.findViewById(R.id.iv_dialog);
                ImageView ivDialogClose = (ImageView) view.findViewById(R.id.iv_dialog_close);

                int width = getWindowManager().getDefaultDisplay().getWidth();
                ViewGroup.LayoutParams params = ivDialog.getLayoutParams();
                params.width = (width * 62)/72;
                params.height = (int) ((width * 62 * 1.5)/72);
                ivDialog.setLayoutParams(params);

                Glide.with(MainActivity.this).load(updataBean.getPic()).centerCrop().into(ivDialog);
                ivDialog.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent intent = new Intent(MainActivity.this, DetailWebViewActivity.class);
                        intent.putExtra("type",IConsName.WEBVIEW_SRART_UP);
                        intent.putExtra("title",updataBean.getTitle());
                        intent.putExtra("url",updataBean.getUrl());
                        startActivity(intent);
                        dialog.dismiss();
                    }
                });
                ivDialogClose.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        dialog.dismiss();
                    }
                });
                dialog.show();
            }
        });
    }

    private Map<String, String> getStartUpMap() {
        Map<String,String> map = new HashMap<>();
        map.put("app_version","2.3.0");
        map.put("app","2");
        return map;
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        isStartUp();
    }
}