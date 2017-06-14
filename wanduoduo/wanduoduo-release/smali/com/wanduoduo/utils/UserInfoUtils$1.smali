.class final Lcom/wanduoduo/utils/UserInfoUtils$1;
.super Ljava/lang/Object;
.source "UserInfoUtils.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 34
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 27
    const-class v0, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->access$002(Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;

    .line 28
    sget-object v0, Lcom/wanduoduo/utils/UserInfoUtils;->handler:Landroid/os/Handler;

    const v1, 0x1e1b9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    return-void
.end method
