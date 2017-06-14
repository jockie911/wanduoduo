.class public Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;
.super Landroid/view/TextureView;
.source "JCResizeTextureView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/high16 v9, -0x8000

    .line 26
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v8

    iget v4, v8, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 27
    .local v4, videoWidth:I
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v8

    iget v3, v8, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 29
    .local v3, videoHeight:I
    invoke-static {v4, p1}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->getDefaultSize(II)I

    move-result v5

    .line 30
    .local v5, width:I
    invoke-static {v3, p2}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->getDefaultSize(II)I

    move-result v0

    .line 31
    .local v0, height:I
    if-lez v4, :cond_0

    if-lez v3, :cond_0

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 34
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 35
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 36
    .local v1, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 38
    .local v2, heightSpecSize:I
    if-ne v6, v10, :cond_2

    if-ne v1, v10, :cond_2

    .line 40
    move v5, v7

    .line 41
    move v0, v2

    .line 44
    mul-int v8, v4, v0

    mul-int v9, v5, v3

    if-ge v8, v9, :cond_1

    .line 45
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 83
    .end local v1           #heightSpecMode:I
    .end local v2           #heightSpecSize:I
    .end local v6           #widthSpecMode:I
    .end local v7           #widthSpecSize:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v5, v0}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->setMeasuredDimension(II)V

    .line 84
    return-void

    .line 46
    .restart local v1       #heightSpecMode:I
    .restart local v2       #heightSpecSize:I
    .restart local v6       #widthSpecMode:I
    .restart local v7       #widthSpecSize:I
    :cond_1
    mul-int v8, v4, v0

    mul-int v9, v5, v3

    if-le v8, v9, :cond_0

    .line 47
    mul-int v8, v5, v3

    div-int v0, v8, v4

    goto :goto_0

    .line 49
    :cond_2
    if-ne v6, v10, :cond_3

    .line 51
    move v5, v7

    .line 52
    mul-int v8, v5, v3

    div-int v0, v8, v4

    .line 53
    if-ne v1, v9, :cond_0

    if-le v0, v2, :cond_0

    .line 55
    move v0, v2

    goto :goto_0

    .line 57
    :cond_3
    if-ne v1, v10, :cond_4

    .line 59
    move v0, v2

    .line 60
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 61
    if-ne v6, v9, :cond_0

    if-le v5, v7, :cond_0

    .line 63
    move v5, v7

    goto :goto_0

    .line 67
    :cond_4
    move v5, v4

    .line 68
    move v0, v3

    .line 69
    if-ne v1, v9, :cond_5

    if-le v0, v2, :cond_5

    .line 71
    move v0, v2

    .line 72
    mul-int v8, v0, v4

    div-int v5, v8, v3

    .line 74
    :cond_5
    if-ne v6, v9, :cond_0

    if-le v5, v7, :cond_0

    .line 76
    move v5, v7

    .line 77
    mul-int v8, v5, v3

    div-int v0, v8, v4

    goto :goto_0
.end method
