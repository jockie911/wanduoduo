.class public Lio/rong/push/common/RongException;
.super Ljava/lang/Exception;
.source "RongException.java"


# instance fields
.field private errorCode:I

.field private innerException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "msg"
    .parameter "errorCode"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput p2, p0, Lio/rong/push/common/RongException;->errorCode:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "innerException"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lio/rong/push/common/RongException;->innerException:Ljava/lang/Exception;

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lio/rong/push/common/RongException;->errorCode:I

    return v0
.end method

.method public getInnerException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/rong/push/common/RongException;->innerException:Ljava/lang/Exception;

    return-object v0
.end method
