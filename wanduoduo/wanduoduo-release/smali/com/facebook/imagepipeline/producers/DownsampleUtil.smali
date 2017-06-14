.class public Lcom/facebook/imagepipeline/producers/DownsampleUtil;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# static fields
.field private static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final INTERVAL_ROUNDING:F = 0.33333334f

.field private static final MAX_BITMAP_SIZE:F = 2048.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static determineDownsampleRatio(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)F
    .locals 14
    .parameter "imageRequest"
    .parameter "encodedImage"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v10

    invoke-static {v10}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v3

    .line 67
    .local v3, resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;
    if-eqz v3, :cond_0

    iget v10, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v10, :cond_0

    iget v10, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lez v10, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v10

    if-nez v10, :cond_1

    .line 69
    :cond_0
    const/high16 v2, 0x3f80

    .line 94
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->getRotationAngle(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v4

    .line 73
    .local v4, rotationAngle:I
    const/16 v10, 0x5a

    if-eq v4, v10, :cond_2

    const/16 v10, 0x10e

    if-ne v4, v10, :cond_3

    :cond_2
    move v5, v9

    .line 74
    .local v5, swapDimensions:Z
    :goto_1
    if-eqz v5, :cond_4

    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v6

    .line 76
    .local v6, widthAfterRotation:I
    :goto_2
    if-eqz v5, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    .line 79
    .local v0, heightAfterRotation:I
    :goto_3
    iget v10, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float v10, v10

    int-to-float v11, v6

    div-float v7, v10, v11

    .line 80
    .local v7, widthRatio:F
    iget v10, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v10, v10

    int-to-float v11, v0

    div-float v1, v10, v11

    .line 81
    .local v1, heightRatio:F
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 82
    .local v2, ratio:F
    const-string v10, "DownsampleUtil"

    const-string v11, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    iget v8, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    .line 87
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v9

    const/4 v8, 0x2

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x4

    .line 90
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x5

    .line 91
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x6

    .line 92
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x7

    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v8

    .line 82
    invoke-static {v10, v11, v12}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #heightAfterRotation:I
    .end local v1           #heightRatio:F
    .end local v2           #ratio:F
    .end local v5           #swapDimensions:Z
    .end local v6           #widthAfterRotation:I
    .end local v7           #widthRatio:F
    :cond_3
    move v5, v8

    .line 73
    goto :goto_1

    .line 75
    .restart local v5       #swapDimensions:Z
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v6

    goto :goto_2

    .line 77
    .restart local v6       #widthAfterRotation:I
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    goto :goto_3
.end method

.method public static determineSampleSize(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 5
    .parameter "imageRequest"
    .parameter "encodedImage"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    const/4 v2, 0x1

    .line 59
    :cond_0
    return v2

    .line 41
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->determineDownsampleRatio(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)F

    move-result v1

    .line 43
    .local v1, ratio:F
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v3

    sget-object v4, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v3, v4, :cond_2

    .line 44
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->ratioToSampleSizeJPEG(F)I

    move-result v2

    .line 51
    .local v2, sampleSize:I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .local v0, maxDimension:I
    :goto_1
    div-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x4500

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v3

    sget-object v4, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v3, v4, :cond_3

    .line 54
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 46
    .end local v0           #maxDimension:I
    .end local v2           #sampleSize:I
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->ratioToSampleSize(F)I

    move-result v2

    .restart local v2       #sampleSize:I
    goto :goto_0

    .line 56
    .restart local v0       #maxDimension:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getRotationAngle(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 3
    .parameter "imageRequest"
    .parameter "encodedImage"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getAutoRotateEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    :goto_0
    return v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    .line 134
    .local v0, rotationAngle:I
    if-eqz v0, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    move v1, v0

    .line 136
    goto :goto_0
.end method

.method static ratioToSampleSize(F)I
    .locals 12
    .parameter "ratio"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/high16 v10, 0x3ff0

    .line 99
    const v5, 0x3f2aaaab

    cmpl-float v5, p0, v5

    if-lez v5, :cond_0

    .line 100
    const/4 v5, 0x1

    .line 107
    :goto_0
    return v5

    .line 102
    :cond_0
    const/4 v4, 0x2

    .line 104
    .local v4, sampleSize:I
    :goto_1
    int-to-double v6, v4

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v4

    sub-double/2addr v6, v8

    div-double v2, v10, v6

    .line 105
    .local v2, intervalLength:D
    int-to-double v6, v4

    div-double v6, v10, v6

    const-wide v8, 0x3fd5555560000000L

    mul-double/2addr v8, v2

    add-double v0, v6, v8

    .line 106
    .local v0, compare:D
    float-to-double v6, p0

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_1

    .line 107
    add-int/lit8 v5, v4, -0x1

    goto :goto_0

    .line 109
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_1
.end method

.method static ratioToSampleSizeJPEG(F)I
    .locals 12
    .parameter "ratio"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/high16 v10, 0x3ff0

    .line 115
    const v5, 0x3f2aaaab

    cmpl-float v5, p0, v5

    if-lez v5, :cond_1

    .line 116
    const/4 v4, 0x1

    .line 123
    :cond_0
    return v4

    .line 118
    :cond_1
    const/4 v4, 0x2

    .line 120
    .local v4, sampleSize:I
    :goto_0
    mul-int/lit8 v5, v4, 0x2

    int-to-double v6, v5

    div-double v2, v10, v6

    .line 121
    .local v2, intervalLength:D
    mul-int/lit8 v5, v4, 0x2

    int-to-double v6, v5

    div-double v6, v10, v6

    const-wide v8, 0x3fd5555560000000L

    mul-double/2addr v8, v2

    add-double v0, v6, v8

    .line 122
    .local v0, compare:D
    float-to-double v6, p0

    cmpg-double v5, v0, v6

    if-lez v5, :cond_0

    .line 125
    mul-int/lit8 v4, v4, 0x2

    .line 126
    goto :goto_0
.end method

.method static roundToPowerOfTwo(I)I
    .locals 1
    .parameter "sampleSize"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x1

    .line 143
    .local v0, compare:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 144
    return v0

    .line 146
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
