.class public Lio/rong/imlib/statistics/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/statistics/DeviceId$1;,
        Lio/rong/imlib/statistics/DeviceId$Type;
    }
.end annotation


# static fields
.field private static final PREFERENCE_KEY_ID_TYPE:Ljava/lang/String; = "ly.count.android.api.DeviceId.type"

.field private static final TAG:Ljava/lang/String; = "DeviceId"


# instance fields
.field private id:Ljava/lang/String;

.field private type:Lio/rong/imlib/statistics/DeviceId$Type;


# direct methods
.method public constructor <init>(Lio/rong/imlib/statistics/DeviceId$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please specify DeviceId.Type, that is which type of device ID generation you want to use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lio/rong/imlib/statistics/DeviceId$Type;->DEVELOPER_SUPPLIED:Lio/rong/imlib/statistics/DeviceId$Type;

    if-ne p1, v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please use another DeviceId constructor for device IDs supplied by developer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "developerSuppliedId"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure that device ID is not null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    sget-object v0, Lio/rong/imlib/statistics/DeviceId$Type;->DEVELOPER_SUPPLIED:Lio/rong/imlib/statistics/DeviceId$Type;

    iput-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 48
    iput-object p1, p0, Lio/rong/imlib/statistics/DeviceId;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static deviceIDEqualsNullSafe(Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;Lio/rong/imlib/statistics/DeviceId;)Z
    .locals 3
    .parameter "id"
    .parameter "type"
    .parameter "deviceId"

    .prologue
    const/4 v1, 0x1

    .line 170
    if-eqz p1, :cond_0

    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->DEVELOPER_SUPPLIED:Lio/rong/imlib/statistics/DeviceId$Type;

    if-ne p1, v2, :cond_2

    .line 171
    :cond_0
    if-nez p2, :cond_3

    const/4 v0, 0x0

    .line 172
    .local v0, deviceIdId:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    .end local v0           #deviceIdId:Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 171
    :cond_3
    invoke-virtual {p2}, Lio/rong/imlib/statistics/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    .restart local v0       #deviceIdId:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private retrieveOverriddenType(Lio/rong/imlib/statistics/StatisticsStore;)Lio/rong/imlib/statistics/DeviceId$Type;
    .locals 3
    .parameter "store"

    .prologue
    .line 121
    const-string v2, "ly.count.android.api.DeviceId.type"

    invoke-virtual {p1, v2}, Lio/rong/imlib/statistics/StatisticsStore;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, oldTypeString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 134
    .local v0, oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    :goto_0
    return-object v0

    .line 125
    .end local v0           #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    :cond_0
    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->DEVELOPER_SUPPLIED:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    sget-object v0, Lio/rong/imlib/statistics/DeviceId$Type;->DEVELOPER_SUPPLIED:Lio/rong/imlib/statistics/DeviceId$Type;

    .restart local v0       #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    goto :goto_0

    .line 127
    .end local v0           #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    :cond_1
    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    sget-object v0, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    .restart local v0       #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    goto :goto_0

    .line 129
    .end local v0           #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    :cond_2
    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->ADVERTISING_ID:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    sget-object v0, Lio/rong/imlib/statistics/DeviceId$Type;->ADVERTISING_ID:Lio/rong/imlib/statistics/DeviceId$Type;

    .restart local v0       #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    goto :goto_0

    .line 132
    .end local v0           #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #oldType:Lio/rong/imlib/statistics/DeviceId$Type;
    goto :goto_0
.end method

.method private storeOverriddenType(Lio/rong/imlib/statistics/StatisticsStore;Lio/rong/imlib/statistics/DeviceId$Type;)V
    .locals 2
    .parameter "store"
    .parameter "type"

    .prologue
    .line 116
    const-string v1, "ly.count.android.api.DeviceId.type"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 116
    :cond_0
    invoke-virtual {p2}, Lio/rong/imlib/statistics/DeviceId$Type;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    sget-object v1, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->getOpenUDID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->id:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/statistics/DeviceId$Type;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lio/rong/imlib/statistics/StatisticsStore;Z)V
    .locals 4
    .parameter "context"
    .parameter "store"
    .parameter "raiseExceptions"

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lio/rong/imlib/statistics/DeviceId;->retrieveOverriddenType(Lio/rong/imlib/statistics/StatisticsStore;)Lio/rong/imlib/statistics/DeviceId$Type;

    move-result-object v0

    .line 66
    .local v0, overriddenType:Lio/rong/imlib/statistics/DeviceId$Type;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    if-eq v0, v1, :cond_1

    .line 67
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "DeviceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overridden device ID generation strategy detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", using it instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iput-object v0, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 73
    :cond_1
    sget-object v1, Lio/rong/imlib/statistics/DeviceId$1;->$SwitchMap$io$rong$imlib$statistics$DeviceId$Type:[I

    iget-object v2, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const-string v1, "DeviceId"

    const-string v2, "Using OpenUDID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_3
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    invoke-static {p1}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->sync(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    :cond_4
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OpenUDID is not available, please make sure that you have it in your classpath"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_2
    invoke-static {}, Lio/rong/imlib/statistics/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    const-string v1, "DeviceId"

    const-string v2, "Using Advertising ID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5
    invoke-static {p1, p2, p0}, Lio/rong/imlib/statistics/AdvertisingIdAdapter;->setAdvertisingId(Landroid/content/Context;Lio/rong/imlib/statistics/StatisticsStore;Lio/rong/imlib/statistics/DeviceId;)V

    goto :goto_0

    .line 95
    :cond_6
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 97
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    const-string v1, "DeviceId"

    const-string v2, "Advertising ID is not available, falling back to OpenUDID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_7
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-static {p1}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->sync(Landroid/content/Context;)V

    goto :goto_0

    .line 105
    :cond_8
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    const-string v1, "DeviceId"

    const-string v2, "Advertising ID is not available, neither OpenUDID is"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_9
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OpenUDID is not available, please make sure that you have it in your classpath"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setId(Lio/rong/imlib/statistics/DeviceId$Type;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "id"

    .prologue
    .line 145
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "DeviceId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 149
    iput-object p2, p0, Lio/rong/imlib/statistics/DeviceId;->id:Ljava/lang/String;

    .line 150
    return-void
.end method

.method protected switchToIdType(Lio/rong/imlib/statistics/DeviceId$Type;Landroid/content/Context;Lio/rong/imlib/statistics/StatisticsStore;)V
    .locals 3
    .parameter "type"
    .parameter "context"
    .parameter "store"

    .prologue
    .line 153
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "DeviceId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to device ID generation strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/statistics/DeviceId;->type:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 157
    invoke-direct {p0, p3, p1}, Lio/rong/imlib/statistics/DeviceId;->storeOverriddenType(Lio/rong/imlib/statistics/StatisticsStore;Lio/rong/imlib/statistics/DeviceId$Type;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lio/rong/imlib/statistics/DeviceId;->init(Landroid/content/Context;Lio/rong/imlib/statistics/StatisticsStore;Z)V

    .line 159
    return-void
.end method
