.class public Lio/rong/eventbus/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lio/rong/eventbus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/eventbus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Honeycomb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/eventbus/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/rong/eventbus/util/ErrorDialogConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lio/rong/eventbus/util/ErrorDialogFragmentFactory;-><init>(Lio/rong/eventbus/util/ErrorDialogConfig;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 1
    .parameter "event"
    .parameter "arguments"

    .prologue
    .line 92
    new-instance v0, Lio/rong/eventbus/util/ErrorDialogFragments$Honeycomb;

    invoke-direct {v0}, Lio/rong/eventbus/util/ErrorDialogFragments$Honeycomb;-><init>()V

    .line 93
    .local v0, errorFragment:Lio/rong/eventbus/util/ErrorDialogFragments$Honeycomb;
    invoke-virtual {v0, p2}, Lio/rong/eventbus/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lio/rong/eventbus/util/ErrorDialogFragmentFactory$Honeycomb;->createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
