.class Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;
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
    .line 76
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;,"Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;->val$target:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 80
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;,"Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$$ViewBinder$6;->val$target:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->onClick(Landroid/view/View;)V

    .line 81
    return-void
.end method
