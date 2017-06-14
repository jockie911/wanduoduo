.class Lio/rong/imkit/mention/MemberMentionedActivity$2;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MemberMentionedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/mention/MemberMentionedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/mention/MemberMentionedActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 127
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Discussion;)V
    .locals 9
    .parameter "discussion"

    .prologue
    .line 100
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, memeberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, id:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v6

    .line 103
    .local v6, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    new-instance v2, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {v2, v7, v6}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;Lio/rong/imlib/model/UserInfo;)V

    .line 106
    .local v2, memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    invoke-static {}, Lio/rong/imkit/tools/CharacterParser;->getInstance()Lio/rong/imkit/tools/CharacterParser;

    move-result-object v7

    invoke-virtual {v6}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/tools/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, pinyin:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, sortString:Ljava/lang/String;
    const-string v7, "[A-Z]"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->setLetter(Ljava/lang/String;)V

    .line 115
    :goto_1
    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v7}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    const-string v7, "#"

    invoke-virtual {v2, v7}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->setLetter(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #memberInfo:Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    .end local v4           #pinyin:Ljava/lang/String;
    .end local v5           #sortString:Ljava/lang/String;
    .end local v6           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_2
    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v7}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;->getInstance()Lio/rong/imkit/mention/MemberMentionedActivity$PinyinComparator;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v7}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v7

    iget-object v8, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAllMemberList:Ljava/util/List;
    invoke-static {v8}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$100(Lio/rong/imkit/mention/MemberMentionedActivity;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->setData(Ljava/util/List;)V

    .line 121
    iget-object v7, p0, Lio/rong/imkit/mention/MemberMentionedActivity$2;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    #getter for: Lio/rong/imkit/mention/MemberMentionedActivity;->mAdapter:Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
    invoke-static {v7}, Lio/rong/imkit/mention/MemberMentionedActivity;->access$200(Lio/rong/imkit/mention/MemberMentionedActivity;)Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    check-cast p1, Lio/rong/imlib/model/Discussion;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/mention/MemberMentionedActivity$2;->onSuccess(Lio/rong/imlib/model/Discussion;)V

    return-void
.end method
