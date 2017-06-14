.class Lcom/facebook/imagepipeline/animated/impl/RollingStat;
.super Ljava/lang/Object;
.source "RollingStat.java"


# static fields
.field private static final WINDOWS:I = 0x3c


# instance fields
.field private final mStat:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x3c

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    .line 25
    return-void
.end method


# virtual methods
.method getSum(I)I
    .locals 18
    .parameter "previousSeconds"

    .prologue
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 50
    .local v8, nowMs:J
    const-wide/16 v14, 0x3e8

    div-long v10, v8, v14

    .line 51
    .local v10, nowSeconds:J
    move/from16 v0, p1

    int-to-long v14, v0

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3c

    rem-long v14, v14, v16

    long-to-int v7, v14

    .line 52
    .local v7, statsIndexStart:I
    const-wide/16 v14, 0x3c

    div-long v14, v10, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v4, v14

    .line 54
    .local v4, currentMarker:I
    const/4 v12, 0x0

    .line 55
    .local v12, sum:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v5, v0, :cond_1

    .line 56
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    add-int v14, v7, v5

    rem-int/lit8 v14, v14, 0x3c

    aget-short v2, v13, v14

    .line 57
    .local v2, bucketData:S
    and-int/lit16 v3, v2, 0xff

    .line 58
    .local v3, count:I
    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v6, v13, 0xff

    .line 59
    .local v6, marker:I
    if-ne v6, v4, :cond_0

    .line 60
    add-int/2addr v12, v3

    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v2           #bucketData:S
    .end local v3           #count:I
    .end local v6           #marker:I
    :cond_1
    return v12
.end method

.method incrementStats(I)V
    .locals 18
    .parameter "toAdd"

    .prologue
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 29
    .local v6, nowMs:J
    const-wide/16 v14, 0x3e8

    div-long v8, v6, v14

    .line 30
    .local v8, nowSeconds:J
    const-wide/16 v14, 0x3c

    rem-long v14, v8, v14

    long-to-int v12, v14

    .line 31
    .local v12, statsIndex:I
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v3, v14

    .line 33
    .local v3, marker:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    aget-short v2, v13, v12

    .line 34
    .local v2, bucketData:S
    and-int/lit16 v10, v2, 0xff

    .line 35
    .local v10, prevCount:I
    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v11, v13, 0xff

    .line 38
    .local v11, prevMarker:I
    if-eq v3, v11, :cond_0

    .line 39
    move/from16 v4, p1

    .line 44
    .local v4, newCount:I
    :goto_0
    shl-int/lit8 v13, v3, 0x8

    or-int v5, v13, v4

    .line 45
    .local v5, newData:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    int-to-short v14, v5

    aput-short v14, v13, v12

    .line 46
    return-void

    .line 41
    .end local v4           #newCount:I
    .end local v5           #newData:I
    :cond_0
    add-int v4, v10, p1

    .restart local v4       #newCount:I
    goto :goto_0
.end method
