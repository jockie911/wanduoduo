.class public Lcom/wanduoduo/utils/AreaNameUtils;
.super Ljava/lang/Object;
.source "AreaNameUtils.java"


# static fields
.field private static citySelectBean:Lcom/wanduoduo/bean/CitySelectBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAreaNameLists(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "area_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static getCityCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cityName"

    .prologue
    .line 56
    const-string v3, "city_list"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, stringLocationCash:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_0
    const-string v3, "0"

    .line 64
    :goto_0
    return-object v3

    .line 59
    :cond_1
    const-class v3, Lcom/wanduoduo/bean/CityAllBean;

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CityAllBean;

    .line 60
    .local v1, cityAllBean:Lcom/wanduoduo/bean/CityAllBean;
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean;->getData()Lcom/wanduoduo/bean/CityAllBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean;->getAll_city()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    .line 61
    .local v0, allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 64
    .end local v0           #allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    :cond_3
    const-string v3, "0"

    goto :goto_0
.end method
