package com.wanduoduo.utils;

import android.text.TextUtils;

/**
 * Created by jockie on 2016/11/8.
 */
public class WddHelper {

    /**
     * 是否上传了头像
     * @param avatarUrl
     * @return
     */
    public static boolean isUploadAvatar(String avatarUrl){
        if(!TextUtils.isEmpty(avatarUrl))
            return avatarUrl.contains("uploads");
        return false;
    }

}

