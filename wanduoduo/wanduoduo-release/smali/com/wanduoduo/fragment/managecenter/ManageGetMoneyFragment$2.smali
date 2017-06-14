.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$2;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->onClick(Landroid/view/View;)V
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
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$2;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 137
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$2;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    #calls: Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->withDrawTheMoney()V
    invoke-static {v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->access$100(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    .line 132
    return-void
.end method
