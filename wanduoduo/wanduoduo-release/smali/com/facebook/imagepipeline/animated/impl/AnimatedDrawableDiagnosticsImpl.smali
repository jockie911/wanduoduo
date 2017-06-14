.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;
.super Ljava/lang/Object;
.source "AnimatedDrawableDiagnosticsImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mDebugTextPaint:Landroid/text/TextPaint;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

.field private final mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

.field private mLastTimeStamp:J

.field private final sbTemp:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter "animatedDrawableUtil"
    .parameter "displayMetrics"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 49
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    .line 50
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 55
    return-void
.end method

.method private convertDpToPx(I)I
    .locals 3
    .parameter "dips"

    .prologue
    .line 156
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public drawDebugOverlay(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18
    .parameter "canvas"
    .parameter "destRect"

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->getSum(I)I

    move-result v10

    .line 115
    .local v10, droppedFrame10:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->getSum(I)I

    move-result v9

    .line 116
    .local v9, drawnFrames10:I
    add-int v15, v9, v10

    .line 117
    .local v15, totalFrames:I
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v11

    .line 118
    .local v11, leftMargin:I
    move/from16 v16, v11

    .line 119
    .local v16, x:I
    const/16 v1, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v17

    .line 120
    .local v17, y:I
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v13

    .line 121
    .local v13, spacingBetweenTextPx:I
    if-lez v15, :cond_0

    .line 122
    mul-int/lit8 v1, v9, 0x64

    div-int v12, v1, v15

    .line 123
    .local v12, percentage:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 127
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 128
    add-int v16, v16, v13

    .line 132
    .end local v12           #percentage:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getMemoryUsage()I

    move-result v8

    .line 133
    .local v8, bytesUsed:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v8}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->appendMemoryString(Ljava/lang/StringBuilder;I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 136
    .local v14, textWidth:F
    move/from16 v0, v16

    int-to-float v1, v0

    add-float/2addr v1, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 137
    move/from16 v16, v11

    .line 138
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    int-to-float v3, v13

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 141
    move/from16 v0, v16

    int-to-float v1, v0

    add-float/2addr v1, v14

    float-to-int v0, v1

    move/from16 v16, v0

    .line 142
    add-int v16, v16, v13

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->appendDebugOptionString(Ljava/lang/StringBuilder;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 148
    move/from16 v0, v16

    int-to-float v1, v0

    add-float/2addr v1, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 149
    move/from16 v16, v11

    .line 150
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    int-to-float v3, v13

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method public incrementDrawnFrames(I)V
    .locals 1
    .parameter "drawnFrames"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->incrementStats(I)V

    .line 99
    return-void
.end method

.method public incrementDroppedFrames(I)V
    .locals 3
    .parameter "droppedFrames"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->incrementStats(I)V

    .line 91
    if-lez p1, :cond_0

    .line 92
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Dropped %d frames"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onDrawMethodBegin()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    .line 104
    return-void
.end method

.method public onDrawMethodEnd()V
    .locals 6

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long v0, v2, v4

    .line 109
    .local v0, elapsedMs:J
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    const-string v3, "draw took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public onNextFrameMethodBegin()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    .line 78
    return-void
.end method

.method public onNextFrameMethodEnd()V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long v0, v2, v4

    .line 83
    .local v0, elapsedMs:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 84
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    const-string v3, "onNextFrame took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onStartMethodBegin()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    .line 65
    return-void
.end method

.method public onStartMethodEnd()V
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long v0, v2, v4

    .line 70
    .local v0, elapsedMs:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 71
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    const-string v3, "onStart took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V
    .locals 0
    .parameter "animatedDrawableBackend"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 60
    return-void
.end method
