.class Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ActiviPublishActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 40
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;"
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;->val$target:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 44
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;"
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;->val$target:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->onClick(Landroid/view/View;)V

    .line 45
    return-void
.end method
