.class public Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;
.super Ljava/lang/Object;
.source "CitySelectBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CitySelectBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SonBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;
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
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->abbreviation:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGrandSon()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->son:Ljava/util/List;

    return-object v0
.end method

.method public getHot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->hot:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->parent_code:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public setAbbreviation(Ljava/lang/String;)V
    .locals 0
    .parameter "abbreviation"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->abbreviation:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0
    .parameter "city_name"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->city_name:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->code:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setGrandSon(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, son:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->son:Ljava/util/List;

    .line 194
    return-void
.end method

.method public setHot(Ljava/lang/String;)V
    .locals 0
    .parameter "hot"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->hot:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->id:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setParent_code(Ljava/lang/String;)V
    .locals 0
    .parameter "parent_code"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->parent_code:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter "pinyin"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->pinyin:Ljava/lang/String;

    .line 186
    return-void
.end method
