.class public Lcom/wanduoduo/widget/SideLetterBar;
.super Landroid/view/View;
.source "SideLetterBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private onLetterChangedListener:Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;

.field private overlay:Landroid/widget/TextView;

.field private paint:Landroid/graphics/Paint;

.field private showBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5b9a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 75
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 76
    .local v4, y:F
    iget v3, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 77
    .local v3, oldChoose:I
    iget-object v2, p0, Lcom/wanduoduo/widget/SideLetterBar;->onLetterChangedListener:Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;

    .line 78
    .local v2, listener:Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 80
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return v8

    .line 82
    :pswitch_0
    iput-boolean v8, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    .line 83
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 84
    if-ltz v1, :cond_0

    sget-object v5, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 85
    sget-object v5, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;->onLetterChanged(Ljava/lang/String;)V

    .line 86
    iput v1, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 87
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->invalidate()V

    .line 88
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 98
    if-ltz v1, :cond_0

    sget-object v5, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 99
    sget-object v5, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;->onLetterChanged(Ljava/lang/String;)V

    .line 100
    iput v1, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 101
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->invalidate()V

    .line 102
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :pswitch_2
    iput-boolean v7, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    .line 111
    const/4 v5, -0x1

    iput v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    .line 112
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->invalidate()V

    .line 113
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->showBg:Z

    if-eqz v6, :cond_0

    .line 48
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getHeight()I

    move-result v0

    .line 52
    .local v0, height:I
    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getWidth()I

    move-result v3

    .line 53
    .local v3, width:I
    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 54
    .local v2, singleHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 55
    iget-object v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0802df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->choose:I

    if-ne v1, v6, :cond_1

    .line 61
    iget-object v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/SideLetterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 65
    .local v4, xPos:F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 66
    .local v5, yPos:F
    sget-object v6, Lcom/wanduoduo/widget/SideLetterBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v6, p0, Lcom/wanduoduo/widget/SideLetterBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v4           #xPos:F
    .end local v5           #yPos:F
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnLetterChangedListener(Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;)V
    .locals 0
    .parameter "onLetterChangedListener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wanduoduo/widget/SideLetterBar;->onLetterChangedListener:Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;

    .line 128
    return-void
.end method

.method public setOverlay(Landroid/widget/TextView;)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wanduoduo/widget/SideLetterBar;->overlay:Landroid/widget/TextView;

    .line 41
    return-void
.end method
