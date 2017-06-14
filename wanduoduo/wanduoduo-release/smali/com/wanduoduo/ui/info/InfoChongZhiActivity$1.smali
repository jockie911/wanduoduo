.class Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "InfoChongZhiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoChongZhiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 191
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, order_id:Ljava/lang/String;
    const-string v2, "charge_pay"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->getPayMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v3, v0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$100(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;

    iget-object v5, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;I)V

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 207
    .end local v0           #order_id:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 195
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, res:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 197
    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "4000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    const-string v2, "6001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    const-string v2, "\u5df2\u53d6\u6d88"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_4
    const-string v2, "6002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0
.end method
