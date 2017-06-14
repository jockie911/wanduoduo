.class public Lcom/bigkoo/pickerview/lib/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
    }
.end annotation


# static fields
.field private static final CENTERCONTENTOFFSET:F = 6.0f

.field private static final SCALECONTENT:F = 0.8f

.field private static final VELOCITYFLING:I = 0x5

.field static final lineSpacingMultiplier:F = 1.4f


# instance fields
.field adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

.field centerY:F

.field change:I

.field context:Landroid/content/Context;

.field customTextSize:Z

.field dividerColor:I

.field private drawCenterContentStart:I

.field private drawOutContentStart:I

.field firstLineY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field halfCircumference:I

.field handler:Landroid/os/Handler;

.field initPosition:I

.field isLoop:Z

.field itemHeight:F

.field itemsVisible:I

.field private label:Ljava/lang/String;

.field mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field private mOffset:I

.field maxTextHeight:I

.field maxTextWidth:I

.field measuredHeight:I

.field measuredWidth:I

.field onItemSelectedListener:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

.field paintCenterText:Landroid/graphics/Paint;

.field paintIndicator:Landroid/graphics/Paint;

.field paintOuterText:Landroid/graphics/Paint;

.field preCurrentIndex:I

.field private previousY:F

.field radius:I

.field secondLineY:F

.field private selectedItem:I

.field startTime:J

.field textColorCenter:I

.field textColorOut:I

.field textSize:I

.field totalScrollY:I

.field widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    const/16 v1, 0xb

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    .line 97
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->previousY:F

    .line 99
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->startTime:J

    .line 105
    iput v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mGravity:I

    .line 106
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    .line 107
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    .line 117
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$color;->pickerview_wheelview_textcolor_out:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorOut:I

    .line 118
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$color;->pickerview_wheelview_textcolor_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorCenter:I

    .line 119
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$color;->pickerview_wheelview_textcolor_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->dividerColor:I

    .line 121
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$dimen;->pickerview_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    .line 122
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$bool;->pickerview_customTextSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->customTextSize:Z

    .line 123
    if-eqz p2, :cond_0

    .line 124
    sget-object v1, Lcom/bigkoo/pickerview/R$styleable;->pickerview:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mGravity:I

    .line 126
    const/4 v1, 0x2

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorOut:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorOut:I

    .line 127
    const/4 v1, 0x3

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorCenter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorCenter:I

    .line 128
    const/4 v1, 0x4

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->dividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->dividerColor:I

    .line 129
    const/4 v1, 0x1

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    .line 131
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->initLoopView(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method private getContentText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    const-string v0, ""

    .line 454
    .end local p1
    :goto_0
    return-object v0

    .line 451
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/bigkoo/pickerview/model/IPickerViewData;

    if-eqz v0, :cond_1

    .line 452
    check-cast p1, Lcom/bigkoo/pickerview/model/IPickerViewData;

    .end local p1
    invoke-interface {p1}, Lcom/bigkoo/pickerview/model/IPickerViewData;->getPickerViewText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLoopMappingIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 432
    if-gez p1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 434
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    .line 439
    :cond_0
    :goto_0
    return p1

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 437
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    goto :goto_0
.end method

.method private initLoopView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 135
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->context:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/bigkoo/pickerview/lib/MessageHandler;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/MessageHandler;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->handler:Landroid/os/Handler;

    .line 137
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/bigkoo/pickerview/lib/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/lib/LoopViewGestureListener;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 138
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    .line 142
    iput v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    .line 145
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->initPaints()V

    .line 147
    return-void
.end method

.method private initPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorOut:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 154
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textColorCenter:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const v1, 0x3f8ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 160
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintIndicator:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintIndicator:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->dividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 170
    :cond_0
    return-void
.end method

.method private measureTextWidthHeight()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v5}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 209
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v5, v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bigkoo/pickerview/lib/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, s1:Ljava/lang/String;
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v8, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 211
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 212
    .local v4, textWidth:I
    iget v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextWidth:I

    if-le v4, v5, :cond_0

    .line 213
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextWidth:I

    .line 215
    :cond_0
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string v6, "\u661f\u671f"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v8, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 217
    .local v3, textHeight:I
    iget v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    if-le v3, v5, :cond_1

    .line 218
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v2           #s1:Ljava/lang/String;
    .end local v3           #textHeight:I
    .end local v4           #textWidth:I
    :cond_2
    const v5, 0x3fb33333

    iget v6, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    .line 222
    return-void
.end method

.method private measuredCenterContentStart(Ljava/lang/String;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 459
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 460
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mGravity:I

    sparse-switch v1, :sswitch_data_0

    .line 471
    :goto_0
    return-void

    .line 462
    :sswitch_0
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 465
    :sswitch_1
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 468
    :sswitch_2
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    goto :goto_0

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private measuredOutContentStart(Ljava/lang/String;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 475
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 476
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mGravity:I

    sparse-switch v1, :sswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 478
    :sswitch_0
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 481
    :sswitch_1
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 484
    :sswitch_2
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    goto :goto_0

    .line 476
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private remeasure()V
    .locals 6

    .prologue
    const-wide v4, 0x400921fb54442d18L

    const/high16 v2, 0x4000

    .line 173
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->measureTextWidthHeight()V

    .line 180
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->halfCircumference:I

    .line 182
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->halfCircumference:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredHeight:I

    .line 184
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->halfCircumference:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    .line 186
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->widthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    .line 188
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    .line 189
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    .line 190
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredHeight:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x40c0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->centerY:F

    .line 192
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 193
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    .line 200
    :cond_1
    :goto_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    goto :goto_1
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 249
    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/bigkoo/pickerview/adapter/WheelAdapter;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->selectedItem:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .parameter "paint"
    .parameter "str"

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, iRet:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 577
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 578
    .local v2, len:I
    new-array v3, v2, [F

    .line 579
    .local v3, widths:[F
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 580
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 581
    aget v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v3           #widths:[F
    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    if-nez v2, :cond_1

    .line 428
    :cond_0
    return-void

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 305
    .local v20, visibles:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->change:I

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->change:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v4}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v4

    rem-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    if-nez v2, :cond_4

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    if-gez v2, :cond_2

    .line 314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    .line 316
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    .line 329
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    rem-float/2addr v2, v3

    float-to-int v15, v2

    .line 331
    .local v15, itemHeightOffset:I
    const/4 v10, 0x0

    .line 332
    .local v10, counter:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    if-ge v10, v2, :cond_9

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v10

    sub-int v13, v2, v3

    .line 336
    .local v13, index:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    if-eqz v2, :cond_6

    .line 337
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/bigkoo/pickerview/lib/WheelView;->getLoopMappingIndex(I)I

    move-result v13

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v2, v13}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    .line 347
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 349
    goto :goto_2

    .line 309
    .end local v10           #counter:I
    .end local v13           #index:I
    .end local v15           #itemHeightOffset:I
    :catch_0
    move-exception v12

    .line 310
    .local v12, e:Ljava/lang/ArithmeticException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v12           #e:Ljava/lang/ArithmeticException;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    if-gez v2, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->preCurrentIndex:I

    goto :goto_1

    .line 339
    .restart local v10       #counter:I
    .restart local v13       #index:I
    .restart local v15       #itemHeightOffset:I
    :cond_6
    if-gez v13, :cond_7

    .line 340
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_3

    .line 341
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v13, v2, :cond_8

    .line 342
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_3

    .line 344
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v2, v13}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    goto :goto_3

    .line 352
    .end local v13           #index:I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->label:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 356
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    sub-int v11, v2, v3

    .line 358
    .local v11, drawRightContentStart:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->label:Ljava/lang/String;

    int-to-float v3, v11

    const/high16 v4, 0x40c0

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->centerY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    .end local v11           #drawRightContentStart:I
    :cond_a
    const/4 v10, 0x0

    .line 361
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    if-ge v10, v2, :cond_0

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    const v3, 0x3fb33333

    mul-float v14, v2, v3

    .line 366
    .local v14, itemHeight:F
    int-to-float v2, v10

    mul-float/2addr v2, v14

    int-to-float v3, v15

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->halfCircumference:I

    int-to-double v4, v4

    div-double v18, v2, v4

    .line 368
    .local v18, radian:D
    const-wide v2, 0x4056800000000000L

    const-wide v4, 0x400921fb54442d18L

    div-double v4, v18, v4

    const-wide v6, 0x4066800000000000L

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 370
    .local v8, angle:F
    const/high16 v2, 0x42b4

    cmpl-float v2, v8, v2

    if-gez v2, :cond_b

    const/high16 v2, -0x3d4c

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_c

    .line 371
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 427
    goto :goto_4

    .line 375
    :cond_c
    aget-object v2, v20, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/bigkoo/pickerview/lib/WheelView;->measuredCenterContentStart(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/bigkoo/pickerview/lib/WheelView;->measuredOutContentStart(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    int-to-double v2, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v17, v0

    .line 382
    .local v17, translateY:F
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 388
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 393
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c0

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 396
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 399
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 400
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c0

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 405
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 408
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->firstLineY:F

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->secondLineY:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 410
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawCenterContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40c0

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    aget-object v3, v20, v10

    invoke-interface {v2, v3}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 413
    .local v16, preSelectedItem:I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    .line 414
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bigkoo/pickerview/lib/WheelView;->selectedItem:I

    goto/16 :goto_6

    .line 418
    .end local v16           #preSelectedItem:I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 420
    const/high16 v2, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 421
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->drawOutContentStart:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->maxTextHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6
.end method

.method protected final onItemSelected()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->onItemSelectedListener:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/bigkoo/pickerview/lib/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/OnItemSelectedRunnable;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 491
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->widthMeasureSpec:I

    .line 492
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->remeasure()V

    .line 493
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredWidth:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->measuredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setMeasuredDimension(II)V

    .line 494
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 499
    .local v5, eventConsumed:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 531
    :pswitch_0
    if-nez v5, :cond_0

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 533
    .local v10, y:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    int-to-float v11, v11

    sub-float/2addr v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->radius:I

    int-to-double v14, v11

    mul-double v8, v12, v14

    .line 534
    .local v8, l:D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    float-to-double v12, v11

    add-double/2addr v12, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    float-to-double v14, v11

    div-double/2addr v12, v14

    double-to-int v3, v12

    .line 536
    .local v3, circlePosition:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    rem-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    rem-float v6, v11, v12

    .line 537
    .local v6, extraOffset:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemsVisible:I

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v3, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    mul-float/2addr v11, v12

    sub-float/2addr v11, v6

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/bigkoo/pickerview/lib/WheelView;->startTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x78

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 541
    sget-object v11, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bigkoo/pickerview/lib/WheelView;->smoothScroll(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    .line 549
    .end local v3           #circlePosition:I
    .end local v6           #extraOffset:F
    .end local v8           #l:D
    .end local v10           #y:F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 551
    const/4 v11, 0x1

    return v11

    .line 501
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->startTime:J

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/bigkoo/pickerview/lib/WheelView;->cancelFuture()V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->previousY:F

    goto :goto_0

    .line 507
    :pswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->previousY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float v4, v11, v12

    .line 508
    .local v4, dy:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->previousY:F

    .line 509
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    add-float/2addr v11, v4

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    .line 512
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    if-nez v11, :cond_0

    .line 513
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    neg-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    mul-float v7, v11, v12

    .line 514
    .local v7, top:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    invoke-interface {v11}, Lcom/bigkoo/pickerview/adapter/WheelAdapter;->getItemsCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    mul-float v2, v11, v12

    .line 515
    .local v2, bottom:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    float-to-double v14, v7

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    sub-float v7, v11, v4

    .line 521
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    cmpg-float v11, v11, v7

    if-gez v11, :cond_3

    .line 522
    float-to-int v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    goto/16 :goto_0

    .line 517
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    float-to-double v14, v2

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    sub-float v2, v11, v4

    goto :goto_1

    .line 523
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_0

    .line 524
    float-to-int v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    goto/16 :goto_0

    .line 544
    .end local v2           #bottom:F
    .end local v4           #dy:F
    .end local v7           #top:F
    .restart local v3       #circlePosition:I
    .restart local v6       #extraOffset:F
    .restart local v8       #l:D
    .restart local v10       #y:F
    :cond_4
    sget-object v11, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bigkoo/pickerview/lib/WheelView;->smoothScroll(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    goto/16 :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final scrollBy(F)V
    .locals 7
    .parameter "velocityY"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->cancelFuture()V

    .line 241
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/bigkoo/pickerview/lib/InertiaTimerTask;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 242
    return-void
.end method

.method public final setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->adapter:Lcom/bigkoo/pickerview/adapter/WheelAdapter;

    .line 279
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->remeasure()V

    .line 280
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 281
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1
    .parameter "currentItem"

    .prologue
    .line 268
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->initPosition:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    .line 270
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 271
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0
    .parameter "cyclic"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->isLoop:Z

    .line 257
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 571
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mGravity:I

    .line 572
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->label:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;)V
    .locals 0
    .parameter "OnItemSelectedListener"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->onItemSelectedListener:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    .line 275
    return-void
.end method

.method public final setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 260
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->customTextSize:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    .line 262
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    :cond_0
    return-void
.end method

.method smoothScroll(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V
    .locals 7
    .parameter "action"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->cancelFuture()V

    .line 226
    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    rem-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    .line 228
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 229
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->itemHeight:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    .line 235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/SmoothScrollTimerTask;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    invoke-direct {v1, p0, v2}, Lcom/bigkoo/pickerview/lib/SmoothScrollTimerTask;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 236
    return-void

    .line 231
    :cond_2
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    neg-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->mOffset:I

    goto :goto_0
.end method
