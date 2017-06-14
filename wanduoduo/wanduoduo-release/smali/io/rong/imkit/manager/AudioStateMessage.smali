.class public Lio/rong/imkit/manager/AudioStateMessage;
.super Ljava/lang/Object;
.source "AudioStateMessage.java"


# instance fields
.field public obj:Ljava/lang/Object;

.field public what:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lio/rong/imkit/manager/AudioStateMessage;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lio/rong/imkit/manager/AudioStateMessage;

    invoke-direct {v0}, Lio/rong/imkit/manager/AudioStateMessage;-><init>()V

    return-object v0
.end method
