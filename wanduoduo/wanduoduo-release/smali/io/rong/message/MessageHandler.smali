.class public abstract Lio/rong/message/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/rong/imlib/model/MessageContent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field protected mHandleMessageListener:Lio/rong/message/IHandleMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    .local p0, this:Lio/rong/message/MessageHandler;,"Lio/rong/message/MessageHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/rong/message/MessageHandler;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeMessage(Lio/rong/imlib/model/Message;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lio/rong/message/MessageHandler;,"Lio/rong/message/MessageHandler<TT;>;"
    iget-object v0, p0, Lio/rong/message/MessageHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setHandleMessageListener(Lio/rong/message/IHandleMessageListener;)V
    .locals 0
    .parameter "mHandleMessageListener"

    .prologue
    .line 36
    .local p0, this:Lio/rong/message/MessageHandler;,"Lio/rong/message/MessageHandler<TT;>;"
    iput-object p1, p0, Lio/rong/message/MessageHandler;->mHandleMessageListener:Lio/rong/message/IHandleMessageListener;

    .line 37
    return-void
.end method
