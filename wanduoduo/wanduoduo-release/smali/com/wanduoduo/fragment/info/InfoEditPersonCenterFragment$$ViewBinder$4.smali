.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoEditPersonCenterFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 54
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;->val$target:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 58
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;->val$target:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->onClick(Landroid/view/View;)V

    .line 59
    return-void
.end method
