.class Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AlreadyBuyServiceFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 43
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;->this$0:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;->val$target:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 47
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;->val$target:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->onClick(Landroid/view/View;)V

    .line 48
    return-void
.end method
