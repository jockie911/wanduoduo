.class public Lio/rong/imlib/NativeObject$Conversation;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Conversation"
.end annotation


# instance fields
.field private ReceivedTime:J

.field private UId:Ljava/lang/String;

.field private blockPush:Z

.field private content:[B

.field private conversationTitle:Ljava/lang/String;

.field private conversationType:I

.field private draft:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private isTop:Z

.field private lastTime:J

.field private mentionCount:I

.field private messageContent:Ljava/lang/String;

.field private messageDirection:Z

.field private messageId:I

.field private objectName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private readStatus:I

.field private receiveStatus:I

.field private senderName:Ljava/lang/String;

.field private senderUserId:Ljava/lang/String;

.field private sentStatus:I

.field private sentTime:J

.field private targetId:Ljava/lang/String;

.field private unreadMessageCount:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPortrait:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "jsonObj"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->content:[B

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationType:I

    return v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()J
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->lastTime:J

    return-wide v0
.end method

.method public getMentionCount()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->mentionCount:I

    return v0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageId:I

    return v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->readStatus:I

    return v0
.end method

.method public getReceiveStatus()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->receiveStatus:I

    return v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->ReceivedTime:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->sentStatus:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Conversation;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->UId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lio/rong/imlib/NativeObject$Conversation;->unreadMessageCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->userPortrait:Ljava/lang/String;

    return-object v0
.end method

.method public isBlockPush()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->blockPush:Z

    return v0
.end method

.method public isMessageDirection()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->messageDirection:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    return v0
.end method

.method public setBlockPush(Z)V
    .locals 0
    .parameter "blockPush"

    .prologue
    .line 482
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->blockPush:Z

    .line 483
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .parameter "content"

    .prologue
    .line 530
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->content:[B

    .line 531
    return-void
.end method

.method public setConversationTitle([B)V
    .locals 1
    .parameter "conversationTitle"

    .prologue
    .line 394
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationTitle:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .parameter "conversationType"

    .prologue
    .line 378
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->conversationType:I

    .line 379
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .parameter "draft"

    .prologue
    .line 410
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->draft:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 538
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->extra:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setIsTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 370
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    .line 371
    return-void
.end method

.method public setLastTime(J)V
    .locals 1
    .parameter "lastTime"

    .prologue
    .line 490
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->lastTime:J

    .line 491
    return-void
.end method

.method public setMentionCount(I)V
    .locals 0
    .parameter "mentionCount"

    .prologue
    .line 554
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->mentionCount:I

    .line 555
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;)V
    .locals 0
    .parameter "messageContent"

    .prologue
    .line 474
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageContent:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setMessageDirection(Z)V
    .locals 0
    .parameter "messageDirection"

    .prologue
    .line 366
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageDirection:Z

    .line 367
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 434
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->messageId:I

    .line 435
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .parameter "objectName"

    .prologue
    .line 426
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->objectName:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "portraitUrl"

    .prologue
    .line 546
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->portraitUrl:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setReadStatus(I)V
    .locals 0
    .parameter "readStatus"

    .prologue
    .line 522
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->readStatus:I

    .line 523
    return-void
.end method

.method public setReceiveStatus(I)V
    .locals 0
    .parameter "receiveStatus"

    .prologue
    .line 442
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->receiveStatus:I

    .line 443
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .parameter "receivedTime"

    .prologue
    .line 458
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->ReceivedTime:J

    .line 459
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "senderName"

    .prologue
    .line 466
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->senderName:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderUserId"

    .prologue
    .line 358
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->senderUserId:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setSentStatus(I)V
    .locals 0
    .parameter "sentStatus"

    .prologue
    .line 450
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->sentStatus:I

    .line 451
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .parameter "sentTime"

    .prologue
    .line 350
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Conversation;->sentTime:J

    .line 351
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 386
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->targetId:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 402
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Conversation;->isTop:Z

    .line 403
    return-void
.end method

.method public setUId(Ljava/lang/String;)V
    .locals 0
    .parameter "UId"

    .prologue
    .line 342
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->UId:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .parameter "unreadMessageCount"

    .prologue
    .line 418
    iput p1, p0, Lio/rong/imlib/NativeObject$Conversation;->unreadMessageCount:I

    .line 419
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 498
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userId:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 506
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userName:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setUserPortrait(Ljava/lang/String;)V
    .locals 0
    .parameter "userPortrait"

    .prologue
    .line 514
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Conversation;->userPortrait:Ljava/lang/String;

    .line 515
    return-void
.end method
