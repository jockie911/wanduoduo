.class Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;
.super Ljava/lang/Object;
.source "AppointmentItemDetailActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 137
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 126
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, data:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    new-instance v2, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-direct {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    #setter for: Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
    invoke-static {v3, v2}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->access$102(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;)Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    .line 128
    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$2;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #data:Ljava/lang/String;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
