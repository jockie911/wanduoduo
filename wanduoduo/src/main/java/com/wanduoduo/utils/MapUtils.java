package com.wanduoduo.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by jockie on 2016/7/14.
 */
public class MapUtils {

    private static Map<String,String> sMap;
    private static MapUtils instence = new MapUtils();
    private MapUtils() {}
    public static MapUtils addParams(String key , String value){
        if(sMap == null)
            sMap = new HashMap<>();
        sMap.put(key,value);
        return instence;
    }

    public static MapUtils clear(){
        if(sMap == null)
            sMap = new HashMap<>();
        sMap.clear();
        return instence;
    }

    public  Map<String,String> getMap(){
        return sMap;
    }
}
