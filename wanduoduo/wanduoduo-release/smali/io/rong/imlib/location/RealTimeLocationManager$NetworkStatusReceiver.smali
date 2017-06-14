.class Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RealTimeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocationManager;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/location/RealTimeLocationManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 113
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 114
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    :cond_0
    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #getter for: Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocationManager;->access$500(Lio/rong/imlib/location/RealTimeLocationManager;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #getter for: Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocationManager;->access$500(Lio/rong/imlib/location/RealTimeLocationManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 116
    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #getter for: Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocationManager;->access$500(Lio/rong/imlib/location/RealTimeLocationManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 117
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocation;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/location/RealTimeLocation;

    .line 120
    .local v4, rtl:Lio/rong/imlib/location/RealTimeLocation;
    invoke-virtual {v4}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 125
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocation;>;"
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocation;>;"
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #rtl:Lio/rong/imlib/location/RealTimeLocation;
    :cond_1
    return-void
.end method
