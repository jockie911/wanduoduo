.class Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "OnLinePublishAppointmentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput p2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->position:I

    .line 476
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 499
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 480
    iget v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->position:I

    if-ne v4, v5, :cond_2

    .line 482
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, pics:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 485
    iget-object v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    #getter for: Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->picLists:Ljava/util/List;
    invoke-static {v4}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->access$200(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    iget-object v4, v4, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #pics:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 495
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 491
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    iget v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->position:I

    if-ne v4, v6, :cond_1

    .line 492
    iget-object v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    iget-object v4, v4, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v4, v6}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
