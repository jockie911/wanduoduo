.class public Lio/rong/imkit/model/GroupUserInfo;
.super Ljava/lang/Object;
.source "GroupUserInfo.java"


# instance fields
.field private groupId:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"
    .parameter "userId"
    .parameter "nickname"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/rong/imkit/model/GroupUserInfo;->groupId:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lio/rong/imkit/model/GroupUserInfo;->nickname:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lio/rong/imkit/model/GroupUserInfo;->userId:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/rong/imkit/model/GroupUserInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/model/GroupUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/imkit/model/GroupUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 22
    iput-object p1, p0, Lio/rong/imkit/model/GroupUserInfo;->groupId:Ljava/lang/String;

    .line 23
    return-void
.end method
