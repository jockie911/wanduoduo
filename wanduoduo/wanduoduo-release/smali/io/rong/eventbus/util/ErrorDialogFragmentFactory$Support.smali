.class public Lio/rong/eventbus/util/ErrorDialogFragmentFactory$Support;
.super Lio/rong/eventbus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/eventbus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/eventbus/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/rong/eventbus/util/ErrorDialogConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lio/rong/eventbus/util/ErrorDialogFragmentFactory;-><init>(Lio/rong/eventbus/util/ErrorDialogConfig;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "event"
    .parameter "arguments"

    .prologue
    .line 77
    new-instance v0, Lio/rong/eventbus/util/ErrorDialogFragments$Support;

    invoke-direct {v0}, Lio/rong/eventbus/util/ErrorDialogFragments$Support;-><init>()V

    .line 78
    .local v0, errorFragment:Lio/rong/eventbus/util/ErrorDialogFragments$Support;
    invoke-virtual {v0, p2}, Lio/rong/eventbus/util/ErrorDialogFragments$Support;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lio/rong/eventbus/util/ErrorDialogFragmentFactory$Support;->createErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
