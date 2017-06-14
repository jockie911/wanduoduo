.class public Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "SystemMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/SystemMessageBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;
    }
.end annotation


# instance fields
.field private system_content:Ljava/lang/String;

.field private system_create_time:Ljava/lang/String;

.field private system_fans:Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;

.field private system_order_id:Ljava/lang/String;

.field private system_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemFans()Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_fans:Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;

    return-object v0
.end method

.method public getSystem_content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_content:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_create_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_order_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_type()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_type:I

    return v0
.end method

.method public setSystemFans(Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;)V
    .locals 1
    .parameter "systemFans"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_fans:Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;

    iput-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_fans:Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;

    .line 121
    return-void
.end method

.method public setSystem_content(Ljava/lang/String;)V
    .locals 0
    .parameter "system_content"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_content:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSystem_create_time(Ljava/lang/String;)V
    .locals 0
    .parameter "system_create_time"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_create_time:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSystem_order_id(Ljava/lang/String;)V
    .locals 0
    .parameter "system_order_id"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_order_id:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSystem_type(I)V
    .locals 0
    .parameter "system_type"

    .prologue
    .line 104
    iput p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->system_type:I

    .line 105
    return-void
.end method
