.class public Lio/rong/imlib/statistics/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# instance fields
.field private final statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;


# direct methods
.method constructor <init>(Lio/rong/imlib/statistics/StatisticsStore;)V
    .locals 0
    .parameter "statisticsStore"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    .line 49
    return-void
.end method


# virtual methods
.method events()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    iget-object v5, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v5}, Lio/rong/imlib/statistics/StatisticsStore;->eventsList()Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, events:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/statistics/Event;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .local v1, eventArray:Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/statistics/Event;

    .line 71
    .local v0, e:Lio/rong/imlib/statistics/Event;
    invoke-virtual {v0}, Lio/rong/imlib/statistics/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 74
    .end local v0           #e:Lio/rong/imlib/statistics/Event;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v5, v2}, Lio/rong/imlib/statistics/StatisticsStore;->removeEvents(Ljava/util/Collection;)V

    .line 79
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 84
    :goto_1
    return-object v4

    .line 80
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method getCountlyStore()Lio/rong/imlib/statistics/StatisticsStore;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    return-object v0
.end method

.method recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 8
    .parameter "key"
    .parameter
    .parameter "count"
    .parameter "sum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ID)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, segmentation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v4

    .line 98
    .local v4, timestamp:I
    iget-object v1, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/statistics/StatisticsStore;->addEvent(Ljava/lang/String;Ljava/util/Map;IID)V

    .line 99
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/rong/imlib/statistics/EventQueue;->statisticsStore_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/StatisticsStore;->events()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
