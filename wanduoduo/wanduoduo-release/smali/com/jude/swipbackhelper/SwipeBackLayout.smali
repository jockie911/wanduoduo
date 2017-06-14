.class public Lcom/jude/swipbackhelper/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DEFAULT_SCROLL_THRESHOLD:F = 0.3f

.field private static final FULL_ALPHA:I = 0xff

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final OVERSCROLL_DISTANCE:I = 0xa

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLeft:I

.field private mContentView:Landroid/view/View;

.field private mDisallowIntercept:Z

.field private mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

.field private mEnable:Z

.field private mInLayout:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jude/swipbackhelper/SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrollPercent:F

.field private mScrollThreshold:F

.field mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrackingEdge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jude/swipbackhelper/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jude/swipbackhelper/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const v4, 0x3e99999a

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F

    .line 59
    iput-boolean v5, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mEnable:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDisallowIntercept:Z

    .line 80
    const/high16 v2, -0x6700

    iput v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimColor:I

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 101
    new-instance v2, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/jude/swipbackhelper/SwipeBackLayout;Lcom/jude/swipbackhelper/SwipeBackLayout$1;)V

    invoke-static {p0, v2}, Lcom/jude/swipbackhelper/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/jude/swipbackhelper/ViewDragHelper$Callback;)Lcom/jude/swipbackhelper/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    .line 103
    sget v2, Lcom/jude/swipbackhelper/R$drawable;->shadow_left:I

    invoke-virtual {p0, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setShadow(I)V

    .line 105
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v0, density:F
    const/high16 v2, 0x43c8

    mul-float v1, v2, v0

    .line 107
    .local v1, minVel:F
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setEdgeSize(I)V

    .line 108
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/jude/swipbackhelper/ViewDragHelper;->setMinVelocity(F)V

    .line 109
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    const/high16 v3, 0x4000

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/jude/swipbackhelper/ViewDragHelper;->setMaxVelocity(F)V

    .line 110
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v2, p1, v4}, Lcom/jude/swipbackhelper/ViewDragHelper;->setSensitivity(Landroid/content/Context;F)V

    .line 111
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v2, v5}, Lcom/jude/swipbackhelper/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/jude/swipbackhelper/SwipeBackLayout;)Lcom/jude/swipbackhelper/ViewDragHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jude/swipbackhelper/SwipeBackLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I

    return v0
.end method

.method static synthetic access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F

    return v0
.end method

.method static synthetic access$402(Lcom/jude/swipbackhelper/SwipeBackLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F

    return p1
.end method

.method static synthetic access$500(Lcom/jude/swipbackhelper/SwipeBackLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jude/swipbackhelper/SwipeBackLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I

    return v0
.end method

.method static synthetic access$602(Lcom/jude/swipbackhelper/SwipeBackLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I

    return p1
.end method

.method static synthetic access$700(Lcom/jude/swipbackhelper/SwipeBackLayout;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F

    return v0
.end method

.method static synthetic access$800(Lcom/jude/swipbackhelper/SwipeBackLayout;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 302
    iget v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimColor:I

    const/high16 v4, -0x100

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v3, 0x18

    .line 303
    .local v1, baseAlpha:I
    int-to-float v3, v1

    iget v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 304
    .local v0, alpha:I
    shl-int/lit8 v3, v0, 0x18

    iget v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int v2, v3, v4

    .line 305
    .local v2, color:I
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 306
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 307
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 311
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 313
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimOpacity:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 132
    return-void
.end method


# virtual methods
.method public addSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 340
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010054

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 327
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 328
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 331
    .local v2, decor:Landroid/view/ViewGroup;
    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 332
    .local v3, decorChild:Landroid/view/View;
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v2, :cond_1

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #decorChild:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3       #decorChild:Landroid/view/View;
    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 336
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 337
    invoke-virtual {p0, v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->addView(Landroid/view/View;)V

    .line 338
    invoke-direct {p0, v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 353
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimOpacity:F

    .line 354
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 357
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 292
    .local v0, drawContent:Z
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 293
    .local v1, ret:Z
    iget v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    .line 294
    invoke-virtual {v2}, Lcom/jude/swipbackhelper/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 298
    :cond_0
    return v1

    .line 290
    .end local v0           #drawContent:Z
    .end local v1           #ret:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-boolean v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDisallowIntercept:Z

    if-eqz v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v2, p1}, Lcom/jude/swipbackhelper/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mInLayout:Z

    .line 274
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I

    iget v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 276
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 275
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 278
    :cond_0
    iput-boolean v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mInLayout:Z

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-boolean v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mEnable:Z

    if-nez v2, :cond_0

    .line 264
    :goto_0
    return v1

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v2, p1}, Lcom/jude/swipbackhelper/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public removeFromActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 349
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 345
    .local v1, decorChild:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->removeView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 286
    :cond_0
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 234
    .local v0, childWidth:I
    const/4 v1, 0x0

    .local v1, left:I
    const/4 v2, 0x0

    .line 235
    .local v2, top:I
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0xa

    .line 236
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    iget-object v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v1, v2}, Lcom/jude/swipbackhelper/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 237
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->invalidate()V

    .line 238
    return-void
.end method

.method public setDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDisallowIntercept:Z

    .line 269
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 157
    iput p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I

    .line 158
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    iget v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/ViewDragHelper;->setEdgeSize(I)V

    .line 159
    return-void
.end method

.method public setEdgeSizePercent(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I

    .line 164
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    iget v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/ViewDragHelper;->setEdgeSize(I)V

    .line 165
    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mEnable:Z

    .line 136
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 145
    iput p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrimColor:I

    .line 146
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->invalidate()V

    .line 147
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 212
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold value should be between 0 and 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iput p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F

    .line 216
    return-void
.end method

.method public setSensitivity(Landroid/content/Context;F)V
    .locals 1
    .parameter "context"
    .parameter "sensitivity"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jude/swipbackhelper/ViewDragHelper;->setSensitivity(Landroid/content/Context;F)V

    .line 123
    return-void
.end method

.method public setShadow(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setShadow(Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {p0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->invalidate()V

    .line 222
    return-void
.end method

.method public setSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->addSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V

    .line 177
    return-void
.end method
