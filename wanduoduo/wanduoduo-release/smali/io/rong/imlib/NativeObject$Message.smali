.class public Lio/rong/imlib/NativeObject$Message;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private UId:Ljava/lang/String;

.field private content:[B

.field private conversationType:I

.field private extra:Ljava/lang/String;

.field private messageDirection:Z

.field private messageId:I

.field private objectName:Ljava/lang/String;

.field private pushContent:Ljava/lang/String;

.field private readStatus:I

.field private receivedTime:J

.field private senderUserId:Ljava/lang/String;

.field private sentStatus:I

.field private sentTime:J

.field private targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObj"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "conversation_category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    .line 112
    const-string v0, "target_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    .line 113
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    .line 114
    const-string v0, "message_direction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    .line 115
    const-string v0, "sender_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    .line 116
    const-string v0, "read_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    .line 117
    const-string v0, "send_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    .line 118
    const-string v0, "receive_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    .line 119
    const-string v0, "send_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    .line 120
    const-string v0, "object_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    .line 121
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    .line 122
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    .line 123
    const-string v0, "push"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDirection()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    return v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    return v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    return-wide v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->UId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent([B)V
    .locals 0
    .parameter "content"

    .prologue
    .line 222
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    .line 223
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .parameter "conversationType"

    .prologue
    .line 150
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    .line 151
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 230
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setMessageDirection(Z)V
    .locals 0
    .parameter "messageDirection"

    .prologue
    .line 174
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    .line 175
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 166
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    .line 167
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .parameter "objectName"

    .prologue
    .line 214
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setPushContent(Ljava/lang/String;)V
    .locals 0
    .parameter "pushContent"

    .prologue
    .line 142
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setReadStatus(I)V
    .locals 0
    .parameter "readStatus"

    .prologue
    .line 182
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    .line 183
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .parameter "receivedTime"

    .prologue
    .line 198
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    .line 199
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderUserId"

    .prologue
    .line 238
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setSentStatus(I)V
    .locals 0
    .parameter "sentStatus"

    .prologue
    .line 190
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    .line 191
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .parameter "sentTime"

    .prologue
    .line 206
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    .line 207
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 158
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setUId(Ljava/lang/String;)V
    .locals 0
    .parameter "UId"

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->UId:Ljava/lang/String;

    .line 135
    return-void
.end method
