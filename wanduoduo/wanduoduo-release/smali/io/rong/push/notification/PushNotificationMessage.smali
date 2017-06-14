.class public Lio/rong/push/notification/PushNotificationMessage;
.super Ljava/lang/Object;
.source "PushNotificationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/push/notification/PushNotificationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conversationType:Lio/rong/push/RongPushClient$ConversationType;

.field private extra:Ljava/lang/String;

.field private isFromPush:Ljava/lang/String;

.field private objectName:Ljava/lang/String;

.field private pushContent:Ljava/lang/String;

.field private pushData:Ljava/lang/String;

.field private pushId:Ljava/lang/String;

.field private pushTitle:Ljava/lang/String;

.field private receivedTime:J

.field private senderId:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private senderPortrait:Landroid/net/Uri;

.field private targetId:Ljava/lang/String;

.field private targetUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lio/rong/push/notification/PushNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/push/notification/PushNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/push/notification/PushNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setPushId(Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 214
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/rong/push/notification/PushNotificationMessage;->setReceivedTime(J)V

    .line 215
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setSenderId(Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setSenderName(Ljava/lang/String;)V

    .line 218
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setSenderPortrait(Landroid/net/Uri;)V

    .line 219
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setPushTitle(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setPushData(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 226
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationType()Lio/rong/push/RongPushClient$ConversationType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->conversationType:Lio/rong/push/RongPushClient$ConversationType;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->pushContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->pushData:Ljava/lang/String;

    return-object v0
.end method

.method public getPushFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->isFromPush:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->pushTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lio/rong/push/notification/PushNotificationMessage;->receivedTime:J

    return-wide v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderPortrait()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->senderPortrait:Landroid/net/Uri;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lio/rong/push/notification/PushNotificationMessage;->targetUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 35
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->conversationType:Lio/rong/push/RongPushClient$ConversationType;

    .line 36
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 79
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->extra:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .parameter "objectName"

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->objectName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPushContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 71
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->pushContent:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPushData(Ljava/lang/String;)V
    .locals 0
    .parameter "appDataContent"

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->pushData:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPushFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 83
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->isFromPush:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->pushId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setPushTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 67
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->pushTitle:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 39
    iput-wide p1, p0, Lio/rong/push/notification/PushNotificationMessage;->receivedTime:J

    .line 40
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 47
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->senderId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 51
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->senderName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSenderPortrait(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 55
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->senderPortrait:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 59
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->targetId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTargetUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 63
    iput-object p1, p0, Lio/rong/push/notification/PushNotificationMessage;->targetUserName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 195
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getConversationType()Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/RongPushClient$ConversationType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getReceivedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 198
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getSenderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getSenderPortrait()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 202
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getPushTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getPushData()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lio/rong/push/notification/PushNotificationMessage;->getPushFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 209
    return-void
.end method
