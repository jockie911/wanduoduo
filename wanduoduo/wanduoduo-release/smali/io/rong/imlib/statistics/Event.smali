.class Lio/rong/imlib/statistics/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final SEGMENTATION_KEY:Ljava/lang/String; = "segmentation"

.field private static final SUM_KEY:Ljava/lang/String; = "sum"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"


# instance fields
.field public count:I

.field public key:Ljava/lang/String;

.field public segmentation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sum:D

.field public timestamp:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromJSON(Lorg/json/JSONObject;)Lio/rong/imlib/statistics/Event;
    .locals 10
    .parameter "json"

    .prologue
    .line 90
    new-instance v1, Lio/rong/imlib/statistics/Event;

    invoke-direct {v1}, Lio/rong/imlib/statistics/Event;-><init>()V

    .line 93
    .local v1, event:Lio/rong/imlib/statistics/Event;
    :try_start_0
    const-string v6, "key"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    const-string v6, "key"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v6, "count"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lio/rong/imlib/statistics/Event;->count:I

    .line 97
    const-string v6, "sum"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v1, Lio/rong/imlib/statistics/Event;->sum:D

    .line 98
    const-string v6, "timestamp"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lio/rong/imlib/statistics/Event;->timestamp:I

    .line 100
    const-string v6, "segmentation"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    const-string v6, "segmentation"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 102
    .local v4, segm:Lorg/json/JSONObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    .local v5, segmentation:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 104
    .local v3, nameItr:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #nameItr:Ljava/util/Iterator;
    .end local v4           #segm:Lorg/json/JSONObject;
    .end local v5           #segmentation:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    const-string v6, "Statistics"

    const-string v7, "Got exception converting JSON to an Event"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 120
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    iget-object v6, v1, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v1, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .end local v1           #event:Lio/rong/imlib/statistics/Event;
    :goto_2
    return-object v1

    .line 110
    .restart local v1       #event:Lio/rong/imlib/statistics/Event;
    .restart local v3       #nameItr:Ljava/util/Iterator;
    .restart local v4       #segm:Lorg/json/JSONObject;
    .restart local v5       #segmentation:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    iput-object v5, v1, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 120
    .end local v3           #nameItr:Ljava/util/Iterator;
    .end local v4           #segm:Lorg/json/JSONObject;
    .end local v5           #segmentation:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 125
    if-eqz p1, :cond_0

    instance-of v2, p1, Lio/rong/imlib/statistics/Event;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 129
    check-cast v0, Lio/rong/imlib/statistics/Event;

    .line 131
    .local v0, e:Lio/rong/imlib/statistics/Event;
    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_1
    iget v2, p0, Lio/rong/imlib/statistics/Event;->timestamp:I

    iget v3, v0, Lio/rong/imlib/statistics/Event;->timestamp:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    if-nez v2, :cond_3

    iget-object v2, v0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    if-nez v2, :cond_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    iget-object v3, v0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    iget v2, p0, Lio/rong/imlib/statistics/Event;->timestamp:I

    if-eqz v2, :cond_0

    iget v1, p0, Lio/rong/imlib/statistics/Event;->timestamp:I

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    iget-object v3, p0, Lio/rong/imlib/statistics/Event;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "count"

    iget v3, p0, Lio/rong/imlib/statistics/Event;->count:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v2, "timestamp"

    iget v3, p0, Lio/rong/imlib/statistics/Event;->timestamp:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    iget-object v2, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "segmentation"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/rong/imlib/statistics/Event;->segmentation:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    const-string v2, "sum"

    iget-wide v4, p0, Lio/rong/imlib/statistics/Event;->sum:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "Statistics"

    const-string v3, "Got exception converting an Event to JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
