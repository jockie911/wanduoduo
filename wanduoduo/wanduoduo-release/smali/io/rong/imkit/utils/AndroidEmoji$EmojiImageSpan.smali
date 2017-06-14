.class public Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AndroidEmoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/utils/AndroidEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiImageSpan"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 7
    .parameter "codePoint"

    .prologue
    const/high16 v6, 0x4080

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 68
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v2, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->access$100()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v1, v2, v4

    .line 71
    .local v1, width:I
    iget-object v2, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->access$100()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v0, v2, v4

    .line 72
    .local v0, height:I
    iget-object v2, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_1

    .end local v1           #width:I
    :goto_0
    if-lez v0, :cond_2

    .end local v0           #height:I
    :goto_1
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    :cond_0
    return-void

    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_1
    move v1, v3

    .line 72
    goto :goto_0

    .end local v1           #width:I
    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method synthetic constructor <init>(ILio/rong/imkit/utils/AndroidEmoji$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;-><init>(I)V

    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 133
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 138
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 143
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 118
    invoke-direct {p0}, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 123
    .local v1, transY:I
    int-to-float v2, v1

    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->access$100()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 126
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Lio/rong/imkit/utils/AndroidEmoji$EmojiImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 103
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 104
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 105
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 107
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 108
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 111
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method
