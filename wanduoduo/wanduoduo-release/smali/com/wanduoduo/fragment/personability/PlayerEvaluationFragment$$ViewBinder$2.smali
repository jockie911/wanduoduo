.class Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PlayerEvaluationFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 24
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;->this$0:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;->val$target:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 28
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;->val$target:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->onClick(Landroid/view/View;)V

    .line 29
    return-void
.end method
