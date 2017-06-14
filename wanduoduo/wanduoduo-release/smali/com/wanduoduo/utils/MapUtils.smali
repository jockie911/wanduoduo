.class public Lcom/wanduoduo/utils/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field private static instence:Lcom/wanduoduo/utils/MapUtils;

.field private static sMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/wanduoduo/utils/MapUtils;

    invoke-direct {v0}, Lcom/wanduoduo/utils/MapUtils;-><init>()V

    sput-object v0, Lcom/wanduoduo/utils/MapUtils;->instence:Lcom/wanduoduo/utils/MapUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 15
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    .line 17
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->instence:Lcom/wanduoduo/utils/MapUtils;

    return-object v0
.end method

.method public static clear()Lcom/wanduoduo/utils/MapUtils;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    .line 24
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 25
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->instence:Lcom/wanduoduo/utils/MapUtils;

    return-object v0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
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
    .line 29
    sget-object v0, Lcom/wanduoduo/utils/MapUtils;->sMap:Ljava/util/Map;

    return-object v0
.end method
