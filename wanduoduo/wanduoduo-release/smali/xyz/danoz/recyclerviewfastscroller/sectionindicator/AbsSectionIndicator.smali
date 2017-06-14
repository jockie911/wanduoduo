.class public abstract Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;
.super Landroid/widget/FrameLayout;
.source "AbsSectionIndicator.java"

# interfaces
.implements Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final STYLEABLE:[I


# instance fields
.field private mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

.field private mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsSectionIndicator:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    const/4 v5, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->STYLEABLE:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, attributes:Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsSectionIndicator_rfs_section_indicator_layout:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getDefaultLayoutId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 39
    .local v2, layoutId:I
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 40
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance v3, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    invoke-direct {v3, p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    .line 46
    return-void

    .line 42
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layoutId:I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method


# virtual methods
.method public animateAlpha(F)V
    .locals 1
    .parameter "targetAlpha"

    .prologue
    .line 83
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    invoke-virtual {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->animateTo(F)V

    .line 84
    return-void
.end method

.method protected abstract applyCustomBackgroundColorAttribute(I)V
.end method

.method protected abstract getDefaultBackgroundColor()I
.end method

.method protected abstract getDefaultLayoutId()I
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 68
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 69
    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;-><init>(FF)V

    .line 72
    .local v0, boundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;
    new-instance v1, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    invoke-direct {v1, v0}, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;-><init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V

    iput-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    .line 74
    .end local v0           #boundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 78
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator<TT;>;"
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    invoke-virtual {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->getYPositionFromScrollProgress(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->setY(F)V

    .line 79
    return-void
.end method

.method public abstract setSection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
