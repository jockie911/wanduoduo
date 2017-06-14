.class public Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationDiscussionInfoEvent"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->setKey(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;
    .locals 1
    .parameter "key"

    .prologue
    .line 705
    new-instance v0, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;

    invoke-direct {v0, p0}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 715
    iput-object p1, p0, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->key:Ljava/lang/String;

    .line 716
    return-void
.end method
