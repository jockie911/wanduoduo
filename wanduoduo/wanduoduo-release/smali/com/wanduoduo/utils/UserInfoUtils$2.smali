.class final Lcom/wanduoduo/utils/UserInfoUtils$2;
.super Landroid/os/Handler;
.source "UserInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/utils/UserInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 51
    invoke-static {}, Lcom/wanduoduo/utils/UserInfoUtils;->access$100()Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;

    move-result-object v0

    invoke-static {}, Lcom/wanduoduo/utils/UserInfoUtils;->access$000()Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;->onSuccess(Lcom/wanduoduo/bean/InfoBean;)V

    .line 52
    return-void
.end method
