.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoEditorPersonActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 116
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;->val$target:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 120
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;->val$target:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->onClick(Landroid/view/View;)V

    .line 121
    return-void
.end method
