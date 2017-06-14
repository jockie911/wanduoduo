.class public Lio/rong/imlib/NativeObject$UserInfo;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field private accountExtra:Ljava/lang/String;

.field private categoryId:I

.field private joinTime:J

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->accountExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->categoryId:I

    return v0
.end method

.method public getJoinTime()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->joinTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "accountExtra"

    .prologue
    .line 287
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->accountExtra:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .parameter "categoryId"

    .prologue
    .line 263
    iput p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->categoryId:I

    .line 264
    return-void
.end method

.method public setJoinTime(J)V
    .locals 1
    .parameter "joinTime"

    .prologue
    .line 295
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->joinTime:J

    .line 296
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 279
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->url:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 255
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->userId:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 271
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->userName:Ljava/lang/String;

    .line 272
    return-void
.end method
