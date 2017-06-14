.class public Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
.super Ljava/lang/Object;
.source "IndexTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListChildBean"
.end annotation


# instance fields
.field private tag_id:Ljava/lang/String;

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_id"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->tag_id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_name"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->tag_name:Ljava/lang/String;

    .line 135
    return-void
.end method
