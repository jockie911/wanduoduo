.class public final Lrx/exceptions/UnsubscribeFailedException;
.super Ljava/lang/RuntimeException;
.source "UnsubscribeFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x3fc38e1f743aa0eeL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void

    .line 47
    .restart local p2
    :cond_0
    new-instance p2, Ljava/lang/NullPointerException;

    .end local p2
    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void

    .line 34
    .restart local p1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_0
.end method
