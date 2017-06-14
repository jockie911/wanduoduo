.class public Lio/rong/imkit/model/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# instance fields
.field private code:I

.field private res:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "code"
    .parameter "res"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lio/rong/imkit/model/Emoji;->code:I

    .line 12
    iput p2, p0, Lio/rong/imkit/model/Emoji;->res:I

    .line 13
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lio/rong/imkit/model/Emoji;->code:I

    return v0
.end method

.method public getRes()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lio/rong/imkit/model/Emoji;->res:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 20
    iput p1, p0, Lio/rong/imkit/model/Emoji;->code:I

    .line 21
    return-void
.end method

.method public setRes(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 28
    iput p1, p0, Lio/rong/imkit/model/Emoji;->res:I

    .line 29
    return-void
.end method
