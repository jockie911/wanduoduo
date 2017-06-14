.class public Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;
.super Ljava/lang/Object;
.source "SystemMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemFans"
.end annotation


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;->id:Ljava/lang/String;

    .line 132
    return-void
.end method
