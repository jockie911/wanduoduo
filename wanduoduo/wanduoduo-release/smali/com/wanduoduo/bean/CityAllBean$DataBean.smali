.class public Lcom/wanduoduo/bean/CityAllBean$DataBean;
.super Ljava/lang/Object;
.source "CityAllBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CityAllBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;,
        Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    }
.end annotation


# instance fields
.field private all_city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll_city()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean;->all_city:Ljava/util/List;

    return-object v0
.end method

.method public getHot_city()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean;->hot_city:Ljava/util/List;

    return-object v0
.end method

.method public setAll_city(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, all_city:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean;->all_city:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setHot_city(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, hot_city:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean;->hot_city:Ljava/util/List;

    .line 82
    return-void
.end method
