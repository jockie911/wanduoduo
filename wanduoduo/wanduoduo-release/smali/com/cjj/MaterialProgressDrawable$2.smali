.class Lcom/cjj/MaterialProgressDrawable$2;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


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
    .line 313
    iput-object p1, p0, Lcom/cjj/MaterialProgressDrawable$2;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->this$0:Lcom/cjj/MaterialProgressDrawable;

    iget-boolean v12, v12, Lcom/cjj/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v12, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->this$0:Lcom/cjj/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    move/from16 v0, p1

    #calls: Lcom/cjj/MaterialProgressDrawable;->applyFinishTranslation(FLcom/cjj/MaterialProgressDrawable$Ring;)V
    invoke-static {v12, v0, v13}, Lcom/cjj/MaterialProgressDrawable;->access$200(Lcom/cjj/MaterialProgressDrawable;FLcom/cjj/MaterialProgressDrawable$Ring;)V

    .line 353
    :goto_0
    return-void

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    .line 323
    invoke-virtual {v12}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x401921fb54442d18L

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cjj/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    .line 322
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 324
    .local v5, minProgressArc:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    .line 325
    .local v8, startingEndTrim:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    .line 326
    .local v10, startingTrim:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    .line 330
    .local v9, startingRotation:F
    const v12, 0x3f4ccccd

    sub-float v4, v12, v5

    .line 332
    .local v4, minArc:F
    invoke-static {}, Lcom/cjj/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v12, v4

    add-float v2, v8, v12

    .line 333
    .local v2, endTrim:F
    const v12, 0x3f4ccccd

    .line 334
    invoke-static {}, Lcom/cjj/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v10, v12

    .line 336
    .local v7, startTrim:F
    sub-float v11, v2, v7

    .line 338
    .local v11, sweepTrim:F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    .line 339
    const/high16 v12, 0x3f00

    add-float v2, v7, v12

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v2}, Lcom/cjj/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v7}, Lcom/cjj/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 346
    const/high16 v12, 0x3e80

    mul-float v12, v12, p1

    add-float v6, v9, v12

    .line 347
    .local v6, rotation:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->val$ring:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v6}, Lcom/cjj/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 349
    const/high16 v12, 0x4310

    mul-float v12, v12, p1

    const/high16 v13, 0x4434

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cjj/MaterialProgressDrawable$2;->this$0:Lcom/cjj/MaterialProgressDrawable;

    .line 350
    #getter for: Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v14}, Lcom/cjj/MaterialProgressDrawable;->access$500(Lcom/cjj/MaterialProgressDrawable;)F

    move-result v14

    const/high16 v15, 0x40a0

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 351
    .local v3, groupRotation:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cjj/MaterialProgressDrawable$2;->this$0:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v12, v3}, Lcom/cjj/MaterialProgressDrawable;->setRotation(F)V

    goto/16 :goto_0
.end method
