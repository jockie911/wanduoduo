.class public Lcom/wanduoduo/utils/GsonTools;
.super Ljava/lang/Object;
.source "GsonTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "gsonString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 29
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, t:Ljava/lang/Object;,"TT;"
    return-object v1
.end method

.method public static changeGsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .parameter "gsonString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v0, gson:Lcom/google/gson/Gson;
    new-instance v2, Lcom/wanduoduo/utils/GsonTools$1;

    invoke-direct {v2}, Lcom/wanduoduo/utils/GsonTools$1;-><init>()V

    .line 36
    invoke-virtual {v2}, Lcom/wanduoduo/utils/GsonTools$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 35
    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 37
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    return-object v1
.end method

.method public static changeGsonToListMaps(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "gsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    .local v0, gson:Lcom/google/gson/Gson;
    new-instance v2, Lcom/wanduoduo/utils/GsonTools$2;

    invoke-direct {v2}, Lcom/wanduoduo/utils/GsonTools$2;-><init>()V

    .line 47
    invoke-virtual {v2}, Lcom/wanduoduo/utils/GsonTools$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 46
    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    check-cast v1, Ljava/util/List;

    .line 48
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    return-object v1
.end method

.method public static changeGsonToMaps(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "gsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    .local v0, gson:Lcom/google/gson/Gson;
    new-instance v2, Lcom/wanduoduo/utils/GsonTools$3;

    invoke-direct {v2}, Lcom/wanduoduo/utils/GsonTools$3;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/wanduoduo/utils/GsonTools$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 54
    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TT;>;"
    check-cast v1, Ljava/util/Map;

    .line 56
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TT;>;"
    return-object v1
.end method

.method public static createGsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, gsonString:Ljava/lang/String;
    return-object v1
.end method
