.class public abstract Landroid/support/design/widget/Snackbar$Callback;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$Callback$DismissEvent;
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .parameter "snackbar"
    .parameter "event"

    .prologue
    .line 108
    return-void
.end method

.method public onShown(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .parameter "snackbar"

    .prologue
    .line 118
    return-void
.end method
