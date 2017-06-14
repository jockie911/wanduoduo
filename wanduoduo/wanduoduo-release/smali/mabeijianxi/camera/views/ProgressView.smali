.class public Lmabeijianxi/camera/views/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# static fields
.field private static final HANDLER_INVALIDATE_ACTIVE:I = 0x0

.field private static final HANDLER_INVALIDATE_RECORDING:I = 0x1


# instance fields
.field private mActivePaint:Landroid/graphics/Paint;

.field private mActiveState:Z

.field private mHandler:Landroid/os/Handler;

.field private mMaxDuration:I

.field private mMediaObject:Lmabeijianxi/camera/model/MediaObject;

.field private mOverflowPaint:Landroid/graphics/Paint;

.field private mPausePaint:Landroid/graphics/Paint;

.field private mProgressChanged:Z

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRecordTimeMin:I

.field private mRemovePaint:Landroid/graphics/Paint;

.field private mStop:Z

.field private mThreePaint:Landroid/graphics/Paint;

.field private mVLineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x5dc

    iput v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    .line 93
    new-instance v0, Lmabeijianxi/camera/views/ProgressView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/ProgressView$1;-><init>(Lmabeijianxi/camera/views/ProgressView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-direct {p0}, Lmabeijianxi/camera/views/ProgressView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x5dc

    iput v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    .line 93
    new-instance v0, Lmabeijianxi/camera/views/ProgressView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/ProgressView$1;-><init>(Lmabeijianxi/camera/views/ProgressView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lmabeijianxi/camera/views/ProgressView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v0, 0x5dc

    iput v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    .line 93
    new-instance v0, Lmabeijianxi/camera/views/ProgressView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/ProgressView$1;-><init>(Lmabeijianxi/camera/views/ProgressView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lmabeijianxi/camera/views/ProgressView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lmabeijianxi/camera/views/ProgressView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mActiveState:Z

    return v0
.end method

.method static synthetic access$002(Lmabeijianxi/camera/views/ProgressView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lmabeijianxi/camera/views/ProgressView;->mActiveState:Z

    return p1
.end method

.method static synthetic access$100(Lmabeijianxi/camera/views/ProgressView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mStop:Z

    return v0
.end method

.method static synthetic access$200(Lmabeijianxi/camera/views/ProgressView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressChanged:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mActivePaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mPausePaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRemovePaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mThreePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mOverflowPaint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lmabeijianxi/camera/util/DeviceUtils;->dipToPX(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lmabeijianxi/camera/views/ProgressView;->mVLineWidth:I

    .line 64
    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmabeijianxi/camera/R$color;->camera_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/views/ProgressView;->setBackgroundColor(I)V

    .line 65
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    const v1, -0xba3fe6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mActivePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mActivePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mPausePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmabeijianxi/camera/R$color;->camera_progress_split:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mPausePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRemovePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmabeijianxi/camera/R$color;->camera_progress_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mRemovePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mThreePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmabeijianxi/camera/R$color;->camera_progress_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mThreePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mOverflowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmabeijianxi/camera/R$color;->camera_progress_overflow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mOverflowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 202
    iput-boolean v1, p0, Lmabeijianxi/camera/views/ProgressView;->mStop:Z

    .line 203
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mStop:Z

    .line 210
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/views/ProgressView;->getMeasuredWidth()I

    move-result v18

    .local v18, width:I
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/views/ProgressView;->getMeasuredHeight()I

    move-result v11

    .line 118
    .local v11, height:I
    const/4 v13, 0x0

    .local v13, left:I
    const/16 v16, 0x0

    .local v16, right:I
    const/4 v8, 0x0

    .line 119
    .local v8, duration:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 121
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 123
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 124
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmabeijianxi/camera/model/MediaObject$MediaPart;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    .line 127
    .local v9, hasNext:Z
    move-object/from16 v0, p0

    iget v14, v0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    .line 128
    .local v14, maxDuration:I
    const/4 v10, 0x0

    .line 129
    .local v10, hasOutDuration:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v7

    .line 130
    .local v7, currentDuration:I
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    if-le v7, v1, :cond_2

    const/4 v10, 0x1

    .line 131
    :goto_0
    if-eqz v10, :cond_0

    .line 132
    move v14, v7

    .line 134
    :cond_0
    :goto_1
    if-eqz v9, :cond_5

    .line 135
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 136
    .local v17, vp:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    invoke-virtual/range {v17 .. v17}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->getDuration()I

    move-result v15

    .line 139
    .local v15, partDuration:I
    move/from16 v13, v16

    .line 140
    int-to-float v1, v15

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    int-to-float v2, v14

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v13, v1

    .line 143
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    if-eqz v1, :cond_3

    .line 145
    int-to-float v2, v13

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mRemovePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    .line 171
    if-eqz v9, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mVLineWidth:I

    sub-int v1, v16, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mPausePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    :cond_1
    add-int/2addr v8, v15

    .line 179
    goto :goto_1

    .line 130
    .end local v15           #partDuration:I
    .end local v17           #vp:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 148
    .restart local v15       #partDuration:I
    .restart local v17       #vp:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_3
    if-eqz v10, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    int-to-float v2, v14

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v13, v1

    .line 154
    int-to-float v2, v13

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    move/from16 v13, v16

    .line 159
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    sub-int/2addr v1, v8

    sub-int v1, v15, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    int-to-float v2, v14

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v13, v1

    .line 162
    int-to-float v2, v13

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mOverflowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 165
    :cond_4
    int-to-float v2, v13

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 183
    .end local v7           #currentDuration:I
    .end local v9           #hasNext:Z
    .end local v10           #hasOutDuration:Z
    .end local v12           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmabeijianxi/camera/model/MediaObject$MediaPart;>;"
    .end local v14           #maxDuration:I
    .end local v15           #partDuration:I
    .end local v17           #vp:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    if-ge v8, v1, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 185
    int-to-float v2, v13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lmabeijianxi/camera/views/ProgressView;->mVLineWidth:I

    add-int/2addr v1, v13

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mThreePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 191
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmabeijianxi/camera/views/ProgressView;->mActiveState:Z

    if-eqz v1, :cond_8

    .line 192
    add-int/lit8 v1, v16, 0x8

    move/from16 v0, v18

    if-lt v1, v0, :cond_7

    .line 193
    add-int/lit8 v16, v18, -0x8

    .line 194
    :cond_7
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    add-int/lit8 v1, v16, 0x8

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/views/ProgressView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lmabeijianxi/camera/views/ProgressView;->mActivePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    :cond_8
    return-void
.end method

.method public setData(Lmabeijianxi/camera/model/MediaObject;)V
    .locals 0
    .parameter "mMediaObject"

    .prologue
    .line 221
    iput-object p1, p0, Lmabeijianxi/camera/views/ProgressView;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 222
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 225
    iput p1, p0, Lmabeijianxi/camera/views/ProgressView;->mMaxDuration:I

    .line 226
    return-void
.end method

.method public setMinTime(I)V
    .locals 0
    .parameter "recordTimeMin"

    .prologue
    .line 237
    iput p1, p0, Lmabeijianxi/camera/views/ProgressView;->mRecordTimeMin:I

    .line 238
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressChanged:Z

    .line 230
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmabeijianxi/camera/views/ProgressView;->mProgressChanged:Z

    .line 234
    return-void
.end method
