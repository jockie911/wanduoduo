.class public Lio/rong/imkit/RongUserCacheListener;
.super Ljava/lang/Object;
.source "RongUserCacheListener.java"

# interfaces
.implements Lio/rong/imkit/userInfoCache/IRongCacheListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 1
    .parameter "id"

    .prologue
    .line 64
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/RongIM$GroupInfoProvider;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 1
    .parameter "group"
    .parameter "id"

    .prologue
    .line 56
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/rong/imkit/RongIM$GroupUserInfoProvider;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 1
    .parameter "id"

    .prologue
    .line 48
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/RongIM$UserInfoProvider;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDiscussionUpdated(Lio/rong/imlib/model/Discussion;)V
    .locals 1
    .parameter "discussion"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onGroupUpdated(Lio/rong/imlib/model/Group;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onGroupUserInfoUpdated(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method

.method public onPublicServiceProfileUpdated(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onUserInfoUpdated(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method
