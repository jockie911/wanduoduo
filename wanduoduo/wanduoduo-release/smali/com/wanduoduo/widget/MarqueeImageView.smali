.class public Lcom/wanduoduo/widget/MarqueeImageView;
.super Landroid/view/View;
.source "MarqueeImageView.java"


# instance fields
.field back:Landroid/graphics/Bitmap;

.field backWidth:I

.field nowX:I

.field speed:I

.field vh:I

.field vw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    .line 42
    return-void
.end method


# virtual methods
.method public Start(Landroid/graphics/Bitmap;Landroid/view/Window;)V
    .locals 10
    .parameter "backMap"
    .parameter "windows"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 48
    .local v7, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 51
    .local v9, w:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v6, frame:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    .line 54
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    .line 55
    iget v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    if-eq v0, v7, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vw:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->speed:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->back:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->back:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/widget/MarqueeImageView;->backWidth:I

    .line 68
    new-instance v8, Lcom/wanduoduo/widget/MarqueeImageView$1;

    invoke-direct {v8, p0}, Lcom/wanduoduo/widget/MarqueeImageView$1;-><init>(Lcom/wanduoduo/widget/MarqueeImageView;)V

    .line 77
    .local v8, handler:Landroid/os/Handler;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wanduoduo/widget/MarqueeImageView$2;

    invoke-direct {v1, p0, v8}, Lcom/wanduoduo/widget/MarqueeImageView$2;-><init>(Lcom/wanduoduo/widget/MarqueeImageView;Landroid/os/Handler;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x50

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 88
    iget v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->backWidth:I

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    sub-int v2, v3, v4

    .line 90
    .local v2, w:I
    iget v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vw:I

    if-gt v3, v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->back:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    iget v5, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vw:I

    iget v6, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-static {v3, v4, v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    :goto_0
    iget v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->speed:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->backWidth:I

    if-lt v3, v4, :cond_1

    .line 102
    iput v8, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    .line 106
    :goto_1
    return-void

    .line 95
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->back:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    iget v5, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-static {v3, v4, v8, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->back:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vw:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/wanduoduo/widget/MarqueeImageView;->vh:I

    invoke-static {v3, v8, v8, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, bitmap2:Landroid/graphics/Bitmap;
    int-to-float v3, v2

    invoke-virtual {p1, v1, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    .end local v1           #bitmap2:Landroid/graphics/Bitmap;
    :cond_1
    iget v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    iget v4, p0, Lcom/wanduoduo/widget/MarqueeImageView;->speed:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/wanduoduo/widget/MarqueeImageView;->nowX:I

    goto :goto_1
.end method
