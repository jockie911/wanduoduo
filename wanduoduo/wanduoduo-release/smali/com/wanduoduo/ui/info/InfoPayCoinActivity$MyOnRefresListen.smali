.class Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;
.super Ljava/lang/Object;
.source "InfoPayCoinActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoPayCoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefresListen"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->requestCode:I

    .line 158
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 201
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    .line 163
    iget v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->requestCode:I

    if-ne v7, v8, :cond_1

    .line 165
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "orderid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, order_id:Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 167
    .local v3, obtain:Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 168
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v7, v3}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v3           #obtain:Landroid/os/Message;
    .end local v4           #order_id:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    iget v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->requestCode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 176
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    .local v0, data:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    const-string v8, "WX"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$102(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WX "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v8}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$100(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$100(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wanduoduo/utils/WXPayUtils;->wxPay(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 192
    .end local v0           #data:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 193
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #data:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    const-string v8, "Ali"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "orderStr"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$102(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$100(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    new-instance v6, Lcom/alipay/sdk/app/PayTask;

    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-direct {v6, v7}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 185
    .local v6, payTask:Lcom/alipay/sdk/app/PayTask;
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->access$100(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, payResult:Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 187
    .local v2, msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v2, Landroid/os/Message;->what:I

    .line 188
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v7, v2}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
