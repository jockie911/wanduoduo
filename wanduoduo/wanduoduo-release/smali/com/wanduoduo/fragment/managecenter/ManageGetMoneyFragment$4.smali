.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->alertDialog()V
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
    .line 172
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 176
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 177
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 178
    return-void
.end method
