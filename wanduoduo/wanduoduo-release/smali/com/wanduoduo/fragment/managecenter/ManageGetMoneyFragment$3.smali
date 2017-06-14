.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;
.super Landroid/os/Handler;
.source "ManageGetMoneyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 148
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    #getter for: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$000(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    #getter for: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$000(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    const/4 v2, 0x1

    #setter for: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->isSuccess:Z
    invoke-static {v1, v2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$202(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Z)Z

    .line 155
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    #calls: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->alertDialog()V
    invoke-static {v1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$300(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
