package com.wanduoduo.fragment.personability;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.fragment.managecenter.PlayerEvaluationDataFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/7/26.
 */
@SuppressLint("ValidFragment")
public class PlayerEvaluationFragment extends BaseFragment {

    private  String gift_id = "";
    private boolean isAllEva;
    @Bind(R.id.btn_all)
    Button btnAll;
    @Bind(R.id.btn_prefect)
    Button btnPrefect;
    @Bind(R.id.btn_ok)
    Button btnOk;
    @Bind(R.id.btn_bad)
    Button btnBad;

    private PlayerEvaluationDataFragment playerEvaluationDataFragment;

    public PlayerEvaluationFragment(){}

    @SuppressLint("ValidFragment")
    public PlayerEvaluationFragment(String gift_id) {
        this.isAllEva = false;
        this.gift_id = gift_id;
    }

    public PlayerEvaluationFragment(boolean isAllEva) {
        this.isAllEva = isAllEva;
    }

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_player_evaluation, null);
    }

    @Override
    protected void initData() {
        playerEvaluationDataFragment = new PlayerEvaluationDataFragment(isAllEva,gift_id);
        getChildFragmentManager().beginTransaction().replace(R.id.content_container, playerEvaluationDataFragment).commit();

        btnAll.setText("全部");
        btnPrefect.setText("很满意");
        btnOk.setText("满意");
        btnBad.setText("不满意");
        setBtnNum();
    }

    private void setBtnNum() {
        OkHttpUtils.sendGetRequest(isAllEva ? IConstant.GCOMMENTLIST_ALL : IConstant.GCOMMENTLIST, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                if(getActivity() != null){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                JSONObject data = new JSONObject(result).getJSONObject("data");
                                if(data.has("comment_allnum") && btnAll != null)
                                     btnAll.setText("全部("+ data.getString("comment_allnum") +")");
                                if(data.has("comment_perfectnum") && btnPrefect != null)
                                     btnPrefect.setText("很满意("+ data.getString("comment_perfectnum")+")");
                                if(data.has("comment_goodnum") && btnOk != null)
                                     btnOk.setText("满意("+ data.getString("comment_goodnum")+")");
                                if(data.has("comment_badnum") && btnBad != null)
                                    btnBad.setText("不满意("+ data.getString("comment_badnum")+")");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    });
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        if(isAllEva){
            map.put(IConsName.USER_ID, SPUtils.getStringData(IConsName.USER_ID,""));
        }else{
            map.put("gift_id",gift_id);
        }
        map.put(IConsName.PAGE, 1 + "");
        map.put("type", "1");
        return map;
    }

    @OnClick({R.id.btn_all, R.id.btn_prefect, R.id.btn_ok, R.id.btn_bad})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_all:
                btnClick(0);
                setBtnColor(btnAll);
                break;
            case R.id.btn_prefect:
                btnClick(1);
                setBtnColor(btnPrefect);
                break;
            case R.id.btn_ok:
                btnClick(2);
                setBtnColor(btnOk);
                break;
            case R.id.btn_bad:
                btnClick(3);
                setBtnColor(btnBad);
                break;
        }
    }

    private void btnClick(int type) {
        playerEvaluationDataFragment.setType(type);
    }

    private void setBtnColor(Button btn){
        setSingleBtn(btnAll);
        setSingleBtn(btnPrefect);
        setSingleBtn(btnOk);
        setSingleBtn(btnBad);
        btn.setBackgroundResource(R.drawable.shape_btn_selected);
        btn.setTextColor(getResources().getColor(R.color.white));
    }

    private void setSingleBtn(Button b) {
        b.setBackgroundResource(R.drawable.shape_btn_normal);
        b.setTextColor(getResources().getColor(R.color.c_65_75_85));
    }
}
