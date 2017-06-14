.class public Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ActiviBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;,
        Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private commentCount:I

.field private content:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isLike:Z

.field private lat:Ljava/lang/String;

.field private likeCount:I

.field private like_users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;",
            ">;"
        }
    .end annotation
.end field

.field private lng:Ljava/lang/String;

.field private pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private share_url:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private user:Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

.field private video:Ljava/lang/String;

.field private view:I

.field private view_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->commentCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->likeCount:I

    return v0
.end method

.method public getLike_users()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->like_users:Ljava/util/List;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->pics:Ljava/util/List;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->user:Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getView()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->view:I

    return v0
.end method

.method public getView_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->view_type:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLike()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isLike:Z

    return v0
.end method

.method public isLike()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isLike:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->address:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "commentCount"

    .prologue
    .line 184
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->commentCount:I

    .line 185
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->content:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0
    .parameter "create_time"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setIsLike(Z)V
    .locals 0
    .parameter "isLike"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isLike:Z

    .line 201
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->lat:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLike(Z)V
    .locals 0
    .parameter "like"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isLike:Z

    .line 95
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0
    .parameter "likeCount"

    .prologue
    .line 192
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->likeCount:I

    .line 193
    return-void
.end method

.method public setLike_users(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, like_users:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->like_users:Ljava/util/List;

    .line 241
    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0
    .parameter "lng"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->lng:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPics(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, pics:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->pics:Ljava/util/List;

    .line 233
    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0
    .parameter "share_url"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->share_url:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->status:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUser(Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->user:Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    .line 177
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->video:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setView(I)V
    .locals 0
    .parameter "view"

    .prologue
    .line 208
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->view:I

    .line 209
    return-void
.end method

.method public setView_type(Ljava/lang/String;)V
    .locals 0
    .parameter "view_type"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->view_type:Ljava/lang/String;

    .line 217
    return-void
.end method
