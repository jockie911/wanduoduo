.class Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationPlayVideoActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, videoUrl:Ljava/lang/String;
    const-string v3, "user_info"

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->getMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v4, v2}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1$1;

    invoke-direct {v5, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;)V

    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #videoUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
