.class Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ServerTimeActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/skill/ServerTimeActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 129
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;"
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;->this$0:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;->val$target:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 133
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;"
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;->val$target:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->onClick(Landroid/view/View;)V

    .line 134
    return-void
.end method
