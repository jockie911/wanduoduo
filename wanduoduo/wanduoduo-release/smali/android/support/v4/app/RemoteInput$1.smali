.class final Landroid/support/v4/app/RemoteInput$1;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 7
    .parameter "resultKey"
    .parameter "label"
    .parameter "choices"
    .parameter "allowFreeFormInput"
    .parameter "extras"

    .prologue
    .line 268
    new-instance v0, Landroid/support/v4/app/RemoteInput;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Landroid/support/v4/app/RemoteInput$1;)V

    return-object v0
.end method

.method public bridge synthetic build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/RemoteInput$1;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/app/RemoteInput;
    .locals 1
    .parameter "size"

    .prologue
    .line 273
    new-array v0, p1, [Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/support/v4/app/RemoteInput$1;->newArray(I)[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method
