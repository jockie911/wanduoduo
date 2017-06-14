.class Lcom/wanduoduo/ui/order/PayOrderActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "PayOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/order/PayOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/order/PayOrderActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$1;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 188
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v2, "\u7b49\u5f85\u670d\u52a1\u8005\u786e\u8ba4"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_1
    const-string v2, "\u65e0\u6548\u7684\u8ba2\u5355"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0           #errMsg:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, res:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 202
    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$1;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    #calls: Lcom/wanduoduo/ui/order/PayOrderActivity;->orderPayComplete()V
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity;->access$000(Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    goto :goto_0

    .line 205
    :cond_1
    const-string v2, "4000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    const-string v2, "6001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    const-string v2, "\u5df2\u53d6\u6d88"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v2, "6002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
