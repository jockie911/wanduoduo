.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f0d0021

    .line 472
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->isFollow:I
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->access$1500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;)I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const v1, 0x7f020120

    invoke-static {v0, v2, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 475
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->setRelation_status(I)V

    .line 476
    const-string v0, "\u5173\u6ce8\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->isFollow:I
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->access$1500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 478
    const-string v0, "\u53d6\u6d88\u5173\u6ce8\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$100(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->setRelation_status(I)V

    .line 481
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    const v1, 0x7f020121

    invoke-static {v0, v2, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0
.end method
