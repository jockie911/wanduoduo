.class public Lio/rong/push/core/PushProtocalStack$MessageOutputStream;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOutputStream"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    .line 724
    return-void
.end method


# virtual methods
.method public writeMessage(Lio/rong/push/core/PushProtocalStack$Message;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lio/rong/push/core/PushProtocalStack$Message;->write(Ljava/io/OutputStream;)V

    .line 728
    iget-object v0, p0, Lio/rong/push/core/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 729
    return-void
.end method
