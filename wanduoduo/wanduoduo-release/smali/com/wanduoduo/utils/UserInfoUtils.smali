.class public Lcom/wanduoduo/utils/UserInfoUtils;
.super Ljava/lang/Object;
.source "UserInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;
    }
.end annotation


# static fields
.field static handler:Landroid/os/Handler;

.field private static infoBean:Lcom/wanduoduo/bean/InfoBean;

.field private static ors:Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/wanduoduo/utils/UserInfoUtils$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wanduoduo/utils/UserInfoUtils$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wanduoduo/utils/UserInfoUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/wanduoduo/bean/InfoBean;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wanduoduo/utils/UserInfoUtils;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/wanduoduo/utils/UserInfoUtils;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p0
.end method

.method static synthetic access$100()Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wanduoduo/utils/UserInfoUtils;->ors:Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;

    return-object v0
.end method

.method private static getMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v0
.end method

.method public static getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V
    .locals 3
    .parameter "onResquestSuccess"

    .prologue
    .line 22
    sput-object p0, Lcom/wanduoduo/utils/UserInfoUtils;->ors:Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;

    .line 23
    const-string v0, "user_info"

    invoke-static {}, Lcom/wanduoduo/utils/UserInfoUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/utils/UserInfoUtils$1;

    invoke-direct {v2}, Lcom/wanduoduo/utils/UserInfoUtils$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 36
    return-void
.end method
