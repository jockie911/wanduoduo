package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/8/4.
 */
public class CitySelectBean {
    private int errCode;
    private String errMsg;
    private String requestTime;
    private List<DataBean> data;

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

    public List<DataBean> getData() {
        return data;
    }

    public void setData(List<DataBean> data) {
        this.data = data;
    }

    public static class DataBean {
        private String id;
        private String code;
        private String city_name;
        private String parent_code;
        private String abbreviation;
        private String hot;
        private String pinyin;

        private List<SonBean> son;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public String getCity_name() {
            return city_name;
        }

        public void setCity_name(String city_name) {
            this.city_name = city_name;
        }

        public String getParent_code() {
            return parent_code;
        }

        public void setParent_code(String parent_code) {
            this.parent_code = parent_code;
        }

        public String getAbbreviation() {
            return abbreviation;
        }

        public void setAbbreviation(String abbreviation) {
            this.abbreviation = abbreviation;
        }

        public String getHot() {
            return hot;
        }

        public void setHot(String hot) {
            this.hot = hot;
        }

        public String getPinyin() {
            return pinyin;
        }

        public void setPinyin(String pinyin) {
            this.pinyin = pinyin;
        }

        public List<SonBean> getSon() {
            return son;
        }

        public void setSon(List<SonBean> son) {
            this.son = son;
        }

        public static class SonBean {
            private String id;
            private String code;
            private String city_name;
            private String parent_code;
            private String abbreviation;
            private String hot;
            private String pinyin;

            private List<GrandSonBean> son;

            public String getId() {
                return id;
            }

            public void setId(String id) {
                this.id = id;
            }

            public String getCode() {
                return code;
            }

            public void setCode(String code) {
                this.code = code;
            }

            public String getCity_name() {
                return city_name;
            }

            public void setCity_name(String city_name) {
                this.city_name = city_name;
            }

            public String getParent_code() {
                return parent_code;
            }

            public void setParent_code(String parent_code) {
                this.parent_code = parent_code;
            }

            public String getAbbreviation() {
                return abbreviation;
            }

            public void setAbbreviation(String abbreviation) {
                this.abbreviation = abbreviation;
            }

            public String getHot() {
                return hot;
            }

            public void setHot(String hot) {
                this.hot = hot;
            }

            public String getPinyin() {
                return pinyin;
            }

            public void setPinyin(String pinyin) {
                this.pinyin = pinyin;
            }

            public List<GrandSonBean> getGrandSon() {
                return son;
            }

            public void setGrandSon(List<GrandSonBean> son) {
                this.son = son;
            }

            public static class GrandSonBean {
                private String id;
                private String code;
                private String city_name;
                private String parent_code;
                private String abbreviation;
                private String hot;
                private String pinyin;

                public String getId() {
                    return id;
                }

                public void setId(String id) {
                    this.id = id;
                }

                public String getCode() {
                    return code;
                }

                public void setCode(String code) {
                    this.code = code;
                }

                public String getCity_name() {
                    return city_name;
                }

                public void setCity_name(String city_name) {
                    this.city_name = city_name;
                }

                public String getParent_code() {
                    return parent_code;
                }

                public void setParent_code(String parent_code) {
                    this.parent_code = parent_code;
                }

                public String getAbbreviation() {
                    return abbreviation;
                }

                public void setAbbreviation(String abbreviation) {
                    this.abbreviation = abbreviation;
                }

                public String getHot() {
                    return hot;
                }

                public void setHot(String hot) {
                    this.hot = hot;
                }

                public String getPinyin() {
                    return pinyin;
                }

                public void setPinyin(String pinyin) {
                    this.pinyin = pinyin;
                }
            }
        }
    }
}
