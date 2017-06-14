.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->requestInfo()V
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
    .line 76
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 86
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    const-class v0, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBean;

    #setter for: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$002(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method
