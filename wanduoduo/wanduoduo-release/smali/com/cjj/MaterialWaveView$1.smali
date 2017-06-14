.class Lcom/cjj/MaterialWaveView$1;
.super Ljava/lang/Object;
.source "MaterialWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialWaveView;->onComlete(Lcom/cjj/MaterialRefreshLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialWaveView;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialWaveView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cjj/MaterialWaveView$1;->this$0:Lcom/cjj/MaterialWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, value:I
    iget-object v1, p0, Lcom/cjj/MaterialWaveView$1;->this$0:Lcom/cjj/MaterialWaveView;

    #setter for: Lcom/cjj/MaterialWaveView;->headHeight:I
    invoke-static {v1, v0}, Lcom/cjj/MaterialWaveView;->access$002(Lcom/cjj/MaterialWaveView;I)I

    .line 107
    iget-object v1, p0, Lcom/cjj/MaterialWaveView$1;->this$0:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v1}, Lcom/cjj/MaterialWaveView;->invalidate()V

    .line 108
    return-void
.end method
