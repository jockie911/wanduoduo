.class public Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ActiviBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;
    }
.end annotation


# instance fields
.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private father_id:Ljava/lang/String;

.field private news_id:Ljava/lang/String;

.field private user:Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getFather_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->father_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNews_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->news_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->user:Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    return-object v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_id"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->comment_id:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->content:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0
    .parameter "create_time"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->create_time:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setFather_id(Ljava/lang/String;)V
    .locals 0
    .parameter "father_id"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->father_id:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setNews_id(Ljava/lang/String;)V
    .locals 0
    .parameter "news_id"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->news_id:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setUser(Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;->user:Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;

    .line 485
    return-void
.end method
