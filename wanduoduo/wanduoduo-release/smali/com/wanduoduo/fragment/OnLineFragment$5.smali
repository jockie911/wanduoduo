.class Lcom/wanduoduo/fragment/OnLineFragment$5;
.super Lcom/wanduoduo/widget/MyHandler;
.source "OnLineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/OnLineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/OnLineFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/OnLineFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x4

    .line 233
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 234
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 235
    const-string v1, "\u5df2\u6210\u529f\u7f6e\u9876"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->rocketTop()V

    .line 237
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 242
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    .line 243
    iget-object v3, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$000(Lcom/wanduoduo/fragment/OnLineFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    #setter for: Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z
    invoke-static {v3, v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$002(Lcom/wanduoduo/fragment/OnLineFragment;Z)Z

    .line 244
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$000(Lcom/wanduoduo/fragment/OnLineFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->setSelfHide()V

    .line 252
    :goto_2
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    const v3, 0x7f02012d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v1

    iput-boolean v2, v1, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 250
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$5;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    goto :goto_2
.end method
