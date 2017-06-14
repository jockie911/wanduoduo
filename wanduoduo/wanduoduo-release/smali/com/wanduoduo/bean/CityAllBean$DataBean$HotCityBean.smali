.class public Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;
.super Ljava/lang/Object;
.source "CityAllBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CityAllBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotCityBean"
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
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->code:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->id:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter "pinyin"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->pinyin:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->title:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wanduoduo/bean/CityAllBean$DataBean$HotCityBean;->type:Ljava/lang/String;

    .line 177
    return-void
.end method
