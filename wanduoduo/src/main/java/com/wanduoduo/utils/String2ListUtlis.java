package com.wanduoduo.utils;

import android.text.TextUtils;

import org.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by jockie on 2016/8/15.
 */
public class String2ListUtlis {

    /**
     * String video or pic to list
     */
    public static List<String> string2List(String parames){
        List<String> list = new ArrayList<>();
        if(!TextUtils.isEmpty(parames)){
            try {
                JSONArray jsonArray = new JSONArray(parames);
                for (int i = 0; i < jsonArray.length(); i++) {
                    list.add(jsonArray.getString(i).replace("\\",""));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

//    {"20160820":["13","17"],"20160810":["8","9","10","11","12","13","14"],"20160813":["18","22","21","17","16","20"],"20160816":["9","10","11","12","13","14"]}

    /*public static Map<String,List<String>> string2Map(String params){
        Map<String,List<String>> map = new HashMap<>();
        if("0".equals(params))
            return map;
        String result = params.substring(1, params.length() - 1).replace("],", "#").replace("]", "").replace(":[", ",").trim();
        String[] splitResult = result.split("#");
        for(String itemResult : splitResult){
            JLog.e(" itemResult " + itemResult + "\n");
            List<String> list = new ArrayList<>();
            String[] splititems = itemResult.split(",");
            for(int i = 0;i < splititems.length;i++){
                if(i != 0)
                    list.add(splititems[i]);
            }
            map.put(splititems[0],list);
        }
        return map;
    }*/

    public static List<List<String>>  String2Lists(String params){
        List<List<String>> lists = new ArrayList<>();
        if("0".equals(params) || TextUtils.isEmpty(params))
            return lists;
        String result = params.substring(1, params.length() - 1).replace("],", "#").replace("]", "").replace(":[", ",").trim();
        String[] splitResult = result.split("#");

        for (int i = 0; i < splitResult.length; i++) {
            String[] itemSplitResult = splitResult[i].split(",");
            List<String> itemList = new ArrayList<>();
            for (int j = 0; j < itemSplitResult.length; j++) {
                itemList.add(itemSplitResult[j]);
            }
            lists.add(itemList);
        }

        Collections.sort(lists, new Comparator<List<String>>() {
            @Override
            public int compare(List<String> t1, List<String> t2) {
                if(Integer.parseInt(t1.get(0).replace("\"","")) - Integer.parseInt(t2.get(0).replace("\"","")) > 0){
                    return 1;
                }else if(Integer.parseInt(t1.get(0).replace("\"","")) - Integer.parseInt(t2.get(0).replace("\"","")) < 0){
                    return -1;
                }else {
                    return 0;
                }
            }
        });
        return lists;
    }
}
