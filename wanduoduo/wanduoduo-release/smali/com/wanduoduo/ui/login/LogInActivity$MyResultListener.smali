.class Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultListener"
.end annotation


# instance fields
.field private post_code:I

.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/login/LogInActivity;I)V
    .locals 0
    .parameter "this$0"
    .parameter "post_code"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->post_code:I

    .line 171
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, obtain:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/login/LogInActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 175
    iget v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->post_code:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 177
    :try_start_0
    const-string v2, "login_info"

    invoke-static {v2, p1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    .local v0, data:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    const-string v3, "avatar"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/ui/login/LogInActivity;->avatar:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/login/LogInActivity;->access$002(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/ui/login/LogInActivity;->nicknam:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/login/LogInActivity;->access$102(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    const-string v2, "rc_token"

    const-string v3, "rctoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    const-string v3, "rctoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/wanduoduo/ui/login/LogInActivity;->connectRongIM(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/login/LogInActivity;->access$200(Lcom/wanduoduo/ui/login/LogInActivity;Ljava/lang/String;)V

    .line 183
    const-string v2, "token"

    const-string v3, "token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "user_id"

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/ui/login/LogInActivity$MyResultListener;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    const-class v5, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/wanduoduo/ui/login/LogInActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0           #data:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
