.class public Lio/rong/imkit/model/Event$QuitChatRoomEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuitChatRoomEvent"
.end annotation


# instance fields
.field chatRoomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "chatRoomId"

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 502
    return-void
.end method


# virtual methods
.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lio/rong/imkit/model/Event$QuitChatRoomEvent;->chatRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public setChatRoomId(Ljava/lang/String;)V
    .locals 0
    .parameter "chatRoomId"

    .prologue
    .line 509
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 510
    return-void
.end method
