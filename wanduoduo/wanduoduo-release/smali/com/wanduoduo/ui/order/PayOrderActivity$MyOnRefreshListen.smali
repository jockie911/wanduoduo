.class Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "PayOrderActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/order/PayOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/order/PayOrderActivity;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->requestCode:I

    .line 269
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 309
    iget v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->requestCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, obtain:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 313
    iget-object v1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/order/PayOrderActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    .end local v0           #obtain:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 272
    iget v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->requestCode:I

    packed-switch v3, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "order_status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, order_status:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    const/4 v4, 0x1

    #setter for: Lcom/wanduoduo/ui/order/PayOrderActivity;->isMakeOrder:Z
    invoke-static {v3, v4}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$302(Lcom/wanduoduo/ui/order/PayOrderActivity;Z)Z

    .line 278
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v2           #order_status:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #order_status:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    const/4 v4, 0x1

    #setter for: Lcom/wanduoduo/ui/order/PayOrderActivity;->isMakeOrder:Z
    invoke-static {v3, v4}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$302(Lcom/wanduoduo/ui/order/PayOrderActivity;Z)Z

    .line 281
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 282
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v3, "pay"

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    #calls: Lcom/wanduoduo/ui/order/PayOrderActivity;->getMap()Ljava/util/Map;
    invoke-static {v4}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$400(Lcom/wanduoduo/ui/order/PayOrderActivity;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;

    iget-object v6, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity;I)V

    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 290
    .end local v2           #order_status:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 292
    :cond_3
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 293
    .local v0, data:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    const-string v4, "WX"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/wanduoduo/ui/order/PayOrderActivity;->payForWeiXin(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$500(Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/String;)V

    .line 295
    :cond_4
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    const-string v4, "Ali"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "orderStr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/wanduoduo/ui/order/PayOrderActivity;->payForZhiFuBao(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$600(Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    .end local v0           #data:Lorg/json/JSONObject;
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    #calls: Lcom/wanduoduo/ui/order/PayOrderActivity;->orderPayComplete()V
    invoke-static {v3}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$000(Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    goto/16 :goto_0

    .line 297
    :catch_1
    move-exception v1

    .line 298
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
