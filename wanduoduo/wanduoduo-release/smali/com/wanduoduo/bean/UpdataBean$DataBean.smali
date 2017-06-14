.class public Lcom/wanduoduo/bean/UpdataBean$DataBean;
.super Ljava/lang/Object;
.source "UpdataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/UpdataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private is_update:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_update()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->is_update:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->info:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setIs_update(I)V
    .locals 0
    .parameter "is_update"

    .prologue
    .line 55
    iput p1, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->is_update:I

    .line 56
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wanduoduo/bean/UpdataBean$DataBean;->url:Ljava/lang/String;

    .line 64
    return-void
.end method
