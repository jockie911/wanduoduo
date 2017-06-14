.class Lcom/cjj/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialProgressDrawable;Lcom/cjj/MaterialProgressDrawable$Ring;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 373
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 374
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 375
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/cjj/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iput-boolean v2, v0, Lcom/cjj/MaterialProgressDrawable;->mFinishing:Z

    .line 379
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lcom/cjj/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    #getter for: Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v1}, Lcom/cjj/MaterialProgressDrawable;->access$500(Lcom/cjj/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    const/high16 v2, 0x40a0

    rem-float/2addr v1, v2

    #setter for: Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lcom/cjj/MaterialProgressDrawable;->access$502(Lcom/cjj/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable$3;->this$0:Lcom/cjj/MaterialProgressDrawable;

    const/4 v1, 0x0

    #setter for: Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lcom/cjj/MaterialProgressDrawable;->access$502(Lcom/cjj/MaterialProgressDrawable;F)F

    .line 363
    return-void
.end method
