.class public Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;
.super Ljava/lang/Object;
.source "DefaultSectionIndicatorAlphaAnimator.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private final mSectionIndicatorView:Landroid/view/View;

.field private mTargetAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "sectionIndicatorView"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mTargetAlpha:F

    .line 17
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mSectionIndicatorView:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mSectionIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    return-void
.end method


# virtual methods
.method public animateTo(F)V
    .locals 6
    .parameter "target"

    .prologue
    .line 22
    iget v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mTargetAlpha:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mSectionIndicatorView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mTargetAlpha:F

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 28
    .local v0, alphaAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 30
    iput p1, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->mTargetAlpha:F

    goto :goto_0
.end method
