.class public Lio/rong/imkit/model/Event$SyncGroupEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncGroupEvent"
.end annotation


# instance fields
.field groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lio/rong/imkit/model/Event$SyncGroupEvent;->groups:Ljava/util/List;

    .line 419
    return-void
.end method


# virtual methods
.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lio/rong/imkit/model/Event$SyncGroupEvent;->groups:Ljava/util/List;

    return-object v0
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    iput-object p1, p0, Lio/rong/imkit/model/Event$SyncGroupEvent;->groups:Ljava/util/List;

    .line 427
    return-void
.end method
