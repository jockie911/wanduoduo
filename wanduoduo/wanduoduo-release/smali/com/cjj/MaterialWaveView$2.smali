.class Lcom/cjj/MaterialWaveView$2;
.super Ljava/lang/Object;
.source "MaterialWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialWaveView;->onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V
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
    .line 133
    iput-object p1, p0, Lcom/cjj/MaterialWaveView$2;->this$0:Lcom/cjj/MaterialWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 136
    const-string v1, "anim"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value--->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/cjj/MaterialWaveView$2;->this$0:Lcom/cjj/MaterialWaveView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cjj/MaterialWaveView;->setWaveHeight(I)V

    .line 138
    iget-object v0, p0, Lcom/cjj/MaterialWaveView$2;->this$0:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v0}, Lcom/cjj/MaterialWaveView;->invalidate()V

    .line 139
    return-void
.end method
