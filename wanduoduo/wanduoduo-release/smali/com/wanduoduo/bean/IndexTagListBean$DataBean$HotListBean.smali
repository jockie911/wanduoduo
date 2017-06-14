.class public Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;
.super Ljava/lang/Object;
.source "IndexTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexTagListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotListBean"
.end annotation


# instance fields
.field private tag_id:Ljava/lang/String;

.field private tag_image:Ljava/lang/String;

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_image:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_id"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_id:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTag_image(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_image"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_image:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_name"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;->tag_name:Ljava/lang/String;

    .line 158
    return-void
.end method
