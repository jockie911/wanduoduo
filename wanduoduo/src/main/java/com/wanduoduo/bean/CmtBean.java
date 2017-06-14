package com.wanduoduo.bean;

/**
 * Created by jockie on 2016/11/1.
 */
public class CmtBean {

    private CommentTargetBean comment_target;

    private CommentUserBean comment_user;

    private String comment_content;
    private String comment_create_time;
    private String comment_id;
    private int comment_type;

    public CommentTargetBean getComment_target() {
        return comment_target;
    }

    public void setComment_target(CommentTargetBean comment_target) {
        this.comment_target = comment_target;
    }

    public CommentUserBean getComment_user() {
        return comment_user;
    }

    public void setComment_user(CommentUserBean comment_user) {
        this.comment_user = comment_user;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public String getComment_create_time() {
        return comment_create_time;
    }

    public void setComment_create_time(String comment_create_time) {
        this.comment_create_time = comment_create_time;
    }

    public String getComment_id() {
        return comment_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public int getComment_type() {
        return comment_type;
    }

    public void setComment_type(int comment_type) {
        this.comment_type = comment_type;
    }

    public static class CommentTargetBean {
        private String id;
        private String title;
        private String head_image;
        private String user_name;

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

        public String getHead_image() {
            return head_image;
        }

        public void setHead_image(String head_image) {
            this.head_image = head_image;
        }

        public String getUser_name() {
            return user_name;
        }

        public void setUser_name(String user_name) {
            this.user_name = user_name;
        }
    }

    public static class CommentUserBean {
        private String id;
        private String avatar;
        private String is_pro;
        private String nickname;
        private String realname;
        private int gender;
        private String mobile;
        private String city;
        private String city_id;
        private String sign;
        private String tags;
        private String birthday;
        private String is_system;

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

        public String getRealname() {
            return realname;
        }

        public void setRealname(String realname) {
            this.realname = realname;
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

        public String getIs_system() {
            return is_system;
        }

        public void setIs_system(String is_system) {
            this.is_system = is_system;
        }
    }
}
