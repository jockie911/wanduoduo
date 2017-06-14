package com.wanduoduo.ui.skill;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyGridView;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.OnClick;

public class PlayerSkillManageActivity extends BaseActivity implements AdapterView.OnItemClickListener {

    @Bind(R.id.mgv_manage)
    MyGridView mgvManage;
    @Bind(R.id.tv_money_in)
    TextView tvMoneyIn;
    @Bind(R.id.tv_monry_draw)
    TextView tvMoneyDraw;
    private String money_bal = "";

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_player_skill_manage;
    }

    @Override
    protected void initData() {
        tvTitle.setText("技能管理");
        ManageAdapter manageAdapter = new ManageAdapter();
        mgvManage.setAdapter(manageAdapter);
        mgvManage.setOnItemClickListener(this);

        requestMoney();
    }

    private void requestMoney() {
        OkHttpUtils.sendGetRequest(IConstant.USER_BILLSUM, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            JSONObject data = new JSONObject(result).getJSONObject("data");
                            tvMoneyIn.setText(data.getString("money_in"));
                            tvMoneyDraw.setText(data.getString("money_draw"));

                            money_bal = data.getString("money_bal");

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    @OnClick({R.id.rel_public_skill,R.id.manage_get_money})
    public void onClick(View v){
        if(v.getId() == R.id.rel_public_skill){
            startActivity(new Intent(this, PlayerSkillChooseActivity.class));
        }else if(v.getId() == R.id.manage_get_money){
            Intent intent = new Intent(PlayerSkillManageActivity.this, PlayerSkillManageItemActivity.class);
            intent.putExtra("type",IConsName.MANAGE_GET_MONEY);
            intent.putExtra("money_bal",money_bal);
            startActivityForResult(intent,1);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == 1)
            requestMoney();
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        switch (i){
            case 0:
                jumpToItemActivity(IConsName.MANAGE_ORDER_CENTER);
                break;
            case 1:
                jumpToItemActivity(IConsName.MANAGE_MY_SKILL);
                break;
            case 2:
                jumpToItemActivity(IConsName.MANAGE_USER_DISCUSS);
                break;
            case 3:
                Intent intent = new Intent(this, DetailWebViewActivity.class);
                intent.putExtra("url","http://api.wanduoduo.cc/new/a_service_teach.html");
                intent.putExtra("title","服务教程");
                startActivity(intent);
                break;
            case 4:

                break;
            case 5:

                break;
        }
    }

    private void jumpToItemActivity(int type) {
        Intent intent = new Intent(PlayerSkillManageActivity.this, PlayerSkillManageItemActivity.class);
        intent.putExtra("type",type);
        startActivity(intent);
    }


    private class ManageAdapter extends BaseAdapter{
        private int[] imageRes = {R.drawable.manage_order_center,R.drawable.manage_my_skill,
                R.drawable.manage_user_discuss,R.drawable.manage_server_teach
                /*R.drawable.manage_common_queution, R.drawable.manage_share*/};
        @Override
        public int getCount() {
            return imageRes.length;
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
          if(view == null)
              view = View.inflate(viewGroup.getContext(),R.layout.item_mgv_manage,null);
          ImageView imageView = (ImageView) view.findViewById(R.id.iv_item_mgv_manage);
            imageView.setImageDrawable(getDrawable(imageRes[i]));
          return view;
        }
    }
}
