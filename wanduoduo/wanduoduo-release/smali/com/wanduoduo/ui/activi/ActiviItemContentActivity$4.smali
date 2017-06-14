.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;
.super Lcom/wanduoduo/widget/MyHandler;
.source "ActiviItemContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z
    invoke-static {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$300(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefresh()V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$000(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/bean/ActiviBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean;->getData()Lcom/wanduoduo/bean/ActiviBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    #calls: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initContent(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$400(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->discussAdapter:Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;
    invoke-static {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$500(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$000(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/bean/ActiviBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean;->getData()Lcom/wanduoduo/bean/ActiviBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean;->getComment_list()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z
    invoke-static {v2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$300(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/activi/ActiviItemDiscussAdapter;->addData(Ljava/util/List;Z)V

    .line 195
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0

    .line 188
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    const-string v1, "0"

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->comment_id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$602(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    goto :goto_1

    .line 192
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$4;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    goto :goto_1
.end method
