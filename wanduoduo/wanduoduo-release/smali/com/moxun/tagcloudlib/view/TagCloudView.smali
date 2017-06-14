.class public Lcom/moxun/tagcloudlib/view/TagCloudView;
.super Landroid/view/ViewGroup;
.source "TagCloudView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;,
        Lcom/moxun/tagcloudlib/view/TagCloudView$Mode;
    }
.end annotation


# static fields
.field public static final MODE_DECELERATE:I = 0x1

.field public static final MODE_DISABLE:I = 0x0

.field public static final MODE_UNIFORM:I = 0x2

.field private static final TOUCH_SCALE_FACTOR:F = 0.8f

.field private static final TRACKBALL_SCALE_FACTOR:F = 10.0f


# instance fields
.field private centerX:F

.field private centerY:F

.field private darkColor:[F

.field private downX:F

.field private downY:F

.field private handler:Landroid/os/Handler;

.field private isOnTouch:Z

.field private layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private lightColor:[F

.field private mAngleX:F

.field private mAngleY:F

.field private mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

.field private minSize:I

.field public mode:I

.field private onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

.field private radius:F

.field private radiusPercent:F

.field private speed:F

.field private tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f00

    .line 80
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    .line 51
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 52
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 55
    const v0, 0x3f666666

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    .line 57
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F

    .line 58
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;

    invoke-direct {v0}, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;-><init>()V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x7ct 0xf2t 0x70t 0x3ft
        0xf8t 0xc2t 0x44t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f00

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    .line 51
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 52
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 55
    const v0, 0x3f666666

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    .line 57
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F

    .line 58
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;

    invoke-direct {v0}, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;-><init>()V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/moxun/tagcloudlib/view/TagCloudView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x7ct 0xf2t 0x70t 0x3ft
        0xf8t 0xc2t 0x44t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f00

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    .line 51
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 52
    iput v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 55
    const v0, 0x3f666666

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    .line 57
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F

    .line 58
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;

    invoke-direct {v0}, Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;-><init>()V

    iput-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/moxun/tagcloudlib/view/TagCloudView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x7ct 0xf2t 0x70t 0x3ft
        0xf8t 0xc2t 0x44t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerX:F

    return v0
.end method

.method static synthetic access$002(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerX:F

    return p1
.end method

.method static synthetic access$100(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerY:F

    return v0
.end method

.method static synthetic access$1000(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    return v0
.end method

.method static synthetic access$102(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/moxun/tagcloudlib/view/TagCloudView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->resetChildren()V

    return-void
.end method

.method static synthetic access$1200(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F

    return v0
.end method

.method static synthetic access$202(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F

    return p1
.end method

.method static synthetic access$300(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    return v0
.end method

.method static synthetic access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    return-object v0
.end method

.method static synthetic access$500(Lcom/moxun/tagcloudlib/view/TagCloudView;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F

    return-object v0
.end method

.method static synthetic access$600(Lcom/moxun/tagcloudlib/view/TagCloudView;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/moxun/tagcloudlib/view/TagCloudView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/moxun/tagcloudlib/view/TagCloudView;->addListener(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/moxun/tagcloudlib/view/TagCloudView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    return v0
.end method

.method private addListener(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/moxun/tagcloudlib/view/TagCloudView$2;

    invoke-direct {v0, p0, p2}, Lcom/moxun/tagcloudlib/view/TagCloudView$2;-><init>(Lcom/moxun/tagcloudlib/view/TagCloudView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/moxun/tagcloudlib/view/TagCloudView$3;

    invoke-direct {v0, p0, p2}, Lcom/moxun/tagcloudlib/view/TagCloudView$3;-><init>(Lcom/moxun/tagcloudlib/view/TagCloudView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const-string v0, "TagCloudView"

    const-string v1, "Build version is less than 15, the OnClickListener may be overwritten."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const v4, 0x3f4ccccd

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->downX:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->downY:F

    .line 334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    .line 337
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->downX:F

    sub-float v0, v2, v3

    .line 338
    .local v0, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->downY:F

    sub-float v1, v2, v3

    .line 339
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->isValidMove(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F

    div-float v2, v1, v2

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 341
    neg-float v2, v0

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 342
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->processTouch()V

    goto :goto_0

    .line 347
    .end local v0           #dx:F
    .end local v1           #dy:F
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setFocusableInTouchMode(Z)V

    .line 96
    new-instance v10, Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-direct {v10}, Lcom/moxun/tagcloudlib/view/TagCloud;-><init>()V

    iput-object v10, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    .line 97
    if-eqz p2, :cond_0

    .line 98
    sget-object v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 100
    .local v8, typedArray:Landroid/content/res/TypedArray;
    sget v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView_autoScrollMode:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, m:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mode:I

    .line 103
    sget v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView_lightColor:I

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 104
    .local v1, light:I
    invoke-virtual {p0, v1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setLightColor(I)V

    .line 106
    sget v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView_darkColor:I

    const/high16 v11, -0x100

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 107
    .local v0, dark:I
    invoke-virtual {p0, v0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setDarkColor(I)V

    .line 109
    sget v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView_radiusPercent:I

    iget v11, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 110
    .local v3, p:F
    invoke-virtual {p0, v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setRadiusPercent(F)V

    .line 112
    sget v10, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView_scrollSpeed:I

    const/high16 v11, 0x4000

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 113
    .local v5, s:F
    invoke-virtual {p0, v5}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setScrollSpeed(F)V

    .line 115
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .end local v0           #dark:I
    .end local v1           #light:I
    .end local v2           #m:Ljava/lang/String;
    .end local v3           #p:F
    .end local v5           #s:F
    .end local v8           #typedArray:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 119
    .local v9, wm:Landroid/view/WindowManager;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 120
    .local v4, point:Landroid/graphics/Point;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    if-lt v10, v11, :cond_1

    .line 121
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 126
    :goto_0
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 127
    .local v7, screenWidth:I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 128
    .local v6, screenHeight:I
    if-ge v6, v7, :cond_2

    .end local v6           #screenHeight:I
    :goto_1
    iput v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->minSize:I

    .line 129
    return-void

    .line 123
    .end local v7           #screenWidth:I
    :cond_1
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    iput v10, v4, Landroid/graphics/Point;->x:I

    .line 124
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    iput v10, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    .restart local v6       #screenHeight:I
    .restart local v7       #screenWidth:I
    :cond_2
    move v6, v7

    .line 128
    goto :goto_1
.end method

.method private initFromAdapter()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;

    invoke-direct {v0, p0}, Lcom/moxun/tagcloudlib/view/TagCloudView$1;-><init>(Lcom/moxun/tagcloudlib/view/TagCloudView;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method private isValidMove(FF)Z
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 354
    .local v0, minDistance:I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processTouch()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    invoke-virtual {v0, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleX(F)V

    .line 360
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    iget v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    invoke-virtual {v0, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleY(F)V

    .line 361
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-virtual {v0}, Lcom/moxun/tagcloudlib/view/TagCloud;->update()V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->resetChildren()V

    .line 364
    return-void
.end method

.method private resetChildren()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->removeAllViews()V

    .line 239
    iget-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-virtual {v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moxun/tagcloudlib/view/Tag;

    .line 240
    .local v0, tag:Lcom/moxun/tagcloudlib/view/Tag;
    invoke-virtual {v0}, Lcom/moxun/tagcloudlib/view/Tag;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/moxun/tagcloudlib/view/TagCloudView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 242
    .end local v0           #tag:Lcom/moxun/tagcloudlib/view/Tag;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoScrollMode()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mode:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 267
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public onChange()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->initFromAdapter()V

    .line 369
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 278
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 279
    invoke-virtual {p0, v1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, child:Landroid/view/View;
    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-virtual {v5, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->get(I)Lcom/moxun/tagcloudlib/view/Tag;

    move-result-object v3

    .line 281
    .local v3, tag:Lcom/moxun/tagcloudlib/view/Tag;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 282
    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getColor()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/moxun/tagcloudlib/view/TagsAdapter;->onThemeColorChanged(Landroid/view/View;I)V

    .line 283
    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getScale()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 284
    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getScale()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 286
    iget v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerX:F

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getLoc2DX()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 287
    .local v2, left:I
    iget v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->centerY:F

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/Tag;->getLoc2DY()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 289
    .local v4, top:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 278
    .end local v2           #left:I
    .end local v4           #top:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Lcom/moxun/tagcloudlib/view/Tag;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 249
    .local v1, contentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 250
    .local v0, contentHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 251
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 253
    .local v4, heightMode:I
    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v6, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    :cond_0
    if-ne v5, v9, :cond_1

    move v2, v1

    .line 258
    .local v2, dimensionX:I
    :goto_0
    if-ne v4, v9, :cond_2

    move v3, v0

    .line 259
    .local v3, dimensionY:I
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setMeasuredDimension(II)V

    .line 261
    invoke-virtual {p0, v8, v8}, Lcom/moxun/tagcloudlib/view/TagCloudView;->measureChildren(II)V

    .line 262
    return-void

    .line 257
    .end local v2           #dimensionX:I
    .end local v3           #dimensionY:I
    :cond_1
    iget v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->minSize:I

    iget-object v7, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v6, v7

    goto :goto_0

    .line 258
    .restart local v2       #dimensionX:I
    :cond_2
    iget v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->minSize:I

    iget-object v7, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v3, v6, v7

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/high16 v4, 0x4120

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 302
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 304
    .local v1, y:F
    iget v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 305
    neg-float v2, v0

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 307
    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    invoke-virtual {v2, v3}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleX(F)V

    .line 308
    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    iget v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    invoke-virtual {v2, v3}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleY(F)V

    .line 309
    iget-object v2, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-virtual {v2}, Lcom/moxun/tagcloudlib/view/TagCloud;->update()V

    .line 311
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->resetChildren()V

    .line 312
    const/4 v2, 0x1

    return v2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;

    invoke-virtual {v0}, Lcom/moxun/tagcloudlib/view/TagCloud;->reset()V

    .line 296
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->resetChildren()V

    .line 297
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const v3, 0x3d23d70a

    const v2, 0x3ca3d70a

    .line 373
    iget-boolean v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->isOnTouch:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mode:I

    if-eqz v0, :cond_4

    .line 374
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 375
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 376
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 378
    :cond_0
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 379
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 381
    :cond_1
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    const v1, -0x42dc28f6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 382
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F

    .line 384
    :cond_2
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 385
    iget v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->processTouch()V

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method public final setAdapter(Lcom/moxun/tagcloudlib/view/TagsAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    .line 142
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;

    invoke-virtual {v0, p0}, Lcom/moxun/tagcloudlib/view/TagsAdapter;->setOnDataSetChangeListener(Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->onChange()V

    .line 144
    return-void
.end method

.method public setAutoScrollMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 132
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->mode:I

    .line 133
    return-void
.end method

.method public setDarkColor(I)V
    .locals 5
    .parameter "color"

    .prologue
    const/high16 v4, 0x437f

    const/high16 v3, 0x3f80

    .line 158
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 159
    .local v0, argb:[F
    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 160
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 161
    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 162
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 164
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F

    .line 165
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->onChange()V

    .line 166
    return-void
.end method

.method public setLightColor(I)V
    .locals 5
    .parameter "color"

    .prologue
    const/high16 v4, 0x437f

    const/high16 v3, 0x3f80

    .line 147
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 148
    .local v0, argb:[F
    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 149
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 150
    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 151
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 153
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F

    .line 154
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->onChange()V

    .line 155
    return-void
.end method

.method public setOnTagClickListener(Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->onTagClickListener:Lcom/moxun/tagcloudlib/view/TagCloudView$OnTagClickListener;

    .line 396
    return-void
.end method

.method public setRadiusPercent(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 169
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "percent value not in range 0 to 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F

    .line 173
    invoke-virtual {p0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->onChange()V

    .line 175
    return-void
.end method

.method public setScrollSpeed(F)V
    .locals 0
    .parameter "scrollSpeed"

    .prologue
    .line 233
    iput p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView;->speed:F

    .line 234
    return-void
.end method
