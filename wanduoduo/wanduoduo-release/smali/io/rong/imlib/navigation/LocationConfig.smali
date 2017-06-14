.class public Lio/rong/imlib/navigation/LocationConfig;
.super Ljava/lang/Object;
.source "LocationConfig.java"


# instance fields
.field private configure:Z

.field private conversationTypes:[I

.field private distanceFilter:I

.field private maxParticipant:I

.field private refreshInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationTypes()[I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/rong/imlib/navigation/LocationConfig;->conversationTypes:[I

    return-object v0
.end method

.method public getDistanceFilter()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/rong/imlib/navigation/LocationConfig;->distanceFilter:I

    return v0
.end method

.method public getMaxParticipant()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lio/rong/imlib/navigation/LocationConfig;->maxParticipant:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lio/rong/imlib/navigation/LocationConfig;->refreshInterval:I

    return v0
.end method

.method public isConfigure()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lio/rong/imlib/navigation/LocationConfig;->configure:Z

    return v0
.end method

.method public setConfigure(Z)V
    .locals 0
    .parameter "configure"

    .prologue
    .line 20
    iput-boolean p1, p0, Lio/rong/imlib/navigation/LocationConfig;->configure:Z

    .line 21
    return-void
.end method

.method public setConversationTypes([I)V
    .locals 0
    .parameter "conversationTypes"

    .prologue
    .line 28
    iput-object p1, p0, Lio/rong/imlib/navigation/LocationConfig;->conversationTypes:[I

    .line 29
    return-void
.end method

.method public setDistanceFilter(I)V
    .locals 0
    .parameter "distanceFilter"

    .prologue
    .line 52
    iput p1, p0, Lio/rong/imlib/navigation/LocationConfig;->distanceFilter:I

    .line 53
    return-void
.end method

.method public setMaxParticipant(I)V
    .locals 0
    .parameter "maxParticipant"

    .prologue
    .line 36
    iput p1, p0, Lio/rong/imlib/navigation/LocationConfig;->maxParticipant:I

    .line 37
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .parameter "refreshInterval"

    .prologue
    .line 44
    iput p1, p0, Lio/rong/imlib/navigation/LocationConfig;->refreshInterval:I

    .line 45
    return-void
.end method
