.class Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnLineChooseActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/online/OnLineChooseActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 118
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;"
    iput-object p1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;->this$0:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;->val$target:Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 122
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;"
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;->val$target:Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onClick(Landroid/view/View;)V

    .line 123
    return-void
.end method
