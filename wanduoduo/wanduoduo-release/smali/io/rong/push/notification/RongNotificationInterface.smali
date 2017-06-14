.class public Lio/rong/push/notification/RongNotificationInterface;
.super Ljava/lang/Object;
.source "RongNotificationInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/notification/RongNotificationInterface$SoundType;
    }
.end annotation


# static fields
.field private static final NEGLECT_TIME:I = 0x3e8

.field private static final NEW_NOTIFICATION_LEVEL:I = 0xb

.field private static NOTIFICATION_ID:I = 0x0

.field private static final PUSH_REQUEST_CODE:I = 0xc8

.field private static PUSH_SERVICE_NOTIFICATION_ID:I

.field private static VOIP_NOTIFICATION_ID:I

.field private static isInNeglectTime:Z

.field private static messageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/rong/push/notification/PushNotificationMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    .line 26
    const/16 v0, 0x3e8

    sput v0, Lio/rong/push/notification/RongNotificationInterface;->NOTIFICATION_ID:I

    .line 27
    const/16 v0, 0x7d0

    sput v0, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    .line 28
    const/16 v0, 0xbb8

    sput v0, Lio/rong/push/notification/RongNotificationInterface;->VOIP_NOTIFICATION_ID:I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/push/notification/RongNotificationInterface;->isInNeglectTime:Z

    .line 33
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lio/rong/push/notification/RongNotificationInterface;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-boolean p0, Lio/rong/push/notification/RongNotificationInterface;->isInNeglectTime:Z

    return p0
.end method

.method private static createNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lio/rong/push/notification/RongNotificationInterface$SoundType;)Landroid/app/Notification;
    .locals 17
    .parameter "context"
    .parameter "title"
    .parameter "pendingIntent"
    .parameter "content"
    .parameter "soundType"

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "rc_notification_ticker_text"

    const-string v15, "string"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, tickerText:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 218
    invoke-static/range {p0 .. p0}, Lio/rong/push/notification/RongNotificationInterface;->getNotificationContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 220
    :cond_0
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-ge v12, v13, :cond_1

    .line 223
    :try_start_0
    new-instance v9, Landroid/app/Notification;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v9, v12, v11, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 225
    .local v9, notification:Landroid/app/Notification;
    const-class v5, Landroid/app/Notification;

    .line 226
    .local v5, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v12, "setLatestEventInfo"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Landroid/app/PendingIntent;

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 227
    .local v8, method:Ljava/lang/reflect/Method;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p2, v12, v13

    invoke-virtual {v8, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/16 v12, 0x10

    iput v12, v9, Landroid/app/Notification;->flags:I

    .line 230
    const/4 v12, -0x1

    iput v12, v9, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v5           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v9           #notification:Landroid/app/Notification;
    :goto_0
    return-object v9

    .line 231
    :catch_0
    move-exception v6

    .line 232
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    const/4 v9, 0x0

    goto :goto_0

    .line 236
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_4

    const/4 v7, 0x1

    .line 237
    .local v7, isLollipop:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "notification_small_icon"

    const-string v14, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 239
    .local v10, smallIcon:I
    if-lez v10, :cond_2

    if-nez v7, :cond_3

    .line 240
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 242
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, appIcon:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v4, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 246
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 250
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 251
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 252
    sget-object v12, Lio/rong/push/notification/RongNotificationInterface$SoundType;->VOIP:Lio/rong/push/notification/RongNotificationInterface$SoundType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lio/rong/push/notification/RongNotificationInterface$SoundType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 253
    const/4 v12, 0x1

    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 259
    :goto_2
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .restart local v9       #notification:Landroid/app/Notification;
    goto :goto_0

    .line 236
    .end local v2           #appIcon:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #builder:Landroid/app/Notification$Builder;
    .end local v7           #isLollipop:Z
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #smallIcon:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 254
    .restart local v2       #appIcon:Landroid/graphics/Bitmap;
    .restart local v3       #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #builder:Landroid/app/Notification$Builder;
    .restart local v7       #isLollipop:Z
    .restart local v10       #smallIcon:I
    :cond_5
    sget-object v12, Lio/rong/push/notification/RongNotificationInterface$SoundType;->SILENT:Lio/rong/push/notification/RongNotificationInterface$SoundType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lio/rong/push/notification/RongNotificationInterface$SoundType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 255
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 257
    :cond_6
    const/4 v12, -0x1

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private static createPendingIntent(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;IZ)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "requestCode"
    .parameter "isMulti"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "io.rong.push.intent.MESSAGE_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v1, "isMulti"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x800

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getNotificationContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "rc_notification_new_msg"

    const-string v11, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, rc_notification_new_msg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "rc_notification_new_plural_msg"

    const-string v11, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, rc_notification_new_plural_msg:Ljava/lang/String;
    sget-object v8, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 181
    sget-object v8, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 182
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 183
    .local v4, msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/push/notification/PushNotificationMessage;

    .line 185
    .local v5, notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 186
    invoke-virtual {v5}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v4           #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    .end local v5           #notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    .local v1, content:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 188
    .end local v1           #content:Ljava/lang/String;
    .restart local v4       #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    .restart local v5       #notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lio/rong/push/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #content:Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;>;"
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    .end local v5           #notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    :cond_1
    const/4 v2, 0x0

    .line 192
    .local v2, count:I
    sget-object v8, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 193
    .restart local v0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 194
    .restart local v4       #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v2, v8

    .line 195
    goto :goto_1

    .line 196
    .end local v4           #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #content:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 203
    sget-object v4, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 204
    sget-object v4, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 205
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 206
    .local v1, msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/push/notification/PushNotificationMessage;

    .line 207
    .local v2, notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v2}, Lio/rong/push/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;>;"
    .end local v1           #msg:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    .end local v2           #notificationMessage:Lio/rong/push/notification/PushNotificationMessage;
    .local v3, title:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 209
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method public static removeAllNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    sget-object v1, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 124
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 125
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 126
    const/16 v1, 0x3e8

    sput v1, Lio/rong/push/notification/RongNotificationInterface;->NOTIFICATION_ID:I

    .line 127
    return-void
.end method

.method public static removeAllPushNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    sget-object v1, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 136
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 137
    .local v0, nm:Landroid/app/NotificationManager;
    sget v1, Lio/rong/push/notification/RongNotificationInterface;->NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 138
    sget v1, Lio/rong/push/notification/RongNotificationInterface;->VOIP_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    return-void
.end method

.method public static removeAllPushServiceNotification(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 147
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 148
    .local v1, nm:Landroid/app/NotificationManager;
    sget v0, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    .local v0, i:I
    :goto_0
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    .line 149
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    :cond_0
    const/16 v2, 0x7d0

    sput v2, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    .line 152
    return-void
.end method

.method public static removeNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 155
    if-gez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    sget v1, Lio/rong/push/notification/RongNotificationInterface;->NOTIFICATION_ID:I

    if-lt p1, v1, :cond_1

    sget v1, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    if-ge p1, v1, :cond_1

    .line 159
    sget-object v1, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 162
    :cond_1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V
    .locals 18
    .parameter "context"
    .parameter "message"

    .prologue
    .line 42
    sget-object v14, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    if-nez v14, :cond_0

    .line 43
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getConversationType()Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v3

    .line 47
    .local v3, conversationType:Lio/rong/push/RongPushClient$ConversationType;
    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getObjectName()Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, objName:Ljava/lang/String;
    const-string v2, ""

    .line 51
    .local v2, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 52
    .local v5, isMulti:Z
    const/16 v11, 0xc8

    .line 53
    .local v11, requestCode:I
    sget-object v12, Lio/rong/push/notification/RongNotificationInterface$SoundType;->DEFAULT:Lio/rong/push/notification/RongNotificationInterface$SoundType;

    .line 55
    .local v12, soundType:Lio/rong/push/notification/RongNotificationInterface$SoundType;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    if-nez v3, :cond_2

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    sget-boolean v14, Lio/rong/push/notification/RongNotificationInterface;->isInNeglectTime:Z

    if-eqz v14, :cond_3

    .line 59
    sget-object v12, Lio/rong/push/notification/RongNotificationInterface$SoundType;->SILENT:Lio/rong/push/notification/RongNotificationInterface$SoundType;

    .line 62
    :cond_3
    sget-object v14, Lio/rong/push/RongPushClient$ConversationType;->SYSTEM:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v3, v14}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lio/rong/push/RongPushClient$ConversationType;->PUSH_SERVICE:Lio/rong/push/RongPushClient$ConversationType;

    invoke-virtual {v3, v14}, Lio/rong/push/RongPushClient$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 64
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getPushTitle()Ljava/lang/String;

    move-result-object v13

    .line 65
    .local v13, title:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13           #title:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 68
    .restart local v13       #title:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v2

    .line 69
    sget v9, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    .line 70
    .local v9, notificationId:I
    const/16 v11, 0x12c

    .line 71
    sget v14, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lio/rong/push/notification/RongNotificationInterface;->PUSH_SERVICE_NOTIFICATION_ID:I

    .line 99
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11, v5}, Lio/rong/push/notification/RongNotificationInterface;->createPendingIntent(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;IZ)Landroid/app/PendingIntent;

    move-result-object v4

    .line 100
    .local v4, intent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v4, v2, v12}, Lio/rong/push/notification/RongNotificationInterface;->createNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lio/rong/push/notification/RongNotificationInterface$SoundType;)Landroid/app/Notification;

    move-result-object v8

    .line 101
    .local v8, notification:Landroid/app/Notification;
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 102
    .local v7, nm:Landroid/app/NotificationManager;
    if-eqz v8, :cond_6

    .line 103
    invoke-virtual {v7, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 106
    :cond_6
    sget-boolean v14, Lio/rong/push/notification/RongNotificationInterface;->isInNeglectTime:Z

    if-nez v14, :cond_1

    .line 107
    sget-object v14, Lio/rong/push/notification/RongNotificationInterface;->timer:Ljava/util/Timer;

    new-instance v15, Lio/rong/push/notification/RongNotificationInterface$1;

    invoke-direct {v15}, Lio/rong/push/notification/RongNotificationInterface$1;-><init>()V

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 113
    const/4 v14, 0x1

    sput-boolean v14, Lio/rong/push/notification/RongNotificationInterface;->isInNeglectTime:Z

    goto :goto_0

    .line 72
    .end local v4           #intent:Landroid/app/PendingIntent;
    .end local v7           #nm:Landroid/app/NotificationManager;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #notificationId:I
    .end local v13           #title:Ljava/lang/String;
    :cond_7
    const-string v14, "RC:VCInvite"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "RC:VCModifyMem"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "RC:VCHangup"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 73
    :cond_8
    const-string v14, "RC:VCHangup"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 74
    sget v14, Lio/rong/push/notification/RongNotificationInterface;->VOIP_NOTIFICATION_ID:I

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lio/rong/push/notification/RongNotificationInterface;->removeNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 77
    :cond_9
    sget v9, Lio/rong/push/notification/RongNotificationInterface;->VOIP_NOTIFICATION_ID:I

    .line 78
    .restart local v9       #notificationId:I
    sget-object v12, Lio/rong/push/notification/RongNotificationInterface$SoundType;->VOIP:Lio/rong/push/notification/RongNotificationInterface$SoundType;

    .line 79
    const/16 v11, 0x190

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 81
    .restart local v13       #title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 84
    .end local v9           #notificationId:I
    .end local v13           #title:Ljava/lang/String;
    :cond_a
    sget-object v14, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 85
    .local v6, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    if-nez v6, :cond_c

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v6       #messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/push/notification/PushNotificationMessage;>;"
    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v14, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lio/rong/push/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_2
    sget-object v14, Lio/rong/push/notification/RongNotificationInterface;->messageCache:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_b

    .line 93
    const/4 v5, 0x1

    .line 95
    :cond_b
    invoke-static/range {p0 .. p0}, Lio/rong/push/notification/RongNotificationInterface;->getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .restart local v13       #title:Ljava/lang/String;
    sget v9, Lio/rong/push/notification/RongNotificationInterface;->NOTIFICATION_ID:I

    .restart local v9       #notificationId:I
    goto/16 :goto_1

    .line 90
    .end local v9           #notificationId:I
    .end local v13           #title:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
