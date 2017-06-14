.class public Lio/rong/push/RongPushClient;
.super Ljava/lang/Object;
.source "RongPushClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/RongPushClient$ConversationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RongPushClient"

.field private static final registeredType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    return-void
.end method

.method public static checkManifest(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/push/common/RongException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p0}, Lio/rong/push/RongPushClient;->checkService(Landroid/content/Context;)V

    .line 290
    invoke-static {p0}, Lio/rong/push/RongPushClient;->checkReceivers(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method private static checkPlayServices(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 468
    .local v0, apiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 469
    .local v1, resultCode:I
    if-eqz v1, :cond_0

    .line 470
    new-instance v2, Ljava/lang/Exception;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private static checkReceivers(Landroid/content/Context;)V
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/push/common/RongException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 318
    const-string v9, "RongPushAppConfig"

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 320
    .local v7, sp:Landroid/content/SharedPreferences;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "io.rong.push.intent.action.HEART_BEAT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v10, Lio/rong/push/PushReceiver;

    invoke-static {v9, v5, v10}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 324
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v9, "io.rong.push.intent.MESSAGE_ARRIVED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 327
    .local v4, infoList:Ljava/util/List;
    const/4 v2, 0x0

    .line 328
    .local v2, hasConfiged:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 330
    .local v3, infoIterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 332
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 335
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Lio/rong/push/notification/PushMessageReceiver;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 336
    :goto_1
    if-eqz v2, :cond_0

    .line 344
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 345
    new-instance v8, Lio/rong/push/common/RongException;

    const-string v9, "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined."

    invoke-direct {v8, v9}, Lio/rong/push/common/RongException;-><init>(Ljava/lang/String;)V

    throw v8

    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v6       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v2, v8

    .line 335
    goto :goto_1

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 349
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-string v9, "isGCMEnabled"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 350
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v9, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v10, Lcom/google/android/gms/gcm/GcmReceiver;

    invoke-static {v9, v5, v10}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 354
    :cond_4
    const-string v9, "isMiEnabled"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 355
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v9, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v10, Lio/rong/push/platform/MiMessageReceiver;

    invoke-static {v9, v5, v10}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 359
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v10, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    invoke-static {v9, v5, v10}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 363
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v9, "com.xiaomi.push.PING_TIMER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v10, Lcom/xiaomi/push/service/receivers/PingReceiver;

    invoke-static {v9, v5, v10}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 367
    :cond_5
    const-string v9, "isHWEnabled"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 368
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "com.huawei.intent.action.PUSH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-class v9, Lcom/huawei/android/pushagent/PushEventReceiver;

    invoke-static {v8, v5, v9}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 372
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "com.huawei.android.push.intent.REGISTER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-class v9, Lcom/huawei/android/pushagent/PushBootReceiver;

    invoke-static {v8, v5, v9}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 376
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "com.huawei.android.push.intent.REGISTRATION"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-class v9, Lio/rong/push/platform/HWReceiver;

    invoke-static {v8, v5, v9}, Lio/rong/push/RongPushClient;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V

    .line 380
    :cond_6
    return-void
.end method

.method private static checkService(Landroid/content/Context;)V
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/push/common/RongException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 383
    const-string v7, "RongPushAppConfig"

    invoke-virtual {p0, v7, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 384
    .local v6, sp:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v4, serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "io.rong.push.core.PushRegistrationService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v7, "io.rong.push.PushService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v7, "io.rong.push.core.MessageHandleService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v7, "isGCMEnabled"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 390
    const-string v7, "io.rong.push.platform.RongGcmListenerService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v7, "io.rong.push.platform.RongGCMInstanceIDListenerService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    const-string v7, "isMiEnabled"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    const-string v7, "com.xiaomi.push.service.XMPushService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-class v7, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const-class v7, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    const-string v7, "isHWEnabled"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 399
    const-string v7, "com.huawei.android.pushagent.PushService"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 408
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_3

    .line 409
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 411
    .local v5, services:[Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 412
    aget-object v2, v5, v1

    .line 413
    .local v2, info:Landroid/content/pm/ServiceInfo;
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 414
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 423
    .end local v1           #index:I
    .end local v2           #info:Landroid/content/pm/ServiceInfo;
    .end local v5           #services:[Landroid/content/pm/ServiceInfo;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 424
    new-instance v7, Lio/rong/push/common/RongException;

    const-string v8, "<service android:name=\"%1$s\" /> is missing."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/rong/push/common/RongException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Lio/rong/push/common/RongException;

    const-string v8, "can\'t find packageName."

    invoke-direct {v7, v8, v0}, Lio/rong/push/common/RongException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 411
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #index:I
    .restart local v2       #info:Landroid/content/pm/ServiceInfo;
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #services:[Landroid/content/pm/ServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1           #index:I
    .end local v2           #info:Landroid/content/pm/ServiceInfo;
    .end local v5           #services:[Landroid/content/pm/ServiceInfo;
    :cond_5
    return-void
.end method

.method public static clearAllNotifications(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 179
    const-string v2, "RongPushClient"

    const-string v3, "clearAllNotifications"

    invoke-static {v2, v3}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pushType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, pushTypeUsing:Ljava/lang/String;
    const-string v2, "MI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    .line 185
    :cond_0
    invoke-static {p0}, Lio/rong/push/notification/RongNotificationInterface;->removeAllNotification(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public static clearAllPushNotifications(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 196
    const-string v2, "RongPushClient"

    const-string v3, "clearAllPushNotifications"

    invoke-static {v2, v3}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pushType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, pushTypeUsing:Ljava/lang/String;
    const-string v2, "MI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    .line 202
    :cond_0
    invoke-static {p0}, Lio/rong/push/notification/RongNotificationInterface;->removeAllPushNotification(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public static clearAllPushServiceNotifications(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 211
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pushType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, pushTypeUsing:Ljava/lang/String;
    const-string v2, "MI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    .line 216
    :cond_0
    invoke-static {p0}, Lio/rong/push/notification/RongNotificationInterface;->removeAllPushServiceNotification(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public static clearNotificationById(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 226
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pushType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, pushTypeUsing:Ljava/lang/String;
    const-string v2, "MI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;I)V

    .line 232
    :cond_0
    invoke-static {p0, p1}, Lio/rong/push/notification/RongNotificationInterface;->removeNotification(Landroid/content/Context;I)V

    .line 234
    return-void
.end method

.method private static findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)V
    .locals 10
    .parameter "packageManager"
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/push/common/RongException;
        }
    .end annotation

    .prologue
    .line 429
    .local p2, targetName:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v5, 0x4000

    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 430
    .local v4, resolveInfoList:Ljava/util/List;
    const/4 v1, 0x0

    .line 431
    .local v1, isConfig:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 435
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 436
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    const/4 v1, 0x1

    .line 442
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 443
    new-instance v5, Lio/rong/push/common/RongException;

    const-string v6, "<receiver android:name=\"%1$s\" /> is missing or disabled."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/rong/push/common/RongException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 445
    :cond_2
    return-void
.end method

.method private static getSupportedPushTypes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 448
    const-string v1, ""

    .line 449
    .local v1, pushTypes:Ljava/lang/String;
    sget-object v3, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 450
    .local v2, typeInfo:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    move-object v1, v2

    goto :goto_0

    .line 453
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 457
    .end local v2           #typeInfo:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    new-instance v6, Ljava/lang/ExceptionInInitializerError;

    const-string v7, "appKey can\'t be empty!"

    invoke-direct {v6, v7}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 107
    :cond_0
    invoke-static {p0}, Lio/rong/push/RongPushClient;->isConfigChanged(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 109
    .local v3, isConfigChanged:Ljava/lang/Boolean;
    const-string v6, "RongPushAppConfig"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 110
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "pushType"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, pushTypeUsing:Ljava/lang/String;
    const-string v6, "RongPushClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init. the push type is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "RONG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    :cond_1
    const-string v6, "RongPushClient"

    const-string v7, "send to pushService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lio/rong/push/RongPushClient;->getSupportedPushTypes()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, enabledPushTypes:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lio/rong/push/PushService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "io.rong.push.intent.action.INIT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v6, "deviceId"

    invoke-static {p0, p1}, Lio/rong/imlib/common/DeviceUtils;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v6, "appKey"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v6, "enabledPushTypes"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v1           #enabledPushTypes:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 123
    :cond_2
    const-string v6, "RongPushClient"

    const-string v7, "send to PushRegistrationService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lio/rong/push/core/PushRegistrationService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "pushType"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/SecurityException;
    const-string v6, "RongPushClient"

    const-string v7, "SecurityException. Failed to start pushService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "appKey"
    .parameter "pushDomain"

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    :cond_0
    new-instance v6, Ljava/lang/ExceptionInInitializerError;

    const-string v7, "appKey or pushDomain can\'t be empty!"

    invoke-direct {v6, v7}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_1
    invoke-static {p0}, Lio/rong/push/RongPushClient;->isConfigChanged(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 148
    .local v3, isConfigChanged:Ljava/lang/Boolean;
    const-string v6, "RongPushAppConfig"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 149
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "pushType"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, pushTypeUsing:Ljava/lang/String;
    const-string v6, "RongPushClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init with domain. the push type is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "RONG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    :cond_2
    const-string v6, "RongPushClient"

    const-string v7, "send to pushService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lio/rong/push/RongPushClient;->getSupportedPushTypes()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, enabledPushTypes:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lio/rong/push/PushService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "io.rong.push.intent.action.INIT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v6, "deviceId"

    invoke-static {p0, p1}, Lio/rong/imlib/common/DeviceUtils;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v6, "appKey"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v6, "enabledPushTypes"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v6, "pushDomain"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    .end local v1           #enabledPushTypes:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 163
    :cond_3
    const-string v6, "RongPushClient"

    const-string v7, "send to PushRegistrationService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lio/rong/push/core/PushRegistrationService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "pushType"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/SecurityException;
    const-string v6, "RongPushClient"

    const-string v7, "SecurityException. Failed to start pushService."

    invoke-static {v6, v7}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isConfigChanged(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 294
    const-string v3, "RongPushAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 295
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 297
    .local v0, isChanged:Z
    const-string v3, "isGCMEnabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v4, "GCM"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isGCMEnabled"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    const/4 v0, 0x1

    .line 301
    :cond_0
    const-string v3, "isMiEnabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v4, "MI"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isMiEnabled"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_1
    const-string v3, "isHWEnabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v4, "HW"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 306
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isHWEnabled"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    const/4 v0, 0x1

    .line 310
    :cond_2
    if-eqz v0, :cond_3

    .line 311
    const-string v3, "RongPush"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 312
    .local v1, pushSp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    .end local v1           #pushSp:Landroid/content/SharedPreferences;
    :cond_3
    return v0
.end method

.method public static recordNotificationEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "pushId"

    .prologue
    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    const-string v1, "RongPushClient"

    const-string v2, "pushId can\'t be null!"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    const-string v1, "RongPushClient"

    const-string v2, "Statistics should be initialized firstly!"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    const-string v1, "RongPushClient"

    const-string v2, "recordNotificationEvent"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "osName"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    const-string v2, "pushEvent"

    invoke-virtual {v1, v2, v0}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static registerGCM(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/push/common/RongException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, sp:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p0}, Lio/rong/push/RongPushClient;->checkPlayServices(Landroid/content/Context;)Z

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isGCMEnabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    sget-object v2, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v3, "GCM"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lio/rong/push/common/RongException;

    const-string v3, "Failed registerGCM."

    invoke-direct {v2, v3, v0}, Lio/rong/push/common/RongException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static registerHWPush(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 89
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v3, "HW"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "isHWEnabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public static registerMiPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "miAppId"
    .parameter "miAppKey"

    .prologue
    .line 71
    const-string v2, "RongPushAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed registerMiPush. appKey or appId can\'t be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    sget-object v2, Lio/rong/push/RongPushClient;->registeredType:Ljava/util/ArrayList;

    const-string v3, "MI"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "isMiEnabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v2, "MiAppId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v2, "MiAppKey"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public static sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V
    .locals 0
    .parameter "context"
    .parameter "notificationMessage"

    .prologue
    .line 280
    invoke-static {p0, p1}, Lio/rong/push/notification/RongNotificationInterface;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    .line 281
    return-void
.end method

.method public static stopRongPush(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/rong/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "io.rong.push.intent.action.STOP_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    return-void
.end method
