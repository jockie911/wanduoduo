package com.wanduoduo.utils;

import com.wanduoduo.istatic.IConstant;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jockie on 2016/7/11.
 */
public class MD5Utils {

    private static MessageDigest md5;

    public static String string2MD5(Map<String, String> map, String t) {
        byte[] bytesOfMessage = new byte[0];
        String sortValue = sortMapToString(map, t);
        try {
            bytesOfMessage = sortValue.getBytes("UTF-8");
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            e.printStackTrace();
        }
        char[] charArray = sortValue.toCharArray();
        byte[] byteArray = new byte[charArray.length];
        for (int i = 0; i < charArray.length; i++)
            byteArray[i] = (byte) charArray[i];
        byte[] md5Bytes = md5.digest(bytesOfMessage);
        StringBuffer hexValue = new StringBuffer();
        for (int i = 0; i < md5Bytes.length; i++) {
            int val = ((int) md5Bytes[i]) & 0xff;
            if (val < 16)
                hexValue.append("0");
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }

    private static String sortMapToString(Map<String, String> map, String t) {
        if (null == map)
            map = new HashMap<>();
        map.put(IConstant.T, t);
        StringBuffer sb = new StringBuffer();
        List<Map.Entry<String, String>> mList = new ArrayList(map.entrySet());
        Collections.sort(mList, new Comparator<Map.Entry<String, String>>() {
            public int compare(Map.Entry<String, String> o1, Map.Entry<String, String> o2) {
                return (o1.getKey()).toString().compareTo(o2.getKey());
            }
        });
        for (int i = 0; i < mList.size(); i++) {
            String value = mList.get(i).getValue().toString();
            sb.append(value);
        }
        return sb.append(IConstant.SECRET_K).toString();
    }
}
