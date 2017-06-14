.class public Lio/rong/imkit/model/Event$NotificationUserInfoEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationUserInfoEvent"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->setKey(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imkit/model/Event$NotificationUserInfoEvent;
    .locals 1
    .parameter "key"

    .prologue
    .line 664
    new-instance v0, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;

    invoke-direct {v0, p0}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 674
    iput-object p1, p0, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->key:Ljava/lang/String;

    .line 675
    return-void
.end method
