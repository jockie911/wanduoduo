package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/7/22.
 */
public class CityAllBean {

    private DataBean data;

    private int errCode;
    private String errMsg;
    private String requestTime;

    public DataBean getData() {
        return data;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public int getErrCode() {
        return errCode;
    }

    public void setErrCode(int errCode) {
        this.errCode = errCode;
    }

    public String getErrMsg() {
        return errMsg;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }

    public String getRequestTime() {
        return requestTime;
    }

    public void setRequestTime(String requestTime) {
        this.requestTime = requestTime;
    }

    public static class DataBean {
        /**
         * id : 2521
         * title : 阿坝藏族羌族自治州
         * pinyin : Aba
         * code : 513200
         * type : A
         */

        private List<AllCityBean> all_city;
        /**
         * id : 2
         * title : 北京市
         * pinyin : Beijing
         * code : 110100
         * type : B
         */

        private List<HotCityBean> hot_city;

        public List<AllCityBean> getAll_city() {
            return all_city;
        }

        public void setAll_city(List<AllCityBean> all_city) {
            this.all_city = all_city;
        }

        public List<HotCityBean> getHot_city() {
            return hot_city;
        }

        public void setHot_city(List<HotCityBean> hot_city) {
            this.hot_city = hot_city;
        }

        public static class AllCityBean {
            private String id;
            private String title;
            private String pinyin;
            private String code;
            private String type;

            public String getId() {
                return id;
            }

            public void setId(String id) {
                this.id = id;
            }

            public String getTitle() {
                return title;
            }

            public void setTitle(String title) {
                this.title = title;
            }

            public String getPinyin() {
                return pinyin;
            }

            public void setPinyin(String pinyin) {
                this.pinyin = pinyin;
            }

            public String getCode() {
                return code;
            }

            public void setCode(String code) {
                this.code = code;
            }

            public String getType() {
                return type;
            }

            public void setType(String type) {
                this.type = type;
            }
        }

        public static class HotCityBean {
            private String id;
            private String title;
            private String pinyin;
            private String code;
            private String type;

            public String getId() {
                return id;
            }

            public void setId(String id) {
                this.id = id;
            }

            public String getTitle() {
                return title;
            }

            public void setTitle(String title) {
                this.title = title;
            }

            public String getPinyin() {
                return pinyin;
            }

            public void setPinyin(String pinyin) {
                this.pinyin = pinyin;
            }

            public String getCode() {
                return code;
            }

            public void setCode(String code) {
                this.code = code;
            }

            public String getType() {
                return type;
            }

            public void setType(String type) {
                this.type = type;
            }
        }
    }
}
