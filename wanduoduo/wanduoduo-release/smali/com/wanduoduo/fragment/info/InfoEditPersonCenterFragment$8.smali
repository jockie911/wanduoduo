.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->upLoadPic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

.field final synthetic val$objects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;->val$objects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 737
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 714
    .local v4, msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 716
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "path"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, path:Ljava/lang/String;
    sget-object v7, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 718
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 719
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 720
    iget-object v7, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 724
    .local v2, json:Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 725
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 728
    .end local v2           #json:Lorg/json/JSONArray;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 731
    .end local v0           #e:Lorg/json/JSONException;
    :goto_2
    iget-object v7, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$8;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;
    invoke-static {v7}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->access$300(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Lcom/wanduoduo/widget/MyHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    return-void

    .line 727
    .restart local v2       #json:Lorg/json/JSONArray;
    .restart local v5       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
