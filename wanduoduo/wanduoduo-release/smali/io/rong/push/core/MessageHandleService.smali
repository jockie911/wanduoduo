.class public Lio/rong/push/core/MessageHandleService;
.super Landroid/app/IntentService;
.source "MessageHandleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/core/MessageHandleService$Job;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgHandleService"

.field private static jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lio/rong/push/core/MessageHandleService$Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/rong/push/core/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "MessageHandleThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static addJob(Lio/rong/push/core/MessageHandleService$Job;)V
    .locals 1
    .parameter "job"

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    sget-object v0, Lio/rong/push/core/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method private decodeNotificationMessage(Landroid/os/Bundle;)Lio/rong/push/notification/PushNotificationMessage;
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 181
    const-string v5, "conversationType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 182
    const-string v5, "MsgHandleService"

    const-string v6, "onReceive, conversationType is 0"

    invoke-static {v5, v6}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-object v4

    .line 186
    :cond_0
    const-string v5, "Statistics"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lio/rong/push/core/MessageHandleService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v5, "userId"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, userId:Ljava/lang/String;
    const-string v5, "conversationType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v0

    .line 191
    .local v0, conversationType:Lio/rong/push/RongPushClient$ConversationType;
    if-eqz v0, :cond_2

    sget-object v5, Lio/rong/push/RongPushClient$ConversationType;->PUSH_SERVICE:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v0, v5}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lio/rong/push/RongPushClient$ConversationType;->SYSTEM:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v0, v5}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "toId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    :cond_1
    const-string v5, "MsgHandleService"

    const-string v6, "The userId isn\'t matched. Return directly!!"

    invoke-static {v5, v6}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    new-instance v1, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v1}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 199
    .local v1, msg:Lio/rong/push/notification/PushNotificationMessage;
    const-string v5, "receivedTime"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lio/rong/push/notification/PushNotificationMessage;->setReceivedTime(J)V

    .line 200
    invoke-virtual {v1, v0}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 201
    const-string v5, "objectName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 202
    const-string v5, "senderId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/rong/push/notification/PushNotificationMessage;->setSenderId(Ljava/lang/String;)V

    .line 203
    const-string v5, "senderName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/rong/push/notification/PushNotificationMessage;->setSenderName(Ljava/lang/String;)V

    .line 204
    const-string v5, "senderUri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setSenderPortrait(Landroid/net/Uri;)V

    .line 205
    const-string v4, "targetId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 206
    const-string v4, "targetUserName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 208
    const-string v4, "pushId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushId(Ljava/lang/String;)V

    .line 209
    const-string v4, "pushContent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 210
    const-string v4, "pushTitle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushTitle(Ljava/lang/String;)V

    .line 211
    const-string v4, "pushData"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushData(Ljava/lang/String;)V

    .line 212
    const-string v4, "extra"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 213
    const-string v4, "true"

    invoke-virtual {v1, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    move-object v4, v1

    .line 214
    goto/16 :goto_0

    .line 204
    :cond_3
    const-string v4, "senderUri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method

.method private startConversationActivity(Lio/rong/push/RongPushClient$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "targetId"
    .parameter "targetName"
    .parameter "isFromPush"

    .prologue
    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rong://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/push/core/MessageHandleService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "conversation"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/push/RongPushClient$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "targetId"

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "isFromPush"

    invoke-virtual {v3, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 152
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v1}, Lio/rong/push/core/MessageHandleService;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private startConversationListActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "isFromPush"

    .prologue
    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rong://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/push/core/MessageHandleService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 134
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "conversationlist"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    const-string v3, "isFromPush"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 137
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lio/rong/push/core/MessageHandleService;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method private startPushServiceActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "targetId"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "pushId"
    .parameter "extra"
    .parameter "isFromPush"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rong://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/push/core/MessageHandleService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 168
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "push_message"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "targetId"

    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "pushContent"

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "pushData"

    invoke-virtual {v3, v4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "pushId"

    invoke-virtual {v3, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v3, v4, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "isFromPush"

    invoke-virtual {v3, v4, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lio/rong/push/core/MessageHandleService;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method private transformToPushMessage(Lorg/json/JSONObject;)Lio/rong/push/notification/PushNotificationMessage;
    .locals 14
    .parameter "jsonObject"

    .prologue
    const/4 v10, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return-object v10

    .line 220
    :cond_0
    new-instance v3, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v3}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 222
    .local v3, pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    const-string v9, "channelType"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, channelType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 224
    .local v7, typeValue:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 226
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 231
    :cond_1
    :goto_1
    invoke-static {v7}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v1

    .line 232
    .local v1, conversationType:Lio/rong/push/RongPushClient$ConversationType;
    invoke-virtual {v3, v1}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 234
    sget-object v9, Lio/rong/push/RongPushClient$ConversationType;->DISCUSSION:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v1, v9}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lio/rong/push/RongPushClient$ConversationType;->GROUP:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v1, v9}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lio/rong/push/RongPushClient$ConversationType;->CHATROOM:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v1, v9}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 236
    :cond_2
    const-string v9, "channelId"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 237
    const-string v9, "channelName"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 242
    :goto_2
    const-string v9, "timeStamp"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lio/rong/push/notification/PushNotificationMessage;->setReceivedTime(J)V

    .line 243
    const-string v9, "objectName"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 244
    const-string v9, "fromUserId"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setSenderId(Ljava/lang/String;)V

    .line 245
    const-string v9, "fromUserName"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setSenderName(Ljava/lang/String;)V

    .line 246
    const-string v9, "fromUserPo"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v10

    :goto_3
    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setSenderPortrait(Landroid/net/Uri;)V

    .line 247
    const-string v9, "title"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushTitle(Ljava/lang/String;)V

    .line 248
    const-string v9, "content"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 249
    const-string v9, "appData"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushData(Ljava/lang/String;)V

    .line 250
    const-string v9, "true"

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 252
    const-string v6, ""

    .line 254
    .local v6, toId:Ljava/lang/String;
    :try_start_1
    const-string v9, "rc"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 255
    .local v5, temp:Lorg/json/JSONObject;
    const-string v9, "tId"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushId(Ljava/lang/String;)V

    .line 257
    const-string v9, "ext"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "ext"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 258
    const-string v9, "ext"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .end local v5           #temp:Lorg/json/JSONObject;
    :cond_3
    :goto_4
    const-string v9, "Statistics"

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lio/rong/push/core/MessageHandleService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 265
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v9, "userId"

    const-string v11, ""

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, userId:Ljava/lang/String;
    sget-object v9, Lio/rong/push/RongPushClient$ConversationType;->PUSH_SERVICE:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v1, v9}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lio/rong/push/RongPushClient$ConversationType;->SYSTEM:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v1, v9}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 269
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 270
    :cond_4
    const-string v9, "MsgHandleService"

    const-string v11, "The userId isn\'t matched. Return directly!!"

    invoke-static {v9, v11}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v1           #conversationType:Lio/rong/push/RongPushClient$ConversationType;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    .end local v6           #toId:Ljava/lang/String;
    .end local v8           #userId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 239
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #conversationType:Lio/rong/push/RongPushClient$ConversationType;
    :cond_5
    const-string v9, "fromUserId"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 240
    const-string v9, "fromUserName"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 246
    :cond_6
    const-string v9, "fromUserPo"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_3

    .line 260
    .restart local v6       #toId:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 261
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .end local v2           #e:Lorg/json/JSONException;
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    .restart local v8       #userId:Ljava/lang/String;
    :cond_7
    move-object v10, v3

    .line 275
    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 29
    .parameter "intent"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v3, "MsgHandleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v3, Lio/rong/push/core/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lio/rong/push/core/MessageHandleService$Job;

    .line 45
    .local v21, job:Lio/rong/push/core/MessageHandleService$Job;
    if-nez v21, :cond_1

    .line 46
    const-string v3, "MsgHandleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find receiver job. Current process id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v21           #job:Lio/rong/push/core/MessageHandleService$Job;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v21       #job:Lio/rong/push/core/MessageHandleService$Job;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lio/rong/push/core/MessageHandleService$Job;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 50
    .local v18, deliveredIntent:Landroid/content/Intent;
    const-string v3, "MsgHandleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle Job deliveredIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 52
    :cond_2
    const-string v3, "MsgHandleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find intent in job. Current process id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lio/rong/push/core/MessageHandleService$Job;->getReceiver()Lio/rong/push/notification/PushMessageReceiver;

    move-result-object v27

    .line 57
    .local v27, receiver:Lio/rong/push/notification/PushMessageReceiver;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 58
    .local v17, bundle:Landroid/os/Bundle;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.rong.push.intent.MESSAGE_ARRIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lio/rong/push/core/MessageHandleService;->decodeNotificationMessage(Landroid/os/Bundle;)Lio/rong/push/notification/PushNotificationMessage;

    move-result-object v24

    .line 60
    .local v24, notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    if-eqz v24, :cond_0

    .line 61
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lio/rong/push/notification/PushMessageReceiver;->onNotificationMessageArrived(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    const-string v3, "MsgHandleService"

    const-string v4, "sendNotification"

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lio/rong/push/notification/RongNotificationInterface;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto :goto_0

    .line 66
    .end local v24           #notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.rong.push.intent.MI_MESSAGE_ARRIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    const-string v3, "message"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    check-cast v23, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 70
    .local v23, message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v22, json:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lio/rong/push/core/MessageHandleService;->transformToPushMessage(Lorg/json/JSONObject;)Lio/rong/push/notification/PushNotificationMessage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 76
    .local v26, pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    if-eqz v26, :cond_0

    .line 77
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lio/rong/push/notification/PushMessageReceiver;->onNotificationMessageArrived(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z

    goto/16 :goto_0

    .line 72
    .end local v22           #json:Lorg/json/JSONObject;
    .end local v26           #pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    :catch_0
    move-exception v19

    .line 73
    .local v19, e:Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    .end local v19           #e:Lorg/json/JSONException;
    .end local v23           #message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.rong.push.intent.MESSAGE_CLICKED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 80
    const-string v3, "message"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Lio/rong/push/notification/PushNotificationMessage;

    .line 81
    .local v23, message:Lio/rong/push/notification/PushNotificationMessage;
    if-eqz v23, :cond_0

    .line 82
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 83
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/push/RongPushClient;->recordNotificationEvent(Ljava/lang/String;)V

    .line 84
    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lio/rong/push/notification/PushMessageReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getConversationType()Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v28

    .line 86
    .local v28, type:Lio/rong/push/RongPushClient$ConversationType;
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getObjectName()Ljava/lang/String;

    move-result-object v25

    .line 87
    .local v25, objName:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushFlag()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, isFromPush:Ljava/lang/String;
    if-eqz v28, :cond_7

    sget-object v3, Lio/rong/push/RongPushClient$ConversationType;->PUSH_SERVICE:Lio/rong/push/RongPushClient$ConversationType;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 89
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lio/rong/push/core/MessageHandleService;->startPushServiceActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_7
    if-eqz v25, :cond_9

    const-string v3, "RC:VCInvite"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "RC:VCModifyMem"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 91
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lio/rong/push/core/MessageHandleService;->startConversationListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_9
    const-string v3, "isMulti"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 94
    .local v20, isMulti:Ljava/lang/Boolean;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 95
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lio/rong/push/core/MessageHandleService;->startConversationListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getConversationType()Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lio/rong/push/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v9}, Lio/rong/push/core/MessageHandleService;->startConversationActivity(Lio/rong/push/RongPushClient$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v9           #isFromPush:Ljava/lang/String;
    .end local v20           #isMulti:Ljava/lang/Boolean;
    .end local v23           #message:Lio/rong/push/notification/PushNotificationMessage;
    .end local v25           #objName:Ljava/lang/String;
    .end local v28           #type:Lio/rong/push/RongPushClient$ConversationType;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.rong.push.intent.MI_MESSAGE_CLICKED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, "message"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    check-cast v23, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 106
    .local v23, message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :try_start_1
    new-instance v22, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v22       #json:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lio/rong/push/core/MessageHandleService;->transformToPushMessage(Lorg/json/JSONObject;)Lio/rong/push/notification/PushNotificationMessage;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 113
    .restart local v26       #pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    if-eqz v26, :cond_0

    .line 114
    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 115
    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/push/RongPushClient;->recordNotificationEvent(Ljava/lang/String;)V

    .line 116
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lio/rong/push/notification/PushMessageReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getConversationType()Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v28

    .line 118
    .restart local v28       #type:Lio/rong/push/RongPushClient$ConversationType;
    if-eqz v28, :cond_d

    sget-object v3, Lio/rong/push/RongPushClient$ConversationType;->PUSH_SERVICE:Lio/rong/push/RongPushClient$ConversationType;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 119
    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushFlag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lio/rong/push/core/MessageHandleService;->startPushServiceActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v22           #json:Lorg/json/JSONObject;
    .end local v26           #pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    .end local v28           #type:Lio/rong/push/RongPushClient$ConversationType;
    :catch_1
    move-exception v19

    .line 109
    .restart local v19       #e:Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    .end local v19           #e:Lorg/json/JSONException;
    .restart local v22       #json:Lorg/json/JSONObject;
    .restart local v26       #pushNotificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    .restart local v28       #type:Lio/rong/push/RongPushClient$ConversationType;
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lio/rong/push/notification/PushNotificationMessage;->getPushFlag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lio/rong/push/core/MessageHandleService;->startConversationListActivity(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
