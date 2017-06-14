.class public Lio/rong/imlib/model/Message$ReceivedStatus;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedStatus"
.end annotation


# static fields
.field private static final DOWNLOADED:I = 0x4

.field private static final LISTENED:I = 0x2

.field private static final MULTIPLERECEIVE:I = 0x10

.field private static final READ:I = 0x1

.field private static final RETRIEVED:I = 0x8


# instance fields
.field private flag:I

.field private isDownload:Z

.field private isListened:Z

.field private isMultipleReceive:Z

.field private isRead:Z

.field private isRetrieved:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 454
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 455
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 456
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 457
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRetrieved:Z

    .line 458
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isMultipleReceive:Z

    .line 466
    iput p1, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 467
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 468
    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 469
    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 470
    and-int/lit8 v0, p1, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRetrieved:Z

    .line 471
    and-int/lit8 v0, p1, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    :goto_4
    iput-boolean v1, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isMultipleReceive:Z

    .line 472
    return-void

    :cond_0
    move v0, v2

    .line 467
    goto :goto_0

    :cond_1
    move v0, v2

    .line 468
    goto :goto_1

    :cond_2
    move v0, v2

    .line 469
    goto :goto_2

    :cond_3
    move v0, v2

    .line 470
    goto :goto_3

    :cond_4
    move v1, v2

    .line 471
    goto :goto_4
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    return v0
.end method

.method public isDownload()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    return v0
.end method

.method public isListened()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    return v0
.end method

.method public isMultipleReceive()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isMultipleReceive:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    return v0
.end method

.method public isRetrieved()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRetrieved:Z

    return v0
.end method

.method public setDownload()V
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 533
    return-void
.end method

.method public setListened()V
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 516
    return-void
.end method

.method public setMultipleReceive()V
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isMultipleReceive:Z

    .line 567
    return-void
.end method

.method public setRead()V
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 499
    return-void
.end method

.method public setRetrieved()V
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRetrieved:Z

    .line 550
    return-void
.end method
