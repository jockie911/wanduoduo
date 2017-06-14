package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/8/19.
 */
public class InfoWatchBean {

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
            private String avatar;
            private String money;
            private String coin;
            private String is_pro;
            private String nickname;
            private String username;
            private String wx_openid;
            private String realname;
            private String profession;
            private String salary;
            private String height;
            private String weight;
            private String loveinfo;
            private int gender;
            private String mobile;
            private String city;
            private String city_id;
            private String sign;
            private String tags;
            private String birthday;
            private String video;
            private String is_system;
            private String food_interest;
            private String star_interest;
            private String place_interest;
            private String sports_interest;
            private String character_interest;
            private String pic_wall;
            private String visit_time;
            private String age;
            private int vip_level;

            public String getAge(){
                return age;
            }

            public void setAge(String age){
                this.age = age;
            }

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

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCoin() {
                return coin;
            }

            public void setCoin(String coin) {
                this.coin = coin;
            }

            public String getIs_pro() {
                return is_pro;
            }

            public void setIs_pro(String is_pro) {
                this.is_pro = is_pro;
            }

            public String getNickname() {
                return nickname;
            }

            public void setNickname(String nickname) {
                this.nickname = nickname;
            }

            public String getUsername() {
                return username;
            }

            public void setUsername(String username) {
                this.username = username;
            }

            public String getWx_openid() {
                return wx_openid;
            }

            public void setWx_openid(String wx_openid) {
                this.wx_openid = wx_openid;
            }

            public String getRealname() {
                return realname;
            }

            public void setRealname(String realname) {
                this.realname = realname;
            }

            public String getProfession() {
                return profession;
            }

            public void setProfession(String profession) {
                this.profession = profession;
            }

            public String getSalary() {
                return salary;
            }

            public void setSalary(String salary) {
                this.salary = salary;
            }

            public String getHeight() {
                return height;
            }

            public void setHeight(String height) {
                this.height = height;
            }

            public String getWeight() {
                return weight;
            }

            public void setWeight(String weight) {
                this.weight = weight;
            }

            public String getLoveinfo() {
                return loveinfo;
            }

            public void setLoveinfo(String loveinfo) {
                this.loveinfo = loveinfo;
            }

            public int getGender() {
                return gender;
            }

            public void setGender(int gender) {
                this.gender = gender;
            }

            public String getMobile() {
                return mobile;
            }

            public void setMobile(String mobile) {
                this.mobile = mobile;
            }

            public String getCity() {
                return city;
            }

            public void setCity(String city) {
                this.city = city;
            }

            public String getCity_id() {
                return city_id;
            }

            public void setCity_id(String city_id) {
                this.city_id = city_id;
            }

            public String getSign() {
                return sign;
            }

            public void setSign(String sign) {
                this.sign = sign;
            }

            public String getTags() {
                return tags;
            }

            public void setTags(String tags) {
                this.tags = tags;
            }

            public String getBirthday() {
                return birthday;
            }

            public void setBirthday(String birthday) {
                this.birthday = birthday;
            }

            public String getVideo() {
                return video;
            }

            public void setVideo(String video) {
                this.video = video;
            }

            public String getIs_system() {
                return is_system;
            }

            public void setIs_system(String is_system) {
                this.is_system = is_system;
            }

            public String getFood_interest() {
                return food_interest;
            }

            public void setFood_interest(String food_interest) {
                this.food_interest = food_interest;
            }

            public String getStar_interest() {
                return star_interest;
            }

            public void setStar_interest(String star_interest) {
                this.star_interest = star_interest;
            }

            public String getPlace_interest() {
                return place_interest;
            }

            public void setPlace_interest(String place_interest) {
                this.place_interest = place_interest;
            }

            public String getSports_interest() {
                return sports_interest;
            }

            public void setSports_interest(String sports_interest) {
                this.sports_interest = sports_interest;
            }

            public String getCharacter_interest() {
                return character_interest;
            }

            public void setCharacter_interest(String character_interest) {
                this.character_interest = character_interest;
            }

            public String getPic_wall() {
                return pic_wall;
            }

            public void setPic_wall(String pic_wall) {
                this.pic_wall = pic_wall;
            }

            public String getVisit_time() {
                return visit_time;
            }

            public void setVisit_time(String visit_time) {
                this.visit_time = visit_time;
            }

            public int getVip_level() {
                return vip_level;
            }

            public void setVip_level(int vip_level) {
                this.vip_level = vip_level;
            }
        }
    }
}
