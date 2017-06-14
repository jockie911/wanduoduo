.class Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;
.super Ljava/lang/Object;
.source "InfoVipChongZhiActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 7
    .parameter "data"
    .parameter "function"

    .prologue
    .line 68
    invoke-static {p1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 70
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, obj:Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, type:Ljava/lang/String;
    const-string v5, "day"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, day:Ljava/lang/String;
    const-string v5, "coin"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, coin:Ljava/lang/String;
    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    const-string v6, "user_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->user_id:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$302(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->user_id:Ljava/lang/String;
    invoke-static {v5}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$300(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const-string v5, "\u8bf7\u9009\u62e9\u597d\u53cb"

    invoke-static {v5}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 92
    .end local v0           #coin:Ljava/lang/String;
    .end local v1           #day:Ljava/lang/String;
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v4           #type:Ljava/lang/String;
    :goto_0
    return-void

    .line 79
    .restart local v0       #coin:Ljava/lang/String;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v3       #obj:Lorg/json/JSONObject;
    .restart local v4       #type:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;
    invoke-static {v5}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$000(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const-string v5, "\u53d1\u751f\u9519\u8bef"

    invoke-static {v5}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0           #coin:Ljava/lang/String;
    .end local v1           #day:Ljava/lang/String;
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v4           #type:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #coin:Ljava/lang/String;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v3       #obj:Lorg/json/JSONObject;
    .restart local v4       #type:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->remainCoin:Ljava/lang/String;
    invoke-static {v6}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$000(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 84
    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialogPayCoin()V
    invoke-static {v5}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$100(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    const/4 v6, 0x0

    #calls: Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v5, v4, v1, v0, v6}, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->access$200(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
