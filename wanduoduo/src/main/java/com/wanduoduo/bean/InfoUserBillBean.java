package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/9/2.
 */
public class InfoUserBillBean {

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
            private String order_total_fee;
            private String order_create_time;
            private String order_id;
            private String order_number;
            private String order_is_pay;
            private String order_status;
            private String order_type;

            public String getOrder_total_fee() {
                return order_total_fee;
            }

            public void setOrder_total_fee(String order_total_fee) {
                this.order_total_fee = order_total_fee;
            }

            public String getOrder_create_time() {
                return order_create_time;
            }

            public void setOrder_create_time(String order_create_time) {
                this.order_create_time = order_create_time;
            }

            public String getOrder_id() {
                return order_id;
            }

            public void setOrder_id(String order_id) {
                this.order_id = order_id;
            }

            public String getOrder_number() {
                return order_number;
            }

            public void setOrder_number(String order_number) {
                this.order_number = order_number;
            }

            public String getOrder_is_pay() {
                return order_is_pay;
            }

            public void setOrder_is_pay(String order_is_pay) {
                this.order_is_pay = order_is_pay;
            }

            public String getOrder_status() {
                return order_status;
            }

            public void setOrder_status(String order_status) {
                this.order_status = order_status;
            }

            public String getOrder_type() {
                return order_type;
            }

            public void setOrder_type(String order_type) {
                this.order_type = order_type;
            }
        }
    }
}
