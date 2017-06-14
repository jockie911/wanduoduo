package com.wanduoduo.bean;

import java.util.List;

/**
 * Created by jockie on 2016/8/15.
 */
public class InfoBuyServiceBean {

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
        private String order_type_1;
        private String order_type_2;
        private String order_type_3;
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

        public String getOrder_type_1() {
            return order_type_1;
        }

        public void setOrder_type_1(String order_type_1) {
            this.order_type_1 = order_type_1;
        }

        public String getOrder_type_2() {
            return order_type_2;
        }

        public void setOrder_type_2(String order_type_2) {
            this.order_type_2 = order_type_2;
        }

        public String getOrder_type_3() {
            return order_type_3;
        }

        public void setOrder_type_3(String order_type_3) {
            this.order_type_3 = order_type_3;
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
            private String order_share_page;
            private String order_server_time;
            private String order_ticket_id;
            private TicketBean ticket;
            private String apply_id;
            private String order_id;
            private String order_number;
            private String order_start_time;
            private String order_end_time;
            private String order_ispay;
            private GiftBean gift;
            private OrderUserBean order_user;
            private String order_address;
            private String order_status;

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

            public String getOrder_share_page() {
                return order_share_page;
            }

            public void setOrder_share_page(String order_share_page) {
                this.order_share_page = order_share_page;
            }

            public String getOrder_server_time() {
                return order_server_time;
            }

            public void setOrder_server_time(String order_server_time) {
                this.order_server_time = order_server_time;
            }

            public String getOrder_ticket_id() {
                return order_ticket_id;
            }

            public void setOrder_ticket_id(String order_ticket_id) {
                this.order_ticket_id = order_ticket_id;
            }

            public TicketBean getTicket() {
                return ticket;
            }

            public void setTicket(TicketBean ticket) {
                this.ticket = ticket;
            }

            public String getApply_id() {
                return apply_id;
            }

            public void setApply_id(String apply_id) {
                this.apply_id = apply_id;
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

            public String getOrder_start_time() {
                return order_start_time;
            }

            public void setOrder_start_time(String order_start_time) {
                this.order_start_time = order_start_time;
            }

            public String getOrder_end_time() {
                return order_end_time;
            }

            public void setOrder_end_time(String order_end_time) {
                this.order_end_time = order_end_time;
            }

            public String getOrder_ispay() {
                return order_ispay;
            }

            public void setOrder_ispay(String order_ispay) {
                this.order_ispay = order_ispay;
            }

            public GiftBean getGift() {
                return gift;
            }

            public void setGift(GiftBean gift) {
                this.gift = gift;
            }

            public OrderUserBean getOrder_user() {
                return order_user;
            }

            public void setOrder_user(OrderUserBean order_user) {
                this.order_user = order_user;
            }

            public String getOrder_address() {
                return order_address;
            }

            public void setOrder_address(String order_address) {
                this.order_address = order_address;
            }

            public String getOrder_status() {
                return order_status;
            }

            public void setOrder_status(String order_status) {
                this.order_status = order_status;
            }

            public static class TicketBean {

                private Object id;
                private Object user_id;
                private Object code;
                private Object gift_tag_id;
                private Object tag_name;
                private Object price;
                private Object order_price;
                private Object is_used;
                private Object create_time;
                private Object outdate_time;

                public Object getId() {
                    return id;
                }

                public void setId(Object id) {
                    this.id = id;
                }

                public Object getUser_id() {
                    return user_id;
                }

                public void setUser_id(Object user_id) {
                    this.user_id = user_id;
                }

                public Object getCode() {
                    return code;
                }

                public void setCode(Object code) {
                    this.code = code;
                }

                public Object getGift_tag_id() {
                    return gift_tag_id;
                }

                public void setGift_tag_id(Object gift_tag_id) {
                    this.gift_tag_id = gift_tag_id;
                }

                public Object getTag_name() {
                    return tag_name;
                }

                public void setTag_name(Object tag_name) {
                    this.tag_name = tag_name;
                }

                public Object getPrice() {
                    return price;
                }

                public void setPrice(Object price) {
                    this.price = price;
                }

                public Object getOrder_price() {
                    return order_price;
                }

                public void setOrder_price(Object order_price) {
                    this.order_price = order_price;
                }

                public Object getIs_used() {
                    return is_used;
                }

                public void setIs_used(Object is_used) {
                    this.is_used = is_used;
                }

                public Object getCreate_time() {
                    return create_time;
                }

                public void setCreate_time(Object create_time) {
                    this.create_time = create_time;
                }

                public Object getOutdate_time() {
                    return outdate_time;
                }

                public void setOutdate_time(Object outdate_time) {
                    this.outdate_time = outdate_time;
                }
            }

            public static class GiftBean {

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
                private OrganizerBean organizer;

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

                public OrganizerBean getOrganizer() {
                    return organizer;
                }

                public void setOrganizer(OrganizerBean organizer) {
                    this.organizer = organizer;
                }

                public static class OrganizerBean {
                    /**
                     * id : 426
                     * avatar : https://image.wanduoduo.cc/uploads/201612/1ffa25c84d4dc18e93991a63df8bbc26size=750x750.jpg
                     * gender : 1
                     * nickname : Android小丸子
                     * age : 20
                     * video :
                     * mobile : 18655388161
                     * username : 18655388161
                     * is_vip : 1
                     * vip_level : 1
                     */

                    private String id;
                    private String avatar;
                    private int gender;
                    private String nickname;
                    private String age;
                    private String video;
                    private String mobile;
                    private String username;
                    private int is_vip;
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

                    public int getGender() {
                        return gender;
                    }

                    public void setGender(int gender) {
                        this.gender = gender;
                    }

                    public String getNickname() {
                        return nickname;
                    }

                    public void setNickname(String nickname) {
                        this.nickname = nickname;
                    }

                    public String getAge() {
                        return age;
                    }

                    public void setAge(String age) {
                        this.age = age;
                    }

                    public String getVideo() {
                        return video;
                    }

                    public void setVideo(String video) {
                        this.video = video;
                    }

                    public String getMobile() {
                        return mobile;
                    }

                    public void setMobile(String mobile) {
                        this.mobile = mobile;
                    }

                    public String getUsername() {
                        return username;
                    }

                    public void setUsername(String username) {
                        this.username = username;
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
                }
            }

            public static class OrderUserBean {

                private String id;
                private String avatar;
                private int gender;
                private String nickname;
                private String age;
                private String video;
                private String mobile;
                private String username;
                private int is_vip;
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

                public int getGender() {
                    return gender;
                }

                public void setGender(int gender) {
                    this.gender = gender;
                }

                public String getNickname() {
                    return nickname;
                }

                public void setNickname(String nickname) {
                    this.nickname = nickname;
                }

                public String getAge() {
                    return age;
                }

                public void setAge(String age) {
                    this.age = age;
                }

                public String getVideo() {
                    return video;
                }

                public void setVideo(String video) {
                    this.video = video;
                }

                public String getMobile() {
                    return mobile;
                }

                public void setMobile(String mobile) {
                    this.mobile = mobile;
                }

                public String getUsername() {
                    return username;
                }

                public void setUsername(String username) {
                    this.username = username;
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
            }
        }
    }
}
