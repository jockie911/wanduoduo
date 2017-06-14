.class public Lcom/wanduoduo/bean/CitySelectBean$DataBean;
.super Ljava/lang/Object;
.source "CitySelectBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CitySelectBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;
    }
.end annotation


# instance fields
.field private abbreviation:Ljava/lang/String;

.field private city_name:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private hot:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private parent_code:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private son:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->abbreviation:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->hot:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->parent_code:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getSon()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->son:Ljava/util/List;

    return-object v0
.end method

.method public setAbbreviation(Ljava/lang/String;)V
    .locals 0
    .parameter "abbreviation"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->abbreviation:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0
    .parameter "city_name"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->city_name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->code:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setHot(Ljava/lang/String;)V
    .locals 0
    .parameter "hot"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->hot:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->id:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setParent_code(Ljava/lang/String;)V
    .locals 0
    .parameter "parent_code"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->parent_code:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter "pinyin"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->pinyin:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSon(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, son:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->son:Ljava/util/List;

    .line 119
    return-void
.end method
