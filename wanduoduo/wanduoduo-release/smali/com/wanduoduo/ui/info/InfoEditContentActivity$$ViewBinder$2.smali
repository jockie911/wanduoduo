.class Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoEditContentActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoEditContentActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/info/InfoEditContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditContentActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 40
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;,"Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;->val$target:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 44
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;,"Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$2;->val$target:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->onClick(Landroid/view/View;)V

    .line 45
    return-void
.end method
