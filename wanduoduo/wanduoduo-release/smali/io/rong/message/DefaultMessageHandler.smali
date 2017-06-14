.class public Lio/rong/message/DefaultMessageHandler;
.super Lio/rong/message/MessageHandler;
.source "DefaultMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/message/MessageHandler",
        "<",
        "Lio/rong/imlib/model/MessageContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lio/rong/message/MessageHandler;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .parameter "message"
    .parameter "content"

    .prologue
    .line 21
    return-void
.end method

.method public encodeMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 16
    return-void
.end method
