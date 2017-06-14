.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

.field private what:I


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V
    .locals 0
    .parameter
    .parameter "what"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->what:I

    .line 498
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 525
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 502
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->what:I

    if-nez v2, :cond_1

    .line 503
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const-class v2, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {p1, v2}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBean;

    #setter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$102(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;

    .line 504
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 506
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 507
    :cond_2
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 509
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "coin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, coin:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1202(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v0           #coin:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v1           #e:Lorg/json/JSONException;
    :cond_3
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const-class v2, Lcom/wanduoduo/bean/InfoWatchBean;

    invoke-static {p1, v2}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean;

    #setter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->blackPersonBean:Lcom/wanduoduo/bean/InfoWatchBean;
    invoke-static {v3, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$602(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Lcom/wanduoduo/bean/InfoWatchBean;)Lcom/wanduoduo/bean/InfoWatchBean;

    .line 518
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
