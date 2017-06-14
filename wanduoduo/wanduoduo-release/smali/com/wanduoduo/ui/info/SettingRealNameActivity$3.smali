.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity;->onclick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

.field final synthetic val$objs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;->val$objs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 172
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 145
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, pics:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;->val$objs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #pics:Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 167
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    return-void

    .line 152
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #pics:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "user_info"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v5, "token"

    const-string v6, "token"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v5, "idcard_pic"

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;

    invoke-direct {v6, p0, v2}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3$1;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;Ljava/lang/String;)V

    .line 152
    invoke-static {v4, v5, v6}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
