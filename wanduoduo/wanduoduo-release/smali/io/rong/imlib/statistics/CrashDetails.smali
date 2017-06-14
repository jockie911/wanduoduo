.class Lio/rong/imlib/statistics/CrashDetails;
.super Ljava/lang/Object;
.source "CrashDetails.java"


# static fields
.field private static customSegments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static inBackground:Z

.field private static logs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static startTime:I

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/rong/imlib/statistics/CrashDetails;->logs:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v0

    sput v0, Lio/rong/imlib/statistics/CrashDetails;->startTime:I

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imlib/statistics/CrashDetails;->inBackground:Z

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lio/rong/imlib/statistics/CrashDetails;->totalMemory:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLog(Ljava/lang/String;)V
    .locals 1
    .parameter "record"

    .prologue
    .line 114
    sget-object v0, Lio/rong/imlib/statistics/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method static varargs fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 4
    .parameter "json"
    .parameter "objects"

    .prologue
    .line 397
    :try_start_0
    array-length v3, p1

    if-lez v3, :cond_1

    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 399
    aget-object v1, p1, v0

    .line 400
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 401
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 402
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 406
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 410
    :cond_1
    return-void
.end method

.method static getBatteryLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 245
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, batteryIntent:Landroid/content/Intent;
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 247
    .local v2, level:I
    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 250
    .local v3, scale:I
    if-le v2, v8, :cond_0

    if-lez v3, :cond_0

    .line 251
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 260
    .end local v0           #batteryIntent:Landroid/content/Intent;
    .end local v2           #level:I
    .end local v3           #scale:I
    :cond_0
    :goto_0
    return-object v4

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    const-string v5, "Statistics"

    const-string v6, "Can\'t get batter level"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getCpu()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 163
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static getCrashData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "error"
    .parameter "nonfatal"

    .prologue
    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v0, json:Lorg/json/JSONObject;
    const/16 v2, 0x2c

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_error"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "_nonfatal"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_logs"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getLogs()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_device"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "_os"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "_os_version"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "_resolution"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "_app_version"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "_manufacture"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "_cpu"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getCpu()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "_opengl"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->getOpenGL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "_ram_current"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->getRamCurrent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "_ram_total"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->getRamTotal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "_disk_current"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getDiskCurrent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "_disk_total"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getDiskTotal()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "_bat"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "_run"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getRunningTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "_orientation"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "_root"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->isRooted()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "_online"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->isOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "_muted"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    invoke-static {p0}, Lio/rong/imlib/statistics/CrashDetails;->isMuted(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "_background"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->isInBackground()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lio/rong/imlib/statistics/CrashDetails;->fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 374
    :try_start_0
    const-string v2, "_custom"

    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, result:Ljava/lang/String;
    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 386
    :goto_1
    return-object v1

    .line 382
    :catch_0
    move-exception v2

    goto :goto_1

    .line 375
    .end local v1           #result:Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static getCustomSegments()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getDiskCurrent()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x100000

    .line 210
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v3, v6, :cond_0

    .line 211
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, statFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    mul-int/2addr v3, v6

    int-to-long v4, v3

    .line 213
    .local v4, total:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    mul-int/2addr v3, v6

    int-to-long v0, v3

    .line 214
    .local v0, free:J
    sub-long v6, v4, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 220
    :goto_0
    return-object v3

    .line 217
    .end local v0           #free:J
    .end local v2           #statFs:Landroid/os/StatFs;
    .end local v4           #total:J
    :cond_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v2       #statFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v4, v6, v8

    .line 219
    .restart local v4       #total:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v0, v6, v8

    .line 220
    .restart local v0       #free:J
    sub-long v6, v4, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static getDiskTotal()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x100000

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v1, v4, :cond_0

    .line 229
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, statFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    mul-int/2addr v1, v4

    int-to-long v2, v1

    .line 231
    .local v2, total:J
    div-long v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 234
    .end local v0           #statFs:Landroid/os/StatFs;
    .end local v2           #total:J
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v0       #statFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long v2, v4, v6

    .line 236
    .restart local v2       #total:J
    div-long v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getLogs()Ljava/lang/String;
    .locals 5

    .prologue
    .line 121
    const-string v0, ""

    .line 123
    .local v0, allLogs:Ljava/lang/String;
    sget-object v3, Lio/rong/imlib/statistics/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 127
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    sget-object v3, Lio/rong/imlib/statistics/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 128
    return-object v0
.end method

.method static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getOpenGL(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 173
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 174
    .local v2, featureInfos:[Landroid/content/pm/FeatureInfo;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    .line 175
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 177
    .local v1, featureInfo:Landroid/content/pm/FeatureInfo;
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 178
    iget v6, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz v6, :cond_0

    .line 179
    iget v6, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    const/high16 v7, -0x1

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-object v6

    .line 181
    .restart local v0       #arr$:[Landroid/content/pm/FeatureInfo;
    .restart local v1       #featureInfo:Landroid/content/pm/FeatureInfo;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    const-string v6, "1"

    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #featureInfo:Landroid/content/pm/FeatureInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    const-string v6, "1"

    goto :goto_1
.end method

.method static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 275
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 286
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 278
    :pswitch_0
    const-string v1, "Landscape"

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v1, "Portrait"

    goto :goto_0

    .line 282
    :pswitch_2
    const-string v1, "Square"

    goto :goto_0

    .line 284
    :pswitch_3
    const-string v1, "Unknown"

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static getRamCurrent(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 193
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 194
    .local v1, mi:Landroid/app/ActivityManager$MemoryInfo;
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 195
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 196
    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getTotalRAM()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getRamTotal(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 203
    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->getTotalRAM()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRunningTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v0

    sget v1, Lio/rong/imlib/statistics/CrashDetails;->startTime:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTotalRAM()J
    .locals 12

    .prologue
    .line 65
    sget-wide v8, Lio/rong/imlib/statistics/CrashDetails;->totalMemory:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, reader:Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 69
    .local v1, load:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "/proc/meminfo"

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v4           #reader:Ljava/io/RandomAccessFile;
    .local v5, reader:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v7, "(\\d+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 74
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 75
    .local v2, m:Ljava/util/regex/Matcher;
    const-string v6, ""

    .line 76
    .local v6, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    sput-wide v8, Lio/rong/imlib/statistics/CrashDetails;->totalMemory:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v5           #reader:Ljava/io/RandomAccessFile;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    sget-wide v8, Lio/rong/imlib/statistics/CrashDetails;->totalMemory:J

    return-wide v8

    .line 82
    .restart local v4       #reader:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v0           #ex:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/RandomAccessFile;
    .restart local v5       #reader:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/RandomAccessFile;
    .restart local v4       #reader:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method static inBackground()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imlib/statistics/CrashDetails;->inBackground:Z

    .line 101
    return-void
.end method

.method static inForeground()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/imlib/statistics/CrashDetails;->inBackground:Z

    .line 94
    return-void
.end method

.method static isInBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lio/rong/imlib/statistics/CrashDetails;->inBackground:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isMuted(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 329
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 330
    .local v0, audio:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 336
    const-string v1, "false"

    :goto_0
    return-object v1

    .line 332
    :pswitch_0
    const-string v1, "true"

    goto :goto_0

    .line 334
    :pswitch_1
    const-string v1, "true"

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isOnline(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 308
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 309
    .local v0, conMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "true"

    .line 322
    .end local v0           #conMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-object v2

    .line 315
    .restart local v0       #conMgr:Landroid/net/ConnectivityManager;
    :cond_0
    const-string v2, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v0           #conMgr:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const-string v2, "Statistics"

    const-string v3, "Got exception determining connectivity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isRooted()Ljava/lang/String;
    .locals 7

    .prologue
    .line 294
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/sbin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/system/bin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "/system/xbin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "/data/local/xbin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "/data/local/bin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "/system/sd/xbin/su"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "/system/bin/failsafe/su"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "/data/local/su"

    aput-object v6, v4, v5

    .line 297
    .local v4, paths:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 298
    .local v3, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "true"

    .line 300
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 297
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    const-string v5, "false"

    goto :goto_1
.end method

.method static setCustomSegments(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, segments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    .line 137
    sget-object v0, Lio/rong/imlib/statistics/CrashDetails;->customSegments:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    return-void
.end method
