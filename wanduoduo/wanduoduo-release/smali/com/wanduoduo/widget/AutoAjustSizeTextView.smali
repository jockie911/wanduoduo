.class public Lcom/wanduoduo/widget/AutoAjustSizeTextView;
.super Landroid/widget/TextView;
.source "AutoAjustSizeTextView.java"


# static fields
.field private static DEFAULT_MAX_TEXT_SIZE:F

.field private static DEFAULT_MIN_TEXT_SIZE:F


# instance fields
.field private maxTextSize:F

.field private minTextSize:F

.field private testPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x4120

    sput v0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->DEFAULT_MIN_TEXT_SIZE:F

    .line 13
    const/high16 v0, 0x4180

    sput v0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->DEFAULT_MAX_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->initialise()V

    .line 23
    return-void
.end method

.method private initialise()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->testPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->maxTextSize:F

    .line 29
    iget v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->maxTextSize:F

    sget v1, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->DEFAULT_MIN_TEXT_SIZE:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 30
    sget v0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->DEFAULT_MAX_TEXT_SIZE:F

    iput v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->maxTextSize:F

    .line 32
    :cond_0
    sget v0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->DEFAULT_MIN_TEXT_SIZE:F

    iput v0, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->minTextSize:F

    .line 33
    return-void
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 4
    .parameter "text"
    .parameter "textWidth"

    .prologue
    .line 42
    if-lez p2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 44
    .local v0, availableWidth:I
    iget v1, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->maxTextSize:F

    .line 45
    .local v1, trySize:F
    iget-object v2, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    :goto_0
    iget v2, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->minTextSize:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 47
    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    .line 48
    iget v2, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->minTextSize:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    .line 49
    iget v1, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->minTextSize:F

    .line 54
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->setTextSize(F)V

    .line 56
    .end local v0           #availableWidth:I
    .end local v1           #trySize:F
    :cond_1
    return-void

    .line 52
    .restart local v0       #availableWidth:I
    .restart local v1       #trySize:F
    :cond_2
    iget-object v2, p0, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 68
    if-eq p1, p3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->refitText(Ljava/lang/String;I)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/widget/AutoAjustSizeTextView;->refitText(Ljava/lang/String;I)V

    .line 64
    return-void
.end method
