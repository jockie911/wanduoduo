.class Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;
.super Ljava/lang/Object;
.source "FastScrollerTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0
    .parameter "fastScroller"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    .line 22
    return-void
.end method

.method private showOrHideIndicator(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "sectionIndicator"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "event"
    .end parameter

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;->animateAlpha(F)V

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;->animateAlpha(F)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 26
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getSectionIndicator()Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    move-result-object v1

    .line 27
    .local v1, sectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;
    invoke-direct {p0, v1, p2}, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->showOrHideIndicator(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;Landroid/view/MotionEvent;)V

    .line 29
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2, p2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgress(Landroid/view/MotionEvent;)F

    move-result v0

    .line 30
    .local v0, scrollProgress:F
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2, v0, v3}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->scrollTo(FZ)V

    .line 31
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;->mFastScroller:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->moveHandleToPosition(F)V

    .line 32
    return v3
.end method
