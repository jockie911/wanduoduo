.class Lcom/wanduoduo/utils/OkHttpUtils$MyCallBack;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/utils/OkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyCallBack"
.end annotation


# instance fields
.field mListen:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    .locals 0
    .parameter "mListen"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/wanduoduo/utils/OkHttpUtils$MyCallBack;->mListen:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    .line 149
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 2
    .parameter "request"
    .parameter "e"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, result:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "errCode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, errCode:I
    const/16 v6, 0x6e

    if-ne v2, v6, :cond_0

    .line 162
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->deleteSP()V

    .line 163
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v3, intent:Landroid/content/Intent;
    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 166
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {v0}, Landroid/support/v4/content/IntentCompat;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 167
    .local v4, mainIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #errCode:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mainIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 168
    .restart local v2       #errCode:I
    :cond_0
    if-nez v2, :cond_1

    .line 169
    iget-object v6, p0, Lcom/wanduoduo/utils/OkHttpUtils$MyCallBack;->mListen:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-interface {v6, v5}, Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v2           #errCode:I
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #errCode:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/wanduoduo/utils/OkHttpUtils$MyCallBack;->mListen:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "errMsg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;->onFailure(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
