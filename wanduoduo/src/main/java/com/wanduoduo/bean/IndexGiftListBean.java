package com.wanduoduo.bean;

import android.os.Parcel;
import android.os.Parcelable;

import java.util.List;

/**
 * Created by jockie on 2016/8/12.
 */
public class IndexGiftListBean {


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

        public static class DataListBean implements Parcelable {
            private String id;
            private String title;
            private String area_id;
            private String gift_tag_id;
            private String intro;
            private String fee;
            private String gift_type;
            private String server_time;
            private String server_time_type;
            private String pro_pic;
            private String gift_pic;
            private String gift_video;
            private String is_drink;
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

            public String getGift_type() {
                return gift_type;
            }

            public void setGift_type(String gift_type) {
                this.gift_type = gift_type;
            }

            public static class OrganizerBean implements Parcelable {
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
                private int height;
                private String loveinfo;
                private String constellation;
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
                private String cover_pic;
                private String pic_wall;
                private String qa_list;
                private String ticket_num;
                private String vip_time;
                private String idcard_ok;
                private int is_vip;
                private String age;

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

                public String getTicket_num() {
                    return ticket_num;
                }

                public void setTicket_num(String ticket_num) {
                    this.ticket_num = ticket_num;
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

                public int getIs_vip() {
                    return is_vip;
                }

                public void setIs_vip(int is_vip) {
                    this.is_vip = is_vip;
                }

                public OrganizerBean() {
                }

                public String getAge() {
                    return age;
                }

                public void setAge(String age) {
                    this.age = age;
                }

                @Override
                public int describeContents() {
                    return 0;
                }

                @Override
                public void writeToParcel(Parcel dest, int flags) {
                    dest.writeString(this.id);
                    dest.writeString(this.avatar);
                    dest.writeString(this.money);
                    dest.writeString(this.coin);
                    dest.writeString(this.is_pro);
                    dest.writeString(this.nickname);
                    dest.writeString(this.username);
                    dest.writeString(this.wx_openid);
                    dest.writeString(this.realname);
                    dest.writeString(this.profession);
                    dest.writeString(this.salary);
                    dest.writeInt(this.height);
                    dest.writeString(this.loveinfo);
                    dest.writeString(this.constellation);
                    dest.writeInt(this.gender);
                    dest.writeString(this.mobile);
                    dest.writeString(this.city);
                    dest.writeString(this.city_id);
                    dest.writeString(this.sign);
                    dest.writeString(this.tags);
                    dest.writeString(this.birthday);
                    dest.writeString(this.video);
                    dest.writeString(this.is_system);
                    dest.writeString(this.food_interest);
                    dest.writeString(this.star_interest);
                    dest.writeString(this.place_interest);
                    dest.writeString(this.sports_interest);
                    dest.writeString(this.character_interest);
                    dest.writeString(this.cover_pic);
                    dest.writeString(this.pic_wall);
                    dest.writeString(this.qa_list);
                    dest.writeString(this.ticket_num);
                    dest.writeString(this.vip_time);
                    dest.writeString(this.idcard_ok);
                    dest.writeInt(this.is_vip);
                    dest.writeString(this.age);
                }

                protected OrganizerBean(Parcel in) {
                    this.id = in.readString();
                    this.avatar = in.readString();
                    this.money = in.readString();
                    this.coin = in.readString();
                    this.is_pro = in.readString();
                    this.nickname = in.readString();
                    this.username = in.readString();
                    this.wx_openid = in.readString();
                    this.realname = in.readString();
                    this.profession = in.readString();
                    this.salary = in.readString();
                    this.height = in.readInt();
                    this.loveinfo = in.readString();
                    this.constellation = in.readString();
                    this.gender = in.readInt();
                    this.mobile = in.readString();
                    this.city = in.readString();
                    this.city_id = in.readString();
                    this.sign = in.readString();
                    this.tags = in.readString();
                    this.birthday = in.readString();
                    this.video = in.readString();
                    this.is_system = in.readString();
                    this.food_interest = in.readString();
                    this.star_interest = in.readString();
                    this.place_interest = in.readString();
                    this.sports_interest = in.readString();
                    this.character_interest = in.readString();
                    this.cover_pic = in.readString();
                    this.pic_wall = in.readString();
                    this.qa_list = in.readString();
                    this.ticket_num = in.readString();
                    this.vip_time = in.readString();
                    this.idcard_ok = in.readString();
                    this.is_vip = in.readInt();
                    this.age = in.readString();
                }

                public static final Creator<OrganizerBean> CREATOR = new Creator<OrganizerBean>() {
                    @Override
                    public OrganizerBean createFromParcel(Parcel source) {
                        return new OrganizerBean(source);
                    }

                    @Override
                    public OrganizerBean[] newArray(int size) {
                        return new OrganizerBean[size];
                    }
                };
            }

            public DataListBean() {
            }

            @Override
            public int describeContents() {
                return 0;
            }

            @Override
            public void writeToParcel(Parcel dest, int flags) {
                dest.writeString(this.id);
                dest.writeString(this.title);
                dest.writeString(this.area_id);
                dest.writeString(this.gift_tag_id);
                dest.writeString(this.intro);
                dest.writeString(this.fee);
                dest.writeString(this.gift_type);
                dest.writeString(this.server_time);
                dest.writeString(this.server_time_type);
                dest.writeString(this.pro_pic);
                dest.writeString(this.gift_pic);
                dest.writeString(this.gift_video);
                dest.writeString(this.is_drink);
                dest.writeString(this.cover_pic);
                dest.writeString(this.comment_allnum);
                dest.writeString(this.comment_perfectnum);
                dest.writeString(this.comment_goodnum);
                dest.writeString(this.comment_badnum);
                dest.writeString(this.server_count);
                dest.writeParcelable(this.organizer, flags);
            }

            protected DataListBean(Parcel in) {
                this.id = in.readString();
                this.title = in.readString();
                this.area_id = in.readString();
                this.gift_tag_id = in.readString();
                this.intro = in.readString();
                this.fee = in.readString();
                this.gift_type = in.readString();
                this.server_time = in.readString();
                this.server_time_type = in.readString();
                this.pro_pic = in.readString();
                this.gift_pic = in.readString();
                this.gift_video = in.readString();
                this.is_drink = in.readString();
                this.cover_pic = in.readString();
                this.comment_allnum = in.readString();
                this.comment_perfectnum = in.readString();
                this.comment_goodnum = in.readString();
                this.comment_badnum = in.readString();
                this.server_count = in.readString();
                this.organizer = in.readParcelable(OrganizerBean.class.getClassLoader());
            }

            public static final Creator<DataListBean> CREATOR = new Creator<DataListBean>() {
                @Override
                public DataListBean createFromParcel(Parcel source) {
                    return new DataListBean(source);
                }

                @Override
                public DataListBean[] newArray(int size) {
                    return new DataListBean[size];
                }
            };
        }
    }
}
