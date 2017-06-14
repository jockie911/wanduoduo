.class public Lcom/wanduoduo/utils/GiftNameUtils;
.super Ljava/lang/Object;
.source "GiftNameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "city_id"

    .prologue
    .line 51
    const-string v3, "city_list"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, stringLocationCash:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :cond_0
    const-string v3, "\u672a\u77e5"

    .line 60
    :goto_0
    return-object v3

    .line 55
    :cond_1
    const-class v3, Lcom/wanduoduo/bean/CityAllBean;

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CityAllBean;

    .line 56
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

    .line 57
    .local v0, allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 60
    .end local v0           #allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    :cond_3
    const-string v3, "\u672a\u77e5"

    goto :goto_0
.end method

.method public static getTagName(Ljava/lang/String;Landroid/os/Handler;)Ljava/lang/String;
    .locals 3
    .parameter "tagId"
    .parameter "myHandler"

    .prologue
    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, ""

    .line 46
    :goto_0
    return-object v0

    .line 20
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    const-string v0, "\u5168\u90e8"

    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "999"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    const-string v0, "\u5176\u4ed6"

    goto :goto_0

    .line 24
    :cond_2
    const-string v0, "tag_list"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/utils/GiftNameUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/utils/GiftNameUtils$1;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 46
    const-string v0, ""

    goto :goto_0
.end method
