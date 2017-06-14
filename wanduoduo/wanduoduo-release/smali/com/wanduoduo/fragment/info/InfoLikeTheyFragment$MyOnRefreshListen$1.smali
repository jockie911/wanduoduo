.class Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;
.super Ljava/lang/Object;
.source "InfoLikeTheyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    #getter for: Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->isFollow:I
    invoke-static {v0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->access$000(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    .line 149
    const-string v0, "\u5173\u6ce8\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    #getter for: Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->isFollow:I
    invoke-static {v0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->access$000(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 151
    const-string v0, "\u53d6\u6d88\u5173\u6ce8\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->this$0:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->adapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->access$200(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;->this$1:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    #getter for: Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->position:I
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->access$100(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->removeViewAt(I)V

    goto :goto_0
.end method
