package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/7/20.
 */
public class IndexTagListBean {

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
        private List<DataListBean> data_list;
        private List<HotListBean> hot_list;

        public List<DataListBean> getData_list() {
            return data_list;
        }

        public void setData_list(List<DataListBean> data_list) {
            this.data_list = data_list;
        }

        public List<HotListBean> getHot_list() {
            return hot_list;
        }

        public void setHot_list(List<HotListBean> hot_list) {
            this.hot_list = hot_list;
        }

        public static class DataListBean {
            private String category_id;
            private String category_name;
            private String category_image;
            private String category_image_b;
            private String category_image_c;
            private List<DataListChildBean> data_list_child;

            public String getCategory_id() {
                return category_id;
            }

            public void setCategory_id(String category_id) {
                this.category_id = category_id;
            }

            public String getCategory_name() {
                return category_name;
            }

            public void setCategory_name(String category_name) {
                this.category_name = category_name;
            }

            public String getCategory_image() {
                return category_image;
            }

            public void setCategory_image(String category_image) {
                this.category_image = category_image;
            }

            public String getCategory_image_b() {
                return category_image_b;
            }

            public void setCategory_image_b(String category_image_b) {
                this.category_image_b = category_image_b;
            }

            public String getCategory_image_c() {
                return category_image_c;
            }

            public void setCategory_image_c(String category_image_c) {
                this.category_image_c = category_image_c;
            }

            public List<DataListChildBean> getData_list_child() {
                return data_list_child;
            }

            public void setData_list_child(List<DataListChildBean> data_list_child) {
                this.data_list_child = data_list_child;
            }

            public static class DataListChildBean {

                private String tag_id;
                private String tag_name;
                private String tag_type;

                public String getTag_id() {
                    return tag_id;
                }

                public void setTag_id(String tag_id) {
                    this.tag_id = tag_id;
                }

                public String getTag_name() {
                    return tag_name;
                }

                public void setTag_name(String tag_name) {
                    this.tag_name = tag_name;
                }

                public String getTag_type() {
                    return tag_type;
                }

                public void setTag_type(String tag_type) {
                    this.tag_type = tag_type;
                }
            }
        }

        public static class HotListBean {

            private String category_id;
            private String category_name;
            private String category_image;
            private String category_image_c;

            public String getCategory_id() {
                return category_id;
            }

            public void setCategory_id(String category_id) {
                this.category_id = category_id;
            }

            public String getCategory_name() {
                return category_name;
            }

            public void setCategory_name(String category_name) {
                this.category_name = category_name;
            }

            public String getCategory_image() {
                return category_image;
            }

            public void setCategory_image(String category_image) {
                this.category_image = category_image;
            }

            public String getCategory_image_c() {
                return category_image_c;
            }

            public void setCategory_image_c(String category_image_c) {
                this.category_image_c = category_image_c;
            }
        }
    }
}
