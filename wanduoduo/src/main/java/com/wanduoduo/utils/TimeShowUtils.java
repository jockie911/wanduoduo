package com.wanduoduo.utils;

import android.text.TextUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/**
 * Created by jockie on 2016/9/2.
 */
public class TimeShowUtils {

    public static String getTime(String s){
        if(TextUtils.isEmpty(s))
            return "";
        List<List<String>> lists = String2ListUtlis.String2Lists(s);
        StringBuffer sb = new StringBuffer();
        if(lists != null){
            List<String> list = lists.get(0);
            String date = list.get(0).replace("\"","");
            sb.append(date.substring(4,6)).append("月").append(date.substring(6,8)).append("日");
            list.remove(0);
            int min = 24;
            for (String s1 : list) {
                if(min > Integer.parseInt(s1))
                    min = Integer.parseInt(s1);
            }
            sb.append(min + ":00 - " + (min + list.size()) + ":00 " + ("  ("+ list.size()+ "小时)"));
        }
        return sb.toString();
    }

    public static String getStandardDate(String timeStr) {
        if(TextUtils.isEmpty(timeStr))
            return "";
        long t = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            Date parse = sdf.parse(timeStr);
            t = parse.getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        long time = System.currentTimeMillis() - (t);

        long todayParseDate = getTodayStamp();
        long timeParse = time - todayParseDate;
        StringBuffer sb = new StringBuffer();
        if(timeParse > 0){
            int parseDat = (int)(timeParse/24/60/60/1000.f);
            if(parseDat < 1){
                sb.append("昨天");
            }else if(parseDat < 2){
                sb.append("前天");
            }else{
                sb.append((parseDat + 1) + "天前");
            }
        }else{  //今天
            long mill = time /1000;//秒前
            long minute = (long)(time/60/1000.0f);// 分钟前
            long hour = (long) (time/60/60/1000.0f);// 小时
            if(hour > 0){
                sb.append(hour + "小时前");
            }else if(minute > 0){
                sb.append(minute + "分钟前");
            }else {
                if(mill > 30){
                    sb.append(mill + "秒前");
                }else{
                    sb.append("刚刚");
                }
            }
        }
        return sb.toString();
    }


    public static long getTodayStamp(){
        Date date = new Date();
        GregorianCalendar gc = new GregorianCalendar();
        gc.setTime(date);
        Date date2 = new Date(date.getTime() - gc.get(Calendar.HOUR_OF_DAY) * 60 * 60
                * 1000 - gc.get(Calendar.MINUTE) * 60 * 1000 - gc.get(Calendar.SECOND)
                * 1000);
        return System.currentTimeMillis() - date2.getTime();
    }
}
