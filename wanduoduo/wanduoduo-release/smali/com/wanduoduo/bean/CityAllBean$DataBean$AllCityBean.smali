.class public Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
.super Ljava/lang/Object;
.source "CityAllBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CityAllBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCityBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->code:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->id:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter "pinyin"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->pinyin:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->title:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->type:Ljava/lang/String;

    .line 129
    return-void
.end method
