package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/7/12.
 */

public class InfoBean {

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

        private String id;
        private String avatar;
        private String is_pro;
        private String nickname;
        private String username;
        private String realname;
        private String profession;
        private String salary;
        private int height;
        private String loveinfo;
        private String constellation;
        private int gender;
        private String city;
        private String city_id;
        private String sign;
        private String video;
        private String video_back;
        private String food_interest;
        private String star_interest;
        private String place_interest;
        private String sports_interest;
        private String character_interest;
        private String cover_pic;
        private String pic_wall;
        private String qa_list;
        private String vip_time;
        private String idcard_ok;
        private String identify_ok;
//        private String identify_info;
        private String age;
        private String update_time;
        private String is_hide;
        private int is_vip;
        private String vip_level;
        private UserDateBean user_date;
        private String user_date_num;
        private UserNewsBean user_news;
        private String user_news_num;
        private UserGiftBean user_gift;
        private String user_gift_num;
        private String idcard_pic;
        private String ali_info;
        private String lng;
        private String lat;
        private String mobile;
        private String coin;
        private String money;
        private String wx_openid;
        private String is_system;
        private String ticket_num;
        private String tags;
        private String birthday;
        private float withdrawing;
        private float income;
        private int cold_money;
        private int relation_status;
        private List<UserItemBean> user_item;
        private boolean is_new;
        private int is_password;
        private String token;
        private String rctoken;
        private int user_item_num;

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

        public int getHeight() {
            return height;
        }

        public void setHeight(int height) {
            this.height = height;
        }

        public String getLoveinfo() {
            return loveinfo;
        }

        public void setLoveinfo(String loveinfo) {
            this.loveinfo = loveinfo;
        }

        public String getConstellation() {
            return constellation;
        }

        public void setConstellation(String constellation) {
            this.constellation = constellation;
        }

        public int getGender() {
            return gender;
        }

        public void setGender(int gender) {
            this.gender = gender;
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

        public String getVideo() {
            return video;
        }

        public void setVideo(String video) {
            this.video = video;
        }

        public String getVideo_back() {
            return video_back;
        }

        public void setVideo_back(String video_back) {
            this.video_back = video_back;
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

        public String getCover_pic() {
            return cover_pic;
        }

        public void setCover_pic(String cover_pic) {
            this.cover_pic = cover_pic;
        }

        public String getPic_wall() {
            return pic_wall;
        }

        public void setPic_wall(String pic_wall) {
            this.pic_wall = pic_wall;
        }

        public String getQa_list() {
            return qa_list;
        }

        public void setQa_list(String qa_list) {
            this.qa_list = qa_list;
        }

        public String getVip_time() {
            return vip_time;
        }

        public void setVip_time(String vip_time) {
            this.vip_time = vip_time;
        }

        public String getIdcard_ok() {
            return idcard_ok;
        }

        public void setIdcard_ok(String idcard_ok) {
            this.idcard_ok = idcard_ok;
        }

        public String getIdentify_ok() {
            return identify_ok;
        }

        public void setIdentify_ok(String identify_ok) {
            this.identify_ok = identify_ok;
        }

//        public String getIdentify_info() {
//            return identify_info;
//        }
//
//        public void setIdentify_info(String identify_info) {
//            this.identify_info = identify_info;
//        }

        public String getAge() {
            return age;
        }

        public void setAge(String age) {
            this.age = age;
        }

        public String getUpdate_time() {
            return update_time;
        }

        public void setUpdate_time(String update_time) {
            this.update_time = update_time;
        }

        public String getIs_hide() {
            return is_hide;
        }

        public void setIs_hide(String is_hide) {
            this.is_hide = is_hide;
        }

        public int getIs_vip() {
            return is_vip;
        }

        public void setIs_vip(int is_vip) {
            this.is_vip = is_vip;
        }

        public String getVip_level() {
            return vip_level;
        }

        public void setVip_level(String vip_level) {
            this.vip_level = vip_level;
        }

        public UserDateBean getUser_date() {
            return user_date;
        }

        public void setUser_date(UserDateBean user_date) {
            this.user_date = user_date;
        }

        public String getUser_date_num() {
            return user_date_num;
        }

        public void setUser_date_num(String user_date_num) {
            this.user_date_num = user_date_num;
        }

        public UserNewsBean getUser_news() {
            return user_news;
        }

        public void setUser_news(UserNewsBean user_news) {
            this.user_news = user_news;
        }

        public String getUser_news_num() {
            return user_news_num;
        }

        public void setUser_news_num(String user_news_num) {
            this.user_news_num = user_news_num;
        }

        public UserGiftBean getUser_gift() {
            return user_gift;
        }

        public void setUser_gift(UserGiftBean user_gift) {
            this.user_gift = user_gift;
        }

        public String getUser_gift_num() {
            return user_gift_num;
        }

        public void setUser_gift_num(String user_gift_num) {
            this.user_gift_num = user_gift_num;
        }

        public String getIdcard_pic() {
            return idcard_pic;
        }

        public void setIdcard_pic(String idcard_pic) {
            this.idcard_pic = idcard_pic;
        }

        public String getAli_info() {
            return ali_info;
        }

        public void setAli_info(String ali_info) {
            this.ali_info = ali_info;
        }

        public String getLng() {
            return lng;
        }

        public void setLng(String lng) {
            this.lng = lng;
        }

        public String getLat() {
            return lat;
        }

        public void setLat(String lat) {
            this.lat = lat;
        }

        public String getMobile() {
            return mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        public String getCoin() {
            return coin;
        }

        public void setCoin(String coin) {
            this.coin = coin;
        }

        public String getMoney() {
            return money;
        }

        public void setMoney(String money) {
            this.money = money;
        }

        public String getWx_openid() {
            return wx_openid;
        }

        public void setWx_openid(String wx_openid) {
            this.wx_openid = wx_openid;
        }

        public String getIs_system() {
            return is_system;
        }

        public void setIs_system(String is_system) {
            this.is_system = is_system;
        }

        public String getTicket_num() {
            return ticket_num;
        }

        public void setTicket_num(String ticket_num) {
            this.ticket_num = ticket_num;
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

        public float getWithdrawing() {
            return withdrawing;
        }

        public void setWithdrawing(float withdrawing) {
            this.withdrawing = withdrawing;
        }

        public float getIncome() {
            return income;
        }

        public void setIncome(float income) {
            this.income = income;
        }

        public int getCold_money() {
            return cold_money;
        }

        public void setCold_money(int cold_money) {
            this.cold_money = cold_money;
        }

        public int getRelation_status() {
            return relation_status;
        }

        public void setRelation_status(int relation_status) {
            this.relation_status = relation_status;
        }

        public List<UserItemBean> getUser_item() {
            return user_item;
        }

        public void setUser_item(List<UserItemBean> user_item) {
            this.user_item = user_item;
        }

        public boolean isIs_new() {
            return is_new;
        }

        public void setIs_new(boolean is_new) {
            this.is_new = is_new;
        }

        public int getIs_password() {
            return is_password;
        }

        public void setIs_password(int is_password) {
            this.is_password = is_password;
        }

        public String getToken() {
            return token;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public String getRctoken() {
            return rctoken;
        }

        public void setRctoken(String rctoken) {
            this.rctoken = rctoken;
        }

        public int getUser_item_num() {
            return user_item_num;
        }

        public void setUser_item_num(int user_item_num) {
            this.user_item_num = user_item_num;
        }

        public static class UserDateBean {

            private String id;
            private String title;
            private String date_tag_id;
            private String gift_tag_name;
            private String intro;
            private String status;
            private String detail;
            private String pay_type;
            private String address;
            private String create_time;
            private String sex;
            private String sex_invite;
            private String cover_pic;
            private String start_time;
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

            public String getStart_time() {
                return start_time;
            }

            public void setStart_time(String start_time) {
                this.start_time = start_time;
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
        }

        public static class UserNewsBean {

            private String id;
            private String status;
            private String address;
            private String lat;
            private String lng;
            private String content;
            private String create_time;
            private UserBean user;
            private String video;
            private String view;
            private String view_type;
            private String share_url;
            private List<String> pics;

            public String getId() {
                return id;
            }

            public void setId(String id) {
                this.id = id;
            }

            public String getStatus() {
                return status;
            }

            public void setStatus(String status) {
                this.status = status;
            }

            public String getAddress() {
                return address;
            }

            public void setAddress(String address) {
                this.address = address;
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

            public String getContent() {
                return content;
            }

            public void setContent(String content) {
                this.content = content;
            }

            public String getCreate_time() {
                return create_time;
            }

            public void setCreate_time(String create_time) {
                this.create_time = create_time;
            }

            public UserBean getUser() {
                return user;
            }

            public void setUser(UserBean user) {
                this.user = user;
            }

            public String getVideo() {
                return video;
            }

            public void setVideo(String video) {
                this.video = video;
            }

            public String getView() {
                return view;
            }

            public void setView(String view) {
                this.view = view;
            }

            public String getView_type() {
                return view_type;
            }

            public void setView_type(String view_type) {
                this.view_type = view_type;
            }

            public String getShare_url() {
                return share_url;
            }

            public void setShare_url(String share_url) {
                this.share_url = share_url;
            }

            public List<String> getPics() {
                return pics;
            }

            public void setPics(List<String> pics) {
                this.pics = pics;
            }

            public static class UserBean {

                private Object id;
                private String avatar;
                private Object nickname;
                private Object age;
                private int gender;
                private Object vip_level;

                public Object getId() {
                    return id;
                }

                public void setId(Object id) {
                    this.id = id;
                }

                public String getAvatar() {
                    return avatar;
                }

                public void setAvatar(String avatar) {
                    this.avatar = avatar;
                }

                public Object getNickname() {
                    return nickname;
                }

                public void setNickname(Object nickname) {
                    this.nickname = nickname;
                }

                public Object getAge() {
                    return age;
                }

                public void setAge(Object age) {
                    this.age = age;
                }

                public int getGender() {
                    return gender;
                }

                public void setGender(int gender) {
                    this.gender = gender;
                }

                public Object getVip_level() {
                    return vip_level;
                }

                public void setVip_level(Object vip_level) {
                    this.vip_level = vip_level;
                }
            }
        }

        public static class UserGiftBean {

            private String id;
            private String title;
            private String area_id;
            private String gift_tag_id;
            private String gift_tag_name;
            private String gift_type;
            private String intro;
            private String fee;
            private String server_time;
            private String server_time_type;
            private String pro_pic;
            private String gift_pic;
            private String gift_video;
            private String is_drink;
            private String status;
            private String server_start_time;
            private String server_end_time;
            private String city_code;
            private String is_repeat;
            private String share_html;
            private String cover_pic;
            private String comment_allnum;
            private String comment_perfectnum;
            private String comment_goodnum;
            private String comment_badnum;
            private String server_count;

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

            public String getArea_id() {
                return area_id;
            }

            public void setArea_id(String area_id) {
                this.area_id = area_id;
            }

            public String getGift_tag_id() {
                return gift_tag_id;
            }

            public void setGift_tag_id(String gift_tag_id) {
                this.gift_tag_id = gift_tag_id;
            }

            public String getGift_tag_name() {
                return gift_tag_name;
            }

            public void setGift_tag_name(String gift_tag_name) {
                this.gift_tag_name = gift_tag_name;
            }

            public String getGift_type() {
                return gift_type;
            }

            public void setGift_type(String gift_type) {
                this.gift_type = gift_type;
            }

            public String getIntro() {
                return intro;
            }

            public void setIntro(String intro) {
                this.intro = intro;
            }

            public String getFee() {
                return fee;
            }

            public void setFee(String fee) {
                this.fee = fee;
            }

            public String getServer_time() {
                return server_time;
            }

            public void setServer_time(String server_time) {
                this.server_time = server_time;
            }

            public String getServer_time_type() {
                return server_time_type;
            }

            public void setServer_time_type(String server_time_type) {
                this.server_time_type = server_time_type;
            }

            public String getPro_pic() {
                return pro_pic;
            }

            public void setPro_pic(String pro_pic) {
                this.pro_pic = pro_pic;
            }

            public String getGift_pic() {
                return gift_pic;
            }

            public void setGift_pic(String gift_pic) {
                this.gift_pic = gift_pic;
            }

            public String getGift_video() {
                return gift_video;
            }

            public void setGift_video(String gift_video) {
                this.gift_video = gift_video;
            }

            public String getIs_drink() {
                return is_drink;
            }

            public void setIs_drink(String is_drink) {
                this.is_drink = is_drink;
            }

            public String getStatus() {
                return status;
            }

            public void setStatus(String status) {
                this.status = status;
            }

            public String getServer_start_time() {
                return server_start_time;
            }

            public void setServer_start_time(String server_start_time) {
                this.server_start_time = server_start_time;
            }

            public String getServer_end_time() {
                return server_end_time;
            }

            public void setServer_end_time(String server_end_time) {
                this.server_end_time = server_end_time;
            }

            public String getCity_code() {
                return city_code;
            }

            public void setCity_code(String city_code) {
                this.city_code = city_code;
            }

            public String getIs_repeat() {
                return is_repeat;
            }

            public void setIs_repeat(String is_repeat) {
                this.is_repeat = is_repeat;
            }

            public String getShare_html() {
                return share_html;
            }

            public void setShare_html(String share_html) {
                this.share_html = share_html;
            }

            public String getCover_pic() {
                return cover_pic;
            }

            public void setCover_pic(String cover_pic) {
                this.cover_pic = cover_pic;
            }

            public String getComment_allnum() {
                return comment_allnum;
            }

            public void setComment_allnum(String comment_allnum) {
                this.comment_allnum = comment_allnum;
            }

            public String getComment_perfectnum() {
                return comment_perfectnum;
            }

            public void setComment_perfectnum(String comment_perfectnum) {
                this.comment_perfectnum = comment_perfectnum;
            }

            public String getComment_goodnum() {
                return comment_goodnum;
            }

            public void setComment_goodnum(String comment_goodnum) {
                this.comment_goodnum = comment_goodnum;
            }

            public String getComment_badnum() {
                return comment_badnum;
            }

            public void setComment_badnum(String comment_badnum) {
                this.comment_badnum = comment_badnum;
            }

            public String getServer_count() {
                return server_count;
            }

            public void setServer_count(String server_count) {
                this.server_count = server_count;
            }
        }

        public static class UserItemBean {
            private String num;
            private ItemBean item;

            public String getNum() {
                return num;
            }

            public void setNum(String num) {
                this.num = num;
            }

            public ItemBean getItem() {
                return item;
            }

            public void setItem(ItemBean item) {
                this.item = item;
            }

            public static class ItemBean {

                private String id;
                private String name;
                private String pic;
                private String price;
                private String charm;

                public String getId() {
                    return id;
                }

                public void setId(String id) {
                    this.id = id;
                }

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getPic() {
                    return pic;
                }

                public void setPic(String pic) {
                    this.pic = pic;
                }

                public String getPrice() {
                    return price;
                }

                public void setPrice(String price) {
                    this.price = price;
                }

                public String getCharm() {
                    return charm;
                }

                public void setCharm(String charm) {
                    this.charm = charm;
                }
            }
        }
    }
}
