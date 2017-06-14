.class public Lio/rong/imkit/widget/provider/LocationInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
.source "LocationInputProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationInputProvider"


# instance fields
.field mContext:Lio/rong/imkit/RongContext;

.field mCurrentMessage:Lio/rong/imlib/model/Message;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 34
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider;->mContext:Lio/rong/imkit/RongContext;

    .line 35
    return-void
.end method


# virtual methods
.method public obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget v0, Lio/rong/imkit/R$string;->rc_plugins_location:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onDetached()V

    .line 67
    return-void
.end method

.method public onPluginClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 49
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/LocationInputProvider$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/widget/provider/LocationInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/LocationInputProvider;)V

    invoke-interface {v0, v1, v2}, Lio/rong/imkit/RongIM$LocationProvider;->onStartLocation(Landroid/content/Context;Lio/rong/imkit/RongIM$LocationProvider$LocationCallback;)V

    .line 62
    :cond_0
    return-void
.end method
