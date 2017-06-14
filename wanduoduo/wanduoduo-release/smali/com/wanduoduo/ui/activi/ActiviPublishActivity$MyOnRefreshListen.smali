.class Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "ActiviPublishActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->requestCode:I

    .line 193
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 215
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 197
    invoke-static {p1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 198
    iget v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->requestCode:I

    if-ne v3, v4, :cond_2

    .line 200
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 201
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->picUrlLists:Ljava/util/List;
    invoke-static {v3}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->access$000(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    iget v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->requestCode:I

    if-ne v3, v5, :cond_1

    .line 209
    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v3, v5}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
