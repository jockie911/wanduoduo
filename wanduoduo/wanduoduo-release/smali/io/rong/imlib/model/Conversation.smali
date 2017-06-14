.class public Lio/rong/imlib/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;,
        Lio/rong/imlib/model/Conversation$ConversationType;,
        Lio/rong/imlib/model/Conversation$PublicServiceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conversationTitle:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private draft:Ljava/lang/String;

.field private isTop:Z

.field private latestMessage:Lio/rong/imlib/model/MessageContent;

.field private latestMessageId:I

.field private mentionedCount:I

.field private notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

.field private objectName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

.field private receivedTime:J

.field private senderUserId:Ljava/lang/String;

.field private senderUserName:Ljava/lang/String;

.field private sentStatus:Lio/rong/imlib/model/Message$SentStatus;

.field private sentTime:J

.field private targetId:Ljava/lang/String;

.field private unreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 448
    new-instance v0, Lio/rong/imlib/model/Conversation$1;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, className:Ljava/lang/String;
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 385
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 387
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 388
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_2

    :goto_0
    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 389
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 390
    new-instance v5, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 391
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 392
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 393
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 394
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 395
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 396
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 399
    const/4 v2, 0x0

    .line 401
    .local v2, loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 402
    invoke-static {p1, v2}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/MessageContent;

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v2           #loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :goto_1
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setPortraitUrl(Ljava/lang/String;)V

    .line 411
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 412
    .local v4, status:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 413
    invoke-static {v4}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 416
    :cond_0
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 417
    .local v3, mentionedId:I
    if-lez v3, :cond_1

    .line 418
    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setMentionedCount(I)V

    .line 420
    :cond_1
    return-void

    .line 388
    .end local v3           #mentionedId:I
    .end local v4           #status:I
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 403
    .restart local v2       #loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 407
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .end local v2           #loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :cond_3
    const-class v5, Lio/rong/imlib/model/MessageContent;

    invoke-static {p1, v5}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/MessageContent;

    invoke-virtual {p0, v5}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_1
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "title"

    .prologue
    .line 25
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 26
    .local v0, model:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p0}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 27
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMessage()Lio/rong/imlib/model/MessageContent;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->latestMessage:Lio/rong/imlib/model/MessageContent;

    return-object v0
.end method

.method public getLatestMessageId()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lio/rong/imlib/model/Conversation;->latestMessageId:I

    return v0
.end method

.method public getMentionedCount()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lio/rong/imlib/model/Conversation;->mentionedCount:I

    return v0
.end method

.method public getNotificationStatus()Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lio/rong/imlib/model/Conversation;->receivedTime:J

    return-wide v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->senderUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lio/rong/imlib/model/Conversation;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lio/rong/imlib/model/Conversation;->unreadMessageCount:I

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lio/rong/imlib/model/Conversation;->isTop:Z

    return v0
.end method

.method public setConversationTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "conversationTitle"

    .prologue
    .line 115
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->conversationTitle:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "conversationType"

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 76
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .parameter "draft"

    .prologue
    .line 241
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->draft:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setLatestMessage(Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .parameter "latestMessage"

    .prologue
    .line 301
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->latestMessage:Lio/rong/imlib/model/MessageContent;

    .line 302
    return-void
.end method

.method public setLatestMessageId(I)V
    .locals 0
    .parameter "latestMessageId"

    .prologue
    .line 283
    iput p1, p0, Lio/rong/imlib/model/Conversation;->latestMessageId:I

    .line 284
    return-void
.end method

.method public setMentionedCount(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 364
    iput p1, p0, Lio/rong/imlib/model/Conversation;->mentionedCount:I

    .line 365
    return-void
.end method

.method public setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 0
    .parameter "notificationStatus"

    .prologue
    .line 356
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .line 357
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .parameter "objectName"

    .prologue
    .line 265
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->objectName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "portraitUrl"

    .prologue
    .line 57
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->portraitUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V
    .locals 0
    .parameter "receivedStatus"

    .prologue
    .line 169
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    .line 170
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .parameter "receivedTime"

    .prologue
    .line 205
    iput-wide p1, p0, Lio/rong/imlib/model/Conversation;->receivedTime:J

    .line 206
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderUserId"

    .prologue
    .line 319
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->senderUserId:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setSenderUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "senderUserName"

    .prologue
    .line 337
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->senderUserName:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .parameter "sentStatus"

    .prologue
    .line 187
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 188
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .parameter "sentTime"

    .prologue
    .line 223
    iput-wide p1, p0, Lio/rong/imlib/model/Conversation;->sentTime:J

    .line 224
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 97
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->targetId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 151
    iput-boolean p1, p0, Lio/rong/imlib/model/Conversation;->isTop:Z

    .line 152
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .parameter "unreadMessageCount"

    .prologue
    .line 133
    iput p1, p0, Lio/rong/imlib/model/Conversation;->unreadMessageCount:I

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 428
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 431
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 432
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 433
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 434
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 435
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 436
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 437
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 441
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getDraft()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getNotificationStatus()Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 444
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getMentionedCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 445
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 431
    goto/16 :goto_1

    .line 433
    :cond_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->getFlag()I

    move-result v0

    goto/16 :goto_2

    .line 434
    :cond_3
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v1

    goto/16 :goto_3

    .line 443
    :cond_4
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getNotificationStatus()Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->getValue()I

    move-result v0

    goto :goto_4
.end method
