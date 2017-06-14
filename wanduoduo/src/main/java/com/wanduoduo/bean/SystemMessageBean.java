package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/9/9.
 */
public class SystemMessageBean {

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
        private int current_page;
        private int total_page;
        private List<DataListBean> data_list;

        public int getCurrent_page() {
            return current_page;
        }

        public void setCurrent_page(int current_page) {
            this.current_page = current_page;
        }

        public int getTotal_page() {
            return total_page;
        }

        public void setTotal_page(int total_page) {
            this.total_page = total_page;
        }

        public List<DataListBean> getData_list() {
            return data_list;
        }

        public void setData_list(List<DataListBean> data_list) {
            this.data_list = data_list;
        }

        public static class DataListBean {
            private String system_content;
            private String system_create_time;
            private int system_type;
            private String system_order_id;
            private SystemFans system_fans;

            public String getSystem_content() {
                return system_content;
            }

            public void setSystem_content(String system_content) {
                this.system_content = system_content;
            }

            public String getSystem_create_time() {
                return system_create_time;
            }

            public void setSystem_create_time(String system_create_time) {
                this.system_create_time = system_create_time;
            }

            public int getSystem_type() {
                return system_type;
            }

            public void setSystem_type(int system_type) {
                this.system_type = system_type;
            }

            public String getSystem_order_id() {
                return system_order_id;
            }

            public void setSystem_order_id(String system_order_id) {
                this.system_order_id = system_order_id;
            }

            public SystemFans getSystemFans() {
                return system_fans;
            }

            public void setSystemFans(SystemFans systemFans) {
                this.system_fans = system_fans;
            }

            public static class SystemFans {
                private String id;

                public String getId() {
                    return id;
                }

                public void setId(String id) {
                    this.id = id;
                }
            }
        }
    }
}
