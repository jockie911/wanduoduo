.class public Lio/rong/imkit/mention/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    sput-object v0, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 96
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 97
    .local v4, y:F
    iget v3, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 99
    .local v3, oldChoose:I
    iget-object v2, p0, Lio/rong/imkit/mention/SideBar;->onTouchingLetterChangedListener:Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;

    .line 101
    .local v2, listener:Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lio/rong/imkit/mention/SideBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 103
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    .line 114
    sget v5, Lio/rong/imkit/R$drawable;->rc_bg_sidebar:I

    invoke-virtual {p0, v5}, Lio/rong/imkit/mention/SideBar;->setBackgroundResource(I)V

    .line 115
    if-eq v3, v1, :cond_2

    .line 116
    if-ltz v1, :cond_2

    sget-object v5, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    sget-object v5, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v5, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 121
    iget-object v5, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_1
    iput v1, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 125
    invoke-virtual {p0}, Lio/rong/imkit/mention/SideBar;->invalidate()V

    .line 134
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 105
    :pswitch_0
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v5}, Lio/rong/imkit/mention/SideBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const/4 v5, -0x1

    iput v5, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    .line 107
    invoke-virtual {p0}, Lio/rong/imkit/mention/SideBar;->invalidate()V

    .line 108
    iget-object v5, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 109
    iget-object v5, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p0}, Lio/rong/imkit/mention/SideBar;->getHeight()I

    move-result v0

    .line 72
    .local v0, height:I
    invoke-virtual {p0}, Lio/rong/imkit/mention/SideBar;->getWidth()I

    move-result v3

    .line 73
    .local v3, width:I
    sget-object v6, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 74
    .local v2, singleHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 75
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41f0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget v6, p0, Lio/rong/imkit/mention/SideBar;->choose:I

    if-ne v1, v6, :cond_0

    .line 81
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    const-string v7, "#FFFFFF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 85
    :cond_0
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 86
    .local v4, xPos:F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 87
    .local v5, yPos:F
    sget-object v6, Lio/rong/imkit/mention/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    iget-object v6, p0, Lio/rong/imkit/mention/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v4           #xPos:F
    .end local v5           #yPos:F
    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 143
    iput-object p1, p0, Lio/rong/imkit/mention/SideBar;->onTouchingLetterChangedListener:Lio/rong/imkit/mention/SideBar$OnTouchingLetterChangedListener;

    .line 144
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "mTextDialog"

    .prologue
    .line 48
    iput-object p1, p0, Lio/rong/imkit/mention/SideBar;->mTextDialog:Landroid/widget/TextView;

    .line 49
    return-void
.end method
