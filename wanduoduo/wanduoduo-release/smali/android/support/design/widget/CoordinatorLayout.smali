.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper; = null

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBehaviorTouchView:Landroid/view/View;

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field final mLayoutDependencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 99
    .local v0, pkg:Ljava/lang/Package;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 107
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 108
    new-instance v1, Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    .line 115
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 120
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    move-object v1, v2

    .line 99
    goto :goto_0

    .line 110
    :cond_1
    sput-object v2, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 111
    sput-object v2, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v8, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v6, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v6, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 144
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 145
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 146
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 147
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 148
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 149
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 171
    new-instance v6, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v6, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 185
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 187
    sget-object v6, Landroid/support/design/R$styleable;->CoordinatorLayout:[I

    sget v7, Landroid/support/design/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, a:Landroid/content/res/TypedArray;
    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_keylines:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 190
    .local v4, keylineArrayRes:I
    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 192
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 193
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v2, density:F
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v6

    .line 195
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 196
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v6, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    aput v7, v6, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v1           #count:I
    .end local v2           #density:F
    .end local v3           #i:I
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    sget-object v6, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    if-eqz v6, :cond_1

    .line 203
    sget-object v6, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    new-instance v7, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;

    invoke-direct {v7, p0, v8}, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V

    invoke-interface {v6, p0, v7}, Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;->setupForWindowInsets(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 205
    :cond_1
    new-instance v6, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v6, p0, v8}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V

    invoke-super {p0, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 206
    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7
    .parameter "insets"

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 778
    .end local p1
    .local v3, insets:Landroid/support/v4/view/WindowInsetsCompat;
    :goto_0
    return-object v3

    .line 761
    .end local v3           #insets:Landroid/support/v4/view/WindowInsetsCompat;
    .restart local p1
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    .local v5, z:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 762
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, child:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 764
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 765
    .local v4, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 767
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 770
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v0           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    move-object v3, p1

    .line 778
    .end local p1
    .restart local v3       #insets:Landroid/support/v4/view/WindowInsetsCompat;
    goto :goto_0

    .line 761
    .end local v3           #insets:Landroid/support/v4/view/WindowInsetsCompat;
    .restart local v1       #child:Landroid/view/View;
    .restart local p1
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getKeyline(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v1, :cond_0

    .line 545
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return v0

    .line 549
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 550
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 382
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 383
    .local v4, useCustomOrder:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 384
    .local v1, childCount:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 385
    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v2

    .line 386
    .local v2, childIndex:I
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v2           #childIndex:I
    :cond_0
    move v2, v3

    .line 385
    goto :goto_1

    .line 390
    :cond_1
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 391
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    :cond_2
    return-void
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 8
    .parameter "child"
    .parameter "layoutDirection"

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1073
    .local v6, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1074
    .local v3, parent:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 1075
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    iget v2, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 1076
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1077
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v7

    .line 1074
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1079
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 1084
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1085
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 1086
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1089
    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1090
    .local v4, out:Landroid/graphics/Rect;
    iget v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    .line 1090
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1092
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1093
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .parameter "child"
    .parameter "anchor"
    .parameter "layoutDirection"

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 989
    .local v2, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 990
    .local v0, anchorRect:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 991
    .local v1, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 992
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 994
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 995
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 14
    .parameter "child"
    .parameter "keyline"
    .parameter "layoutDirection"

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1010
    .local v7, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v11, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1011
    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v11

    .line 1010
    move/from16 v0, p3

    invoke-static {v11, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1013
    .local v1, absGravity:I
    and-int/lit8 v5, v1, 0x7

    .line 1014
    .local v5, hgrav:I
    and-int/lit8 v9, v1, 0x70

    .line 1015
    .local v9, vgrav:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    .line 1016
    .local v10, width:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    .line 1017
    .local v4, height:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1018
    .local v3, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1020
    .local v2, childHeight:I
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 1021
    sub-int p2, v10, p2

    .line 1024
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int v6, v11, v3

    .line 1025
    .local v6, left:I
    const/4 v8, 0x0

    .line 1027
    .local v8, top:I
    sparse-switch v5, :sswitch_data_0

    .line 1040
    :goto_0
    sparse-switch v9, :sswitch_data_1

    .line 1054
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v11

    iget v12, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    .line 1056
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int v12, v10, v12

    sub-int/2addr v12, v3

    iget v13, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    .line 1055
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1054
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1057
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v11

    iget v12, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    .line 1059
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int v12, v4, v12

    sub-int/2addr v12, v2

    iget v13, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .line 1058
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1057
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1061
    add-int v11, v6, v3

    add-int v12, v8, v2

    invoke-virtual {p1, v6, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1062
    return-void

    .line 1033
    :sswitch_0
    add-int/2addr v6, v3

    .line 1034
    goto :goto_0

    .line 1036
    :sswitch_1
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v6, v11

    goto :goto_0

    .line 1046
    :sswitch_2
    add-int/2addr v8, v2

    .line 1047
    goto :goto_1

    .line 1049
    :sswitch_3
    div-int/lit8 v11, v2, 0x2

    add-int/2addr v8, v11

    goto :goto_1

    .line 1027
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1040
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "name"

    .prologue
    const/16 v7, 0x2e

    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const/4 v5, 0x0

    .line 590
    :goto_0
    return-object v5

    .line 563
    :cond_0
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, fullName:Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 578
    .local v2, constructors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_1

    .line 579
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #constructors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 580
    .restart local v2       #constructors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 582
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 583
    .local v0, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    if-nez v0, :cond_2

    .line 584
    const/4 v5, 0x1

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 584
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 586
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 587
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 588
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    .end local v0           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    .end local v2           #constructors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v4           #fullName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 568
    move-object v4, p2

    .restart local v4       #fullName:Ljava/lang/String;
    goto :goto_1

    .line 571
    .end local v4           #fullName:Ljava/lang/String;
    :cond_4
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #fullName:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v4           #fullName:Ljava/lang/String;
    :cond_5
    move-object v4, p2

    goto :goto_2

    .line 591
    .restart local v4       #fullName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 592
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not inflate Behavior subclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 22
    .parameter "ev"
    .parameter "type"

    .prologue
    .line 396
    const/16 v16, 0x0

    .line 397
    .local v16, intercepted:Z
    const/16 v19, 0x0

    .line 399
    .local v19, newBlock:Z
    const/4 v12, 0x0

    .line 401
    .local v12, cancelEvent:Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v10

    .line 403
    .local v10, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v20, v0

    .line 404
    .local v20, topmostChildList:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 407
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v14

    .line 408
    .local v14, childCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v14, :cond_5

    .line 409
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 410
    .local v13, child:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 411
    .local v18, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 413
    .local v11, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v16, :cond_0

    if-eqz v19, :cond_3

    :cond_0
    if-eqz v10, :cond_3

    .line 416
    if-eqz v11, :cond_2

    .line 417
    if-nez v12, :cond_1

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 419
    .local v2, now:J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 422
    .end local v2           #now:J
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 408
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 424
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 427
    :pswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 434
    :cond_3
    if-nez v16, :cond_4

    if-eqz v11, :cond_4

    .line 435
    packed-switch p2, :pswitch_data_1

    .line 443
    :goto_2
    if-eqz v16, :cond_4

    .line 444
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 450
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v21

    .line 451
    .local v21, wasBlocking:Z
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    .line 452
    .local v17, isBlocking:Z
    if-eqz v17, :cond_6

    if-nez v21, :cond_6

    const/16 v19, 0x1

    .line 453
    :goto_3
    if-eqz v17, :cond_2

    if-nez v19, :cond_2

    .line 460
    .end local v11           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13           #child:Landroid/view/View;
    .end local v17           #isBlocking:Z
    .end local v18           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21           #wasBlocking:Z
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 462
    return v16

    .line 437
    .restart local v11       #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .restart local v13       #child:Landroid/view/View;
    .restart local v18       #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    .line 438
    goto :goto_2

    .line 440
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_2

    .line 452
    .restart local v17       #isBlocking:Z
    .restart local v21       #wasBlocking:Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 6

    .prologue
    .line 619
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 620
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 621
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 623
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 624
    .local v3, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 626
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->selectionSort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 631
    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 354
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 356
    .local v8, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_0

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 358
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 360
    .local v9, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, p0, v2, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 361
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 363
    .end local v0           #now:J
    .end local v9           #cancelEvent:Landroid/view/MotionEvent;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 366
    .end local v8           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 367
    .local v11, childCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 368
    invoke-virtual {p0, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 369
    .local v10, child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 370
    .local v13, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 367
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 372
    .end local v10           #child:Landroid/view/View;
    .end local v13           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    iput-boolean v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 373
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 0
    .parameter "gravity"

    .prologue
    .line 1116
    if-nez p0, :cond_0

    const/16 p0, 0x11

    .end local p0
    :cond_0
    return p0
.end method

.method private static resolveGravity(I)I
    .locals 0
    .parameter "gravity"

    .prologue
    .line 1100
    if-nez p0, :cond_0

    const p0, 0x800033

    .end local p0
    :cond_0
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 0
    .parameter "gravity"

    .prologue
    .line 1108
    if-nez p0, :cond_0

    const p0, 0x800035

    .end local p0
    :cond_0
    return p0
.end method

.method private static selectionSort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2719
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 2749
    :cond_0
    return-void

    .line 2723
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/view/View;

    .line 2724
    .local v0, array:[Landroid/view/View;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2725
    array-length v1, v0

    .line 2727
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 2728
    move v4, v2

    .line 2730
    .local v4, min:I
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2731
    aget-object v6, v0, v3

    aget-object v7, v0, v4

    invoke-interface {p1, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 2732
    move v4, v3

    .line 2730
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2736
    :cond_3
    if-eq v2, v4, :cond_4

    .line 2738
    aget-object v5, v0, v4

    .line 2739
    .local v5, minItem:Landroid/view/View;
    aget-object v6, v0, v2

    aput-object v6, v0, v4

    .line 2740
    aput-object v5, v0, v2

    .line 2727
    .end local v5           #minItem:Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2745
    .end local v3           #j:I
    .end local v4           #min:I
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2746
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    .line 2747
    aget-object v6, v0, v2

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .parameter "insets"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eq v0, p1, :cond_0

    .line 336
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 337
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 338
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 341
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 342
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 344
    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    .line 337
    goto :goto_0

    :cond_2
    move v1, v2

    .line 338
    goto :goto_1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .prologue
    .line 1335
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1

    .line 1337
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 1338
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1340
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1341
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1346
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1347
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1460
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchDependentViewRemoved(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1205
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 1206
    .local v2, childCount:I
    const/4 v5, 0x0

    .line 1207
    .local v5, viewSeen:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1208
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1209
    .local v1, child:Landroid/view/View;
    if-ne v1, p1, :cond_1

    .line 1211
    const/4 v5, 0x1

    .line 1207
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    if-eqz v5, :cond_0

    .line 1216
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1217
    .local v4, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1218
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v4, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1219
    invoke-virtual {v0, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 1223
    .end local v0           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1236
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 1237
    .local v2, childCount:I
    const/4 v5, 0x0

    .line 1238
    .local v5, viewSeen:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1239
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1240
    .local v1, child:Landroid/view/View;
    if-ne v1, p1, :cond_1

    .line 1242
    const/4 v5, 0x1

    .line 1238
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    if-eqz v5, :cond_0

    .line 1247
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1248
    .local v4, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1249
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v4, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1250
    invoke-virtual {v0, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    goto :goto_1

    .line 1254
    .end local v0           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method dispatchOnDependentViewChanged(Z)V
    .locals 13
    .parameter "fromNestedScroll"

    .prologue
    .line 1153
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1154
    .local v8, layoutDirection:I
    iget-object v12, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1155
    .local v4, childCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_6

    .line 1156
    iget-object v12, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1157
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1160
    .local v9, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 1161
    iget-object v12, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1163
    .local v1, checkChild:Landroid/view/View;
    iget-object v12, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v12, v1, :cond_0

    .line 1164
    invoke-virtual {p0, v3, v8}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1160
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1169
    .end local v1           #checkChild:Landroid/view/View;
    :cond_1
    iget-object v11, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1170
    .local v11, oldRect:Landroid/graphics/Rect;
    iget-object v10, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1171
    .local v10, newRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v3, v11}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1172
    const/4 v12, 0x1

    invoke-virtual {p0, v3, v12, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1173
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1155
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1176
    :cond_3
    invoke-virtual {p0, v3, v10}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1179
    add-int/lit8 v7, v6, 0x1

    :goto_2
    if-ge v7, v4, :cond_2

    .line 1180
    iget-object v12, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1181
    .restart local v1       #checkChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1182
    .local v2, checkLp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1184
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, v1, v3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1185
    if-nez p1, :cond_5

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1188
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1179
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1192
    :cond_5
    invoke-virtual {v0, p0, v1, v3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    .line 1194
    .local v5, handled:Z
    if-eqz p1, :cond_4

    .line 1197
    invoke-virtual {v2, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_3

    .line 1202
    .end local v0           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1           #checkChild:Landroid/view/View;
    .end local v2           #checkLp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3           #child:Landroid/view/View;
    .end local v5           #handled:Z
    .end local v7           #j:I
    .end local v9           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v10           #newRect:Landroid/graphics/Rect;
    .end local v11           #oldRect:Landroid/graphics/Rect;
    :cond_6
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1426
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1427
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1428
    .local v0, firstRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1429
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1430
    .local v1, secondRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, p2, v2, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1432
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_2

    .line 1435
    .end local v0           #firstRect:Landroid/graphics/Rect;
    .end local v1           #secondRect:Landroid/graphics/Rect;
    :goto_2
    return v3

    .restart local v0       #firstRect:Landroid/graphics/Rect;
    :cond_0
    move v2, v4

    .line 1428
    goto :goto_0

    .restart local v1       #secondRect:Landroid/graphics/Rect;
    :cond_1
    move v2, v4

    .line 1430
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1432
    goto :goto_2

    .end local v0           #firstRect:Landroid/graphics/Rect;
    .end local v1           #secondRect:Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 1435
    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1121
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1122
    .local v6, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1123
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1126
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 1130
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 1129
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1132
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 285
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    .line 286
    .local v2, state:[I
    const/4 v0, 0x0

    .line 288
    .local v0, changed:Z
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 289
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 293
    :cond_0
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 296
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 5

    .prologue
    .line 1289
    const/4 v2, 0x0

    .line 1290
    .local v2, hasDependencies:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1291
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1292
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1293
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1294
    const/4 v2, 0x1

    .line 1299
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v2, v4, :cond_1

    .line 1300
    if-eqz v2, :cond_3

    .line 1301
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1306
    :cond_1
    :goto_1
    return-void

    .line 1291
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1303
    .end local v0           #child:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1455
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1440
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1445
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1446
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 1450
    :goto_0
    return-object v0

    .line 1447
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1448
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1450
    .restart local p1
    :cond_1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .parameter "child"
    .parameter "transform"
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 871
    :cond_0
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 879
    :goto_0
    return-void

    .line 874
    :cond_1
    if-eqz p2, :cond_2

    .line 875
    invoke-virtual {p0, p1, p3}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 877
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .parameter "child"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1268
    .local v3, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 1269
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1271
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1272
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1273
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1274
    .local v4, other:Landroid/view/View;
    if-ne v4, p1, :cond_1

    .line 1272
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    :cond_1
    invoke-virtual {v3, p0, p1, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1278
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1282
    .end local v4           #other:Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 641
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 642
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "child"
    .parameter "layoutDirection"
    .parameter "anchorRect"
    .parameter "out"

    .prologue
    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 892
    .local v10, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v14, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 893
    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v14

    .line 892
    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 894
    .local v2, absGravity:I
    iget v14, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 895
    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v14

    .line 894
    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 898
    .local v1, absAnchorGravity:I
    and-int/lit8 v8, v2, 0x7

    .line 899
    .local v8, hgrav:I
    and-int/lit8 v12, v2, 0x70

    .line 900
    .local v12, vgrav:I
    and-int/lit8 v3, v1, 0x7

    .line 901
    .local v3, anchorHgrav:I
    and-int/lit8 v4, v1, 0x70

    .line 903
    .local v4, anchorVgrav:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 904
    .local v6, childWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 912
    .local v5, childHeight:I
    sparse-switch v3, :sswitch_data_0

    .line 915
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 925
    .local v9, left:I
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 928
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 939
    .local v11, top:I
    :goto_1
    sparse-switch v8, :sswitch_data_2

    .line 942
    sub-int/2addr v9, v6

    .line 952
    :goto_2
    :sswitch_0
    sparse-switch v12, :sswitch_data_3

    .line 955
    sub-int/2addr v11, v5

    .line 965
    :goto_3
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v13

    .line 966
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    .line 969
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v14

    iget v15, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    .line 971
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v15

    sub-int v15, v13, v15

    sub-int/2addr v15, v6

    iget v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    .line 970
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 969
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v14

    iget v15, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v15

    sub-int v15, v7, v15

    sub-int/2addr v15, v5

    iget v0, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    .line 973
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 972
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 976
    add-int v14, v9, v6

    add-int v15, v11, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v11, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 977
    return-void

    .line 918
    .end local v7           #height:I
    .end local v9           #left:I
    .end local v11           #top:I
    .end local v13           #width:I
    :sswitch_2
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 919
    .restart local v9       #left:I
    goto :goto_0

    .line 921
    .end local v9           #left:I
    :sswitch_3
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int v9, v14, v15

    .restart local v9       #left:I
    goto :goto_0

    .line 931
    :sswitch_4
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 932
    .restart local v11       #top:I
    goto :goto_1

    .line 934
    .end local v11           #top:I
    :sswitch_5
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int v11, v14, v15

    .restart local v11       #top:I
    goto :goto_1

    .line 948
    :sswitch_6
    div-int/lit8 v14, v6, 0x2

    sub-int/2addr v9, v14

    goto :goto_2

    .line 961
    :sswitch_7
    div-int/lit8 v14, v5, 0x2

    sub-int/2addr v11, v14

    goto :goto_3

    .line 912
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 925
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 939
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 952
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "child"
    .parameter "out"

    .prologue
    .line 856
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 857
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 858
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 7
    .parameter "child"

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 598
    .local v3, result:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v4, :cond_2

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 600
    .local v0, childClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 601
    .local v1, defaultBehavior:Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v0, :cond_0

    const-class v4, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 602
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1           #defaultBehavior:Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .restart local v1       #defaultBehavior:Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    if-nez v1, :cond_0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_0
    if-eqz v1, :cond_1

    .line 607
    :try_start_0
    invoke-interface {v1}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_1
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 615
    .end local v0           #childClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #defaultBehavior:Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_2
    return-object v3

    .line 608
    .restart local v0       #childClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #defaultBehavior:Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :catch_0
    move-exception v2

    .line 609
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "CoordinatorLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default behavior class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 651
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 646
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method hasDependencies(Landroid/view/View;)Z
    .locals 6
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    .line 1312
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1313
    .local v2, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v5, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1327
    :goto_0
    return v4

    .line 1317
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1318
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1319
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1320
    .local v3, other:Landroid/view/View;
    if-ne v3, p1, :cond_2

    .line 1318
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1323
    :cond_2
    invoke-virtual {v2, p0, p1, v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1327
    .end local v3           #other:Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1413
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1414
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 9
    .parameter "child"
    .parameter "layoutDirection"

    .prologue
    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1373
    .local v6, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 1374
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1375
    .local v0, anchorRect:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1376
    .local v2, childRect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1378
    .local v3, desiredChildRect:Landroid/graphics/Rect;
    iget-object v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v7, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1379
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1380
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1382
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    .line 1383
    .local v4, dx:I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v8

    .line 1385
    .local v5, dy:I
    if-eqz v4, :cond_0

    .line 1386
    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1388
    :cond_0
    if-eqz v5, :cond_1

    .line 1389
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1392
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 1394
    :cond_2
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1395
    .local v1, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_3

    .line 1396
    iget-object v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1400
    .end local v0           #anchorRect:Landroid/graphics/Rect;
    .end local v1           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #childRect:Landroid/graphics/Rect;
    .end local v3           #desiredChildRect:Landroid/graphics/Rect;
    .end local v4           #dx:I
    .end local v5           #dy:I
    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 216
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 217
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 222
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 224
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 229
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 230
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 235
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 236
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 238
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 243
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 244
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 824
    iget-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 826
    .local v0, inset:I
    :goto_0
    if-lez v0, :cond_0

    .line 827
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 828
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 831
    .end local v0           #inset:I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 825
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, cancelEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 472
    .local v0, action:I
    if-nez v0, :cond_0

    .line 473
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 476
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 478
    .local v2, intercepted:Z
    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 482
    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 483
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 486
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 808
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 809
    .local v4, layoutDirection:I
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 810
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 811
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 812
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 813
    .local v5, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 815
    .local v0, behavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 816
    :cond_0
    invoke-virtual {p0, v1, v4}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 810
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    .end local v0           #behavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1           #child:Landroid/view/View;
    .end local v5           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "layoutDirection"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 793
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 804
    :goto_0
    return-void

    .line 799
    :cond_1
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_2

    .line 800
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 802
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 675
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v25

    .line 679
    .local v25, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v27

    .line 680
    .local v27, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v26

    .line 681
    .local v26, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v24

    .line 682
    .local v24, paddingBottom:I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v22

    .line 683
    .local v22, layoutDirection:I
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    const/16 v19, 0x1

    .line 684
    .local v19, isRtl:Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    .line 685
    .local v30, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    .line 686
    .local v32, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 687
    .local v13, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 689
    .local v15, heightSize:I
    add-int v31, v25, v26

    .line 690
    .local v31, widthPadding:I
    add-int v14, v27, v24

    .line 691
    .local v14, heightPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v33

    .line 692
    .local v33, widthUsed:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v16

    .line 693
    .local v16, heightUsed:I
    const/4 v11, 0x0

    .line 695
    .local v11, childState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v9, 0x1

    .line 697
    .local v9, applyInsets:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 698
    .local v10, childCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_b

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 700
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 702
    .local v23, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v6, 0x0

    .line 703
    .local v6, keylineWidthUsed:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v3, :cond_2

    if-eqz v30, :cond_2

    .line 704
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v21

    .line 705
    .local v21, keylinePos:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 706
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v3

    .line 705
    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v20, v3, 0x7

    .line 708
    .local v20, keylineGravity:I
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    if-eqz v19, :cond_1

    :cond_0
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    if-eqz v19, :cond_8

    .line 710
    :cond_1
    const/4 v3, 0x0

    sub-int v8, v32, v26

    sub-int v8, v8, v21

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 717
    .end local v20           #keylineGravity:I
    .end local v21           #keylinePos:I
    :cond_2
    :goto_3
    move/from16 v5, p1

    .line 718
    .local v5, childWidthMeasureSpec:I
    move/from16 v7, p2

    .line 719
    .local v7, childHeightMeasureSpec:I
    if-eqz v9, :cond_3

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 723
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    add-int v17, v3, v8

    .line 724
    .local v17, horizInsets:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 725
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    add-int v28, v3, v8

    .line 727
    .local v28, vertInsets:I
    sub-int v3, v32, v17

    move/from16 v0, v30

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 729
    sub-int v3, v15, v28

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 733
    .end local v17           #horizInsets:I
    .end local v28           #vertInsets:I
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 734
    .local v2, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_4

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v3

    if-nez v3, :cond_5

    .line 736
    :cond_4
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 740
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 743
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v14

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 746
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 745
    invoke-static {v11, v3}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v11

    .line 698
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 683
    .end local v2           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childWidthMeasureSpec:I
    .end local v6           #keylineWidthUsed:I
    .end local v7           #childHeightMeasureSpec:I
    .end local v9           #applyInsets:Z
    .end local v10           #childCount:I
    .end local v11           #childState:I
    .end local v13           #heightMode:I
    .end local v14           #heightPadding:I
    .end local v15           #heightSize:I
    .end local v16           #heightUsed:I
    .end local v18           #i:I
    .end local v19           #isRtl:Z
    .end local v23           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v30           #widthMode:I
    .end local v31           #widthPadding:I
    .end local v32           #widthSize:I
    .end local v33           #widthUsed:I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 695
    .restart local v11       #childState:I
    .restart local v13       #heightMode:I
    .restart local v14       #heightPadding:I
    .restart local v15       #heightSize:I
    .restart local v16       #heightUsed:I
    .restart local v19       #isRtl:Z
    .restart local v30       #widthMode:I
    .restart local v31       #widthPadding:I
    .restart local v32       #widthSize:I
    .restart local v33       #widthUsed:I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 711
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #keylineWidthUsed:I
    .restart local v9       #applyInsets:Z
    .restart local v10       #childCount:I
    .restart local v18       #i:I
    .restart local v20       #keylineGravity:I
    .restart local v21       #keylinePos:I
    .restart local v23       #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_8
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    if-eqz v19, :cond_a

    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    if-eqz v19, :cond_2

    .line 713
    :cond_a
    const/4 v3, 0x0

    sub-int v8, v21, v25

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_3

    .line 749
    .end local v4           #child:Landroid/view/View;
    .end local v6           #keylineWidthUsed:I
    .end local v20           #keylineGravity:I
    .end local v21           #keylinePos:I
    .end local v23           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_b
    const/high16 v3, -0x100

    and-int/2addr v3, v11

    move/from16 v0, v33

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v29

    .line 751
    .local v29, width:I
    shl-int/lit8 v3, v11, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v12

    .line 753
    .local v12, height:I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 754
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 669
    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 671
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "consumed"

    .prologue
    .line 1588
    const/4 v8, 0x0

    .line 1590
    .local v8, handled:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1591
    .local v7, childCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 1592
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1593
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1594
    .local v10, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1591
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1598
    :cond_1
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1599
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1600
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_1

    .line 1604
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v10           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1605
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1607
    :cond_3
    return v8
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1611
    const/4 v7, 0x0

    .line 1613
    .local v7, handled:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1614
    .local v6, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 1615
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1616
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1617
    .local v9, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1614
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1621
    :cond_1
    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1622
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1623
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    or-int/2addr v7, v1

    goto :goto_1

    .line 1626
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v9           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return v7
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13
    .parameter "target"
    .parameter "dx"
    .parameter "dy"
    .parameter "consumed"

    .prologue
    .line 1553
    const/4 v11, 0x0

    .line 1554
    .local v11, xConsumed:I
    const/4 v12, 0x0

    .line 1555
    .local v12, yConsumed:I
    const/4 v7, 0x0

    .line 1557
    .local v7, accepted:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1558
    .local v8, childCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_4

    .line 1559
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1560
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1561
    .local v10, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1558
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1565
    :cond_1
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1566
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 1567
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v1, v3

    .line 1568
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1570
    if-lez p2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1572
    :goto_2
    if-lez p3, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1575
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    .line 1570
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 1571
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_2

    .line 1572
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 1573
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3

    .line 1579
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v10           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_4
    const/4 v1, 0x0

    aput v11, p4, v1

    .line 1580
    const/4 v1, 0x1

    aput v12, p4, v1

    .line 1582
    if-eqz v7, :cond_5

    .line 1583
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1585
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 12
    .parameter "target"
    .parameter "dxConsumed"
    .parameter "dyConsumed"
    .parameter "dxUnconsumed"
    .parameter "dyUnconsumed"

    .prologue
    .line 1529
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1530
    .local v9, childCount:I
    const/4 v8, 0x0

    .line 1532
    .local v8, accepted:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 1533
    invoke-virtual {p0, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1534
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1535
    .local v11, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1532
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1539
    :cond_1
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1540
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1541
    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1543
    const/4 v8, 0x1

    goto :goto_1

    .line 1547
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v11           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1548
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1550
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .parameter "child"
    .parameter "target"
    .parameter "nestedScrollAxes"

    .prologue
    .line 1485
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1486
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1487
    iput-object p2, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1489
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1490
    .local v6, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1491
    invoke-virtual {p0, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1492
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1493
    .local v8, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1490
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1498
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1499
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1502
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v8           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10
    .parameter "state"

    .prologue
    .line 2614
    instance-of v9, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v9, :cond_1

    .line 2615
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2637
    :cond_0
    return-void

    :cond_1
    move-object v8, p1

    .line 2619
    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 2620
    .local v8, ss:Landroid/support/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2622
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2624
    .local v1, behaviorStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, count:I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2625
    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2626
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2627
    .local v3, childId:I
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 2628
    .local v6, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2630
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    if-eqz v0, :cond_2

    .line 2631
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 2632
    .local v7, savedState:Landroid/os/Parcelable;
    if-eqz v7, :cond_2

    .line 2633
    invoke-virtual {v0, p0, v2, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2624
    .end local v7           #savedState:Landroid/os/Parcelable;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 2641
    new-instance v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2643
    .local v7, ss:Landroid/support/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2644
    .local v1, behaviorStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, count:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 2645
    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2646
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2647
    .local v3, childId:I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 2648
    .local v6, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2650
    .local v0, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {v0, p0, v2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 2653
    .local v8, state:Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    .line 2654
    invoke-virtual {v1, v3, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2644
    .end local v8           #state:Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2658
    .end local v0           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childId:I
    .end local v6           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iput-object v1, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2659
    return-object v7
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11
    .parameter "child"
    .parameter "target"
    .parameter "nestedScrollAxes"

    .prologue
    .line 1464
    const/4 v8, 0x0

    .line 1466
    .local v8, handled:Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1467
    .local v7, childCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 1468
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1469
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1470
    .local v10, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1471
    .local v0, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1472
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    .line 1474
    .local v6, accepted:Z
    or-int/2addr v8, v6

    .line 1476
    invoke-virtual {v10, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1467
    .end local v6           #accepted:Z
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1478
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1481
    .end local v0           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2           #view:Landroid/view/View;
    .end local v10           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return v8
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 1505
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v5, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1507
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1508
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1509
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1510
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1511
    .local v2, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1508
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1515
    :cond_0
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1516
    .local v4, viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 1517
    invoke-virtual {v4, p0, v3, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1519
    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1520
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1523
    .end local v2           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3           #view:Landroid/view/View;
    .end local v4           #viewBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1524
    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1525
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 491
    const/4 v12, 0x0

    .line 492
    .local v12, handled:Z
    const/4 v11, 0x0

    .line 493
    .local v11, cancelSuper:Z
    const/4 v10, 0x0

    .line 495
    .local v10, cancelEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    .line 497
    .local v8, action:I
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 500
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 501
    .local v13, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    .line 502
    .local v9, b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v9, :cond_1

    .line 503
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v9, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 508
    .end local v9           #b:Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13           #lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_7

    .line 509
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 519
    :cond_2
    :goto_0
    if-nez v12, :cond_3

    if-nez v8, :cond_3

    .line 523
    :cond_3
    if-eqz v10, :cond_4

    .line 524
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 527
    :cond_4
    const/4 v2, 0x1

    if-eq v8, v2, :cond_5

    const/4 v2, 0x3

    if-ne v8, v2, :cond_6

    .line 528
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 531
    :cond_6
    return v12

    .line 510
    :cond_7
    if-eqz v11, :cond_2

    .line 511
    if-nez v10, :cond_8

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 513
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 516
    .end local v0           #now:J
    :cond_8
    invoke-super {p0, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "child"
    .parameter "r"

    .prologue
    .line 844
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 845
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 846
    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .prologue
    .line 1354
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1357
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1360
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1361
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .parameter "disallowIntercept"

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 537
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 541
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "onHierarchyChangeListener"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 211
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "bg"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 254
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 262
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 262
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 264
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 265
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 267
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 269
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .parameter "color"
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end parameter

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .parameter "resId"
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter

    .prologue
    .line 320
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 308
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 309
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 311
    :cond_0
    return-void

    .end local v0           #visible:Z
    :cond_1
    move v0, v1

    .line 307
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
