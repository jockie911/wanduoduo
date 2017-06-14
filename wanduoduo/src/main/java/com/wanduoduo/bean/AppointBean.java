package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/10/17.
 */
public class AppointBean {

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
            private String id;
            private String title;
            private String date_tag_id;
            private String gift_tag_name;
            private String intro;
            private String status;
            private String detail;
            private String pay_type;
            private String lat;
            private String lng;
            private String address;
            private String create_time;
            private String sex;
            private String sex_invite;
            private String cover_pic;
            private String start_time;

            private OrganizerBean organizer;
            private List<String> date_pic;
            private List<String> sign;

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

            public String getDate_tag_id() {
                return date_tag_id;
            }

            public void setDate_tag_id(String date_tag_id) {
                this.date_tag_id = date_tag_id;
            }

            public String getGift_tag_name() {
                return gift_tag_name;
            }

            public void setGift_tag_name(String gift_tag_name) {
                this.gift_tag_name = gift_tag_name;
            }

            public String getIntro() {
                return intro;
            }

            public void setIntro(String intro) {
                this.intro = intro;
            }

            public String getStatus() {
                return status;
            }

            public void setStatus(String status) {
                this.status = status;
            }

            public String getDetail() {
                return detail;
            }

            public void setDetail(String detail) {
                this.detail = detail;
            }

            public String getPay_type() {
                return pay_type;
            }

            public void setPay_type(String pay_type) {
                this.pay_type = pay_type;
            }

            public String getLat() {
                return lat;
            }

            public void setLat(String lat) {
                this.lat = lat;
            }

            public String getLng() {
                return lng;
            }

            public void setLng(String lng) {
                this.lng = lng;
            }

            public String getAddress() {
                return address;
            }

            public void setAddress(String address) {
                this.address = address;
            }

            public String getCreate_time() {
                return create_time;
            }

            public void setCreate_time(String create_time) {
                this.create_time = create_time;
            }

            public String getSex() {
                return sex;
            }

            public void setSex(String sex) {
                this.sex = sex;
            }

            public String getSex_invite() {
                return sex_invite;
            }

            public void setSex_invite(String sex_invite) {
                this.sex_invite = sex_invite;
            }

            public String getCover_pic() {
                return cover_pic;
            }

            public void setCover_pic(String cover_pic) {
                this.cover_pic = cover_pic;
            }

            public OrganizerBean getOrganizer() {
                return organizer;
            }

            public void setOrganizer(OrganizerBean organizer) {
                this.organizer = organizer;
            }

            public List<String> getDate_pic() {
                return date_pic;
            }

            public void setDate_pic(List<String> date_pic) {
                this.date_pic = date_pic;
            }

            public List<String> getSign() {
                return sign;
            }

            public void setSign(List<String> sign) {
                this.sign = sign;
            }

            public String getStart_time() {
                return start_time;
            }

            public void setStart_time(String start_time) {
                this.start_time = start_time;
            }

            public static class OrganizerBean {
                private String id;
                private String avatar;
                private String nickname;
                private int gender;
                private String age;
                private String vip_level;

                public String getId() {
                    return id;
                }

                public void setId(String id) {
                    this.id = id;
                }

                public String getAvatar() {
                    return avatar;
                }

                public void setAvatar(String avatar) {
                    this.avatar = avatar;
                }

                public String getNickname() {
                    return nickname;
                }

                public void setNickname(String nickname) {
                    this.nickname = nickname;
                }

                public int getGender() {
                    return gender;
                }

                public void setGender(int gender) {
                    this.gender = gender;
                }

                public String getAge() {
                    return age;
                }

                public void setAge(String age) {
                    this.age = age;
                }

                public String getVip_level() {
                    return vip_level;
                }

                public void setVip_level(String vip_level) {
                    this.vip_level = vip_level;
                }
            }
        }
    }
}
