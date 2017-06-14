.class Lcom/wanduoduo/base/BaseGridRefreshFragment$2;
.super Ljava/lang/Object;
.source "BaseGridRefreshFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseGridRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseGridRefreshFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 112
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 96
    .local v2, obtain:Landroid/os/Message;
    const/16 v3, 0xc8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "total_page"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/wanduoduo/base/BaseGridRefreshFragment;->totalPage:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v3, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    iput-object p1, v3, Lcom/wanduoduo/base/BaseGridRefreshFragment;->resultData:Ljava/lang/String;

    .line 104
    const-string v3, "result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    iget-object v3, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    iget-object v3, v3, Lcom/wanduoduo/base/BaseGridRefreshFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
