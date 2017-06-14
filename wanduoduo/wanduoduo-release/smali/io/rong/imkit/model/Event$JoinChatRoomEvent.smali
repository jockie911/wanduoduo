.class public Lio/rong/imkit/model/Event$JoinChatRoomEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinChatRoomEvent"
.end annotation


# instance fields
.field chatRoomId:Ljava/lang/String;

.field defMessageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "chatRoomId"
    .parameter "defMessageCount"

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 477
    iput p2, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    .line 478
    return-void
.end method


# virtual methods
.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefMessageCount()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    return v0
.end method

.method public setChatRoomId(Ljava/lang/String;)V
    .locals 0
    .parameter "chatRoomId"

    .prologue
    .line 485
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setDefMessageCount(I)V
    .locals 0
    .parameter "defMessageCount"

    .prologue
    .line 493
    iput p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    .line 494
    return-void
.end method
