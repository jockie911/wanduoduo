.class public Lio/rong/imkit/notification/MessageNotificationManager;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/notification/MessageNotificationManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageNotificationManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    return-void
.end method

.method public static getInstance()Lio/rong/imkit/notification/MessageNotificationManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/rong/imkit/notification/MessageNotificationManager$SingletonHolder;->instance:Lio/rong/imkit/notification/MessageNotificationManager;

    return-object v0
.end method

.method private isInQuietTime(Landroid/content/Context;)Z
    .locals 16
    .parameter "context"

    .prologue
    .line 113
    invoke-static/range {p1 .. p1}, Lio/rong/imkit/utils/CommonUtils;->getNotificationQuietHoursForStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, startTimeStr:Ljava/lang/String;
    const/4 v3, -0x1

    .line 116
    .local v3, hour:I
    const/4 v4, -0x1

    .line 117
    .local v4, minute:I
    const/4 v5, -0x1

    .line 119
    .local v5, second:I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 120
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, time:[Ljava/lang/String;
    :try_start_0
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_0

    .line 124
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 125
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 126
    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 133
    .end local v12           #time:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    const/4 v13, -0x1

    if-eq v4, v13, :cond_1

    const/4 v13, -0x1

    if-ne v5, v13, :cond_2

    .line 134
    :cond_1
    const/4 v13, 0x0

    .line 161
    :goto_1
    return v13

    .line 128
    .restart local v12       #time:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v13, "MessageNotificationManager"

    const-string v14, "getConversationNotificationStatus NumberFormatException"

    invoke-static {v13, v14}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v12           #time:[Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 138
    .local v8, startCalendar:Ljava/util/Calendar;
    const/16 v13, 0xb

    invoke-virtual {v8, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 139
    const/16 v13, 0xc

    invoke-virtual {v8, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 140
    const/16 v13, 0xd

    invoke-virtual {v8, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-static/range {p1 .. p1}, Lio/rong/imkit/utils/CommonUtils;->getNotificationQuietHoursForSpanMinutes(Landroid/content/Context;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    int-to-long v6, v13

    .line 144
    .local v6, spanTime:J
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 146
    .local v10, startTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 147
    .local v2, endCalendar:Ljava/util/Calendar;
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v6

    add-long/2addr v14, v10

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, currentCalendar:Ljava/util/Calendar;
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_4

    .line 152
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 157
    const/4 v13, 0x5

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_1

    .line 161
    :cond_5
    const/4 v13, 0x1

    goto :goto_1
.end method

.method private notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 4
    .parameter "context"
    .parameter "message"
    .parameter "left"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/rong/common/SystemUtils;->isAppRunningOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 97
    .local v0, isInBackground:Z
    :goto_0
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_2

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 95
    .end local v0           #isInBackground:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    .restart local v0       #isInBackground:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 102
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/rong/imkit/RongNotificationManager;->onReceiveMessageFromApp(Lio/rong/imlib/model/Message;)V

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/CommonUtils;->isInConversationPager(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/MessageTag;

    .line 105
    .local v1, msgTag:Lio/rong/imlib/MessageTag;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 106
    invoke-static {}, Lio/rong/imkit/notification/MessageSounder;->getInstance()Lio/rong/imkit/notification/MessageSounder;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/notification/MessageSounder;->messageReminder()V

    goto :goto_1
.end method


# virtual methods
.method public notifyIfNeed(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
    .locals 7
    .parameter "context"
    .parameter "message"
    .parameter "left"

    .prologue
    .line 52
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v1

    .line 54
    .local v1, mentionedInfo:Lio/rong/imlib/model/MentionedInfo;
    invoke-virtual {v1}, Lio/rong/imlib/model/MentionedInfo;->getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lio/rong/imlib/model/MentionedInfo;->getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lio/rong/imlib/model/MentionedInfo;->getMentionedUserIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lio/rong/imlib/model/MentionedInfo;->getMentionedUserIdList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    .line 92
    .end local v1           #mentionedInfo:Lio/rong/imlib/model/MentionedInfo;
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lio/rong/imkit/notification/MessageNotificationManager;->isInQuietTime(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 69
    .local v0, key:Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/rong/imkit/RongContext;->getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v2

    .line 70
    .local v2, notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    if-eqz v2, :cond_3

    .line 71
    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne v2, v3, :cond_1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    goto :goto_0

    .line 78
    .end local v0           #key:Lio/rong/imkit/model/ConversationKey;
    .end local v2           #notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/notification/MessageNotificationManager$1;

    invoke-direct {v6, p0, p1, p2, p3}, Lio/rong/imkit/notification/MessageNotificationManager$1;-><init>(Lio/rong/imkit/notification/MessageNotificationManager;Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v3, v4, v5, v6}, Lio/rong/imkit/RongIM;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
