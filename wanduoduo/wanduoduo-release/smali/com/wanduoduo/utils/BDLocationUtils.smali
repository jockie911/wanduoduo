.class public Lcom/wanduoduo/utils/BDLocationUtils;
.super Ljava/lang/Object;
.source "BDLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/utils/BDLocationUtils$MyLocationListener;,
        Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;
    }
.end annotation


# static fields
.field public static mLocationClient:Lcom/baidu/location/LocationClient;

.field private static successListener:Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/wanduoduo/utils/BDLocationUtils;->mLocationClient:Lcom/baidu/location/LocationClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/wanduoduo/utils/BDLocationUtils;->successListener:Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;

    return-object v0
.end method

.method private static initLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 38
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 44
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setLocationNotify(Z)V

    .line 45
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationDescribe(Z)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationPoiList(Z)V

    .line 47
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setIgnoreKillProcess(Z)V

    .line 48
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->SetIgnoreCacheException(Z)V

    .line 49
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setEnableSimulateGps(Z)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationPoiList(Z)V

    .line 51
    sget-object v1, Lcom/wanduoduo/utils/BDLocationUtils;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 52
    return-void
.end method

.method public static start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wanduoduo/utils/BDLocationUtils;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 30
    sput-object p0, Lcom/wanduoduo/utils/BDLocationUtils;->successListener:Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;

    .line 31
    invoke-static {}, Lcom/wanduoduo/utils/BDLocationUtils;->initLocation()V

    .line 32
    sget-object v0, Lcom/wanduoduo/utils/BDLocationUtils;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance v1, Lcom/wanduoduo/utils/BDLocationUtils$MyLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/wanduoduo/utils/BDLocationUtils$MyLocationListener;-><init>(Lcom/wanduoduo/utils/BDLocationUtils$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 33
    sget-object v0, Lcom/wanduoduo/utils/BDLocationUtils;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 34
    return-void
.end method
