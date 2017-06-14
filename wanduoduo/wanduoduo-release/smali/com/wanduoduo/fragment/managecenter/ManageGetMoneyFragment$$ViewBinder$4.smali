.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ManageGetMoneyFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 50
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;->val$target:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 54
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;->val$target:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->onClick(Landroid/view/View;)V

    .line 55
    return-void
.end method
