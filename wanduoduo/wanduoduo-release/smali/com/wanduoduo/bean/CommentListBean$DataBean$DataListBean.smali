.class public Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "CommentListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CommentListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;,
        Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;
    }
.end annotation


# instance fields
.field private comment_user:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;

.field private content:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private gift:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;

.field private id:Ljava/lang/String;

.field private is_show:Ljava/lang/String;

.field private order_hour:Ljava/lang/String;

.field private star:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_user()Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->comment_user:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGift()Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->gift:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_show()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->is_show:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_hour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->order_hour:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->star:Ljava/lang/String;

    return-object v0
.end method

.method public setComment_user(Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;)V
    .locals 0
    .parameter "comment_user"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->comment_user:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$CommentUserBean;

    .line 179
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->content:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0
    .parameter "create_time"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setGift(Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;)V
    .locals 0
    .parameter "gift"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->gift:Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean$GiftBean;

    .line 187
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setIs_show(Ljava/lang/String;)V
    .locals 0
    .parameter "is_show"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->is_show:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setOrder_hour(Ljava/lang/String;)V
    .locals 0
    .parameter "order_hour"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->order_hour:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setStar(Ljava/lang/String;)V
    .locals 0
    .parameter "star"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;->star:Ljava/lang/String;

    .line 139
    return-void
.end method
