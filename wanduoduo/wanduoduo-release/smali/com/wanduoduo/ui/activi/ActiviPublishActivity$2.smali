.class Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "ActiviPublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    .line 221
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 223
    const-string v0, "activity_news"

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    #calls: Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->getPubMap()Ljava/util/Map;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->access$100(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->picUrlLists:Ljava/util/List;
    invoke-static {v2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->access$000(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)Ljava/util/List;

    move-result-object v2

    const-string v3, "pics"

    new-instance v4, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;

    iget-object v5, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {v4, v5, v6}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_0

    .line 225
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 226
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->finish()V

    goto :goto_0
.end method
