.class public Lio/rong/imlib/TypingMessage/TypingStatus;
.super Ljava/lang/Object;
.source "TypingStatus.java"


# instance fields
.field private sentTime:J

.field private typingContentType:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "userId"
    .parameter "typingContentType"
    .parameter "sentTime"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lio/rong/imlib/TypingMessage/TypingStatus;->setUserId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lio/rong/imlib/TypingMessage/TypingStatus;->setTypingContentType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3, p4}, Lio/rong/imlib/TypingMessage/TypingStatus;->setSentTime(J)V

    .line 10
    return-void
.end method


# virtual methods
.method public getSentTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->sentTime:J

    return-wide v0
.end method

.method public getTypingContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->typingContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setSentTime(J)V
    .locals 1
    .parameter "sentTime"

    .prologue
    .line 33
    iput-wide p1, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->sentTime:J

    .line 34
    return-void
.end method

.method public setTypingContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "typingContentType"

    .prologue
    .line 25
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->typingContentType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 17
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingStatus;->userId:Ljava/lang/String;

    .line 18
    return-void
.end method
