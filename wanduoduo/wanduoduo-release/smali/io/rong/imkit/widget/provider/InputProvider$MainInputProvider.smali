.class public abstract Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider;
.source "InputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/InputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MainInputProvider"
.end annotation


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 222
    return-void
.end method


# virtual methods
.method public abstract obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract onActive(Landroid/content/Context;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
.end method

.method public abstract onInactive(Landroid/content/Context;)V
.end method

.method public onInputPause()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onInputResume(Lio/rong/imkit/widget/InputView;Lio/rong/imlib/model/Conversation;)V
    .locals 0
    .parameter "inputView"
    .parameter "conversation"

    .prologue
    .line 270
    return-void
.end method

.method public abstract onSwitch(Landroid/content/Context;)V
.end method
