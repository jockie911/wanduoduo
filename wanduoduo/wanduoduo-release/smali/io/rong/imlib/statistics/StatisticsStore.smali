.class public Lio/rong/imlib/statistics/StatisticsStore;
.super Ljava/lang/Object;
.source "StatisticsStore.java"


# static fields
.field private static final CONNECTIONS_PREFERENCE:Ljava/lang/String; = "CONNECTIONS"

.field private static final DELIMITER:Ljava/lang/String; = ":::"

.field private static final EVENTS_PREFERENCE:Ljava/lang/String; = "EVENTS"

.field private static final LATEST_UPLOAD:Ljava/lang/String; = "LATEST"

.field private static final LOCATION_PREFERENCE:Ljava/lang/String; = "LOCATION"

.field private static final PREFERENCES:Ljava/lang/String; = "COUNTLY_STORE"

.field private static final UPLOAD_DURATION:I = 0x15180


# instance fields
.field private final preferences_:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide valid context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const-string v0, "COUNTLY_STORE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    .line 74
    return-void
.end method

.method static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 267
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lio/rong/imlib/statistics/Event;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lio/rong/imlib/statistics/Event;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/statistics/Event;

    .line 255
    .local v0, e:Lio/rong/imlib/statistics/Event;
    invoke-virtual {v0}, Lio/rong/imlib/statistics/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v0           #e:Lio/rong/imlib/statistics/Event;
    :cond_0
    invoke-static {v2, p1}, Lio/rong/imlib/statistics/StatisticsStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public declared-synchronized addConnection(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 131
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->connections()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CONNECTIONS"

    const-string v3, ":::"

    invoke-static {v0, v3}, Lio/rong/imlib/statistics/StatisticsStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0           #connections:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method addEvent(Lio/rong/imlib/statistics/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 189
    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->eventsList()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, events:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/statistics/Event;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EVENTS"

    const-string v3, ":::"

    invoke-static {v0, v3}, Lio/rong/imlib/statistics/StatisticsStore;->joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method

.method public declared-synchronized addEvent(Ljava/lang/String;Ljava/util/Map;IID)V
    .locals 3
    .parameter "key"
    .parameter
    .parameter "timestamp"
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
            ">;IID)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, segmentation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/rong/imlib/statistics/Event;

    invoke-direct {v0}, Lio/rong/imlib/statistics/Event;-><init>()V

    .line 223
    .local v0, event:Lio/rong/imlib/statistics/Event;
    iput-object p1, v0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    .line 224
    iput-object p2, v0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    .line 225
    iput p3, v0, Lio/rong/imlib/statistics/Event;->timestamp:I

    .line 226
    iput p4, v0, Lio/rong/imlib/statistics/Event;->count:I

    .line 227
    iput-wide p5, v0, Lio/rong/imlib/statistics/Event;->sum:D

    .line 229
    invoke-virtual {p0, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addEvent(Lio/rong/imlib/statistics/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 222
    .end local v0           #event:Lio/rong/imlib/statistics/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized clear()V
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "EVENTS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v1, "CONNECTIONS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 300
    .end local v0           #prefsEditor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connections()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v2, "CONNECTIONS"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, joinedConnStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public events()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v2, "EVENTS"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, joinedEventsStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public eventsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/statistics/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->events()[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, array:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v3, events:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/statistics/Event;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 100
    .local v6, s:Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lio/rong/imlib/statistics/Event;->fromJSON(Lorg/json/JSONObject;)Lio/rong/imlib/statistics/Event;

    move-result-object v2

    .line 101
    .local v2, event:Lio/rong/imlib/statistics/Event;
    if-eqz v2, :cond_0

    .line 102
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2           #event:Lio/rong/imlib/statistics/Event;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    new-instance v7, Lio/rong/imlib/statistics/StatisticsStore$1;

    invoke-direct {v7, p0}, Lio/rong/imlib/statistics/StatisticsStore$1;-><init>(Lio/rong/imlib/statistics/StatisticsStore;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    return-object v3

    .line 104
    .restart local v6       #s:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method getAndRemoveLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v2, "LOCATION"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, location:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCATION"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmptyConnections()Z
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeConnection(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 176
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->connections()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CONNECTIONS"

    const-string v3, ":::"

    invoke-static {v0, v3}, Lio/rong/imlib/statistics/StatisticsStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v0           #connections:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeEvents(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lio/rong/imlib/statistics/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, eventsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<Lio/rong/imlib/statistics/Event;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->eventsList()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, events:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/statistics/Event;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EVENTS"

    const-string v3, ":::"

    invoke-static {v0, v3}, Lio/rong/imlib/statistics/StatisticsStore;->joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0           #events:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/statistics/Event;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setLocation(DD)V
    .locals 5
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 198
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 291
    monitor-enter p0

    if-nez p2, :cond_0

    .line 292
    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLatestUploadTime()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LATEST"

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method public uploadIfNeed()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v0

    .line 145
    .local v0, current:I
    iget-object v4, p0, Lio/rong/imlib/statistics/StatisticsStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v5, "LATEST"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, time:I
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v4, "Statistics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadIfNeed : last = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->updateLatestUploadTime()V

    .line 159
    :goto_0
    return v2

    .line 154
    :cond_1
    const v4, 0x15180

    add-int/2addr v1, v4

    .line 155
    if-gt v1, v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lio/rong/imlib/statistics/StatisticsStore;->updateLatestUploadTime()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 159
    goto :goto_0
.end method
