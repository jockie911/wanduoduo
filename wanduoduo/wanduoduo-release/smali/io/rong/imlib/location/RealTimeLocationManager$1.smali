.class Lio/rong/imlib/location/RealTimeLocationManager$1;
.super Ljava/lang/Object;
.source "RealTimeLocationManager.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/location/RealTimeLocationManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocationManager;


# direct methods
.method constructor <init>(Lio/rong/imlib/location/RealTimeLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 6
    .parameter "message"
    .parameter "left"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocationManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceived : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 65
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    if-nez v0, :cond_1

    move v1, v2

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    .local v1, result:Z
    if-lez p2, :cond_2

    .line 70
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #setter for: Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I
    invoke-static {v3, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->access$202(Lio/rong/imlib/location/RealTimeLocationManager;I)I

    .line 72
    :cond_2
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #getter for: Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I
    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocationManager;->access$200(Lio/rong/imlib/location/RealTimeLocationManager;)I

    move-result v3

    if-lez v3, :cond_3

    .line 73
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #calls: Lio/rong/imlib/location/RealTimeLocationManager;->cacheOfflineRequest(Lio/rong/imlib/model/Message;)Z
    invoke-static {v3, p1}, Lio/rong/imlib/location/RealTimeLocationManager;->access$300(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Message;)Z

    move-result v1

    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #setter for: Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I
    invoke-static {v3, v2}, Lio/rong/imlib/location/RealTimeLocationManager;->access$202(Lio/rong/imlib/location/RealTimeLocationManager;I)I

    .line 76
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #calls: Lio/rong/imlib/location/RealTimeLocationManager;->handleRequest(Lio/rong/imlib/model/Message;)Z
    invoke-static {v2, p1}, Lio/rong/imlib/location/RealTimeLocationManager;->access$400(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Message;)Z

    move-result v1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager$1;->this$0:Lio/rong/imlib/location/RealTimeLocationManager;

    #calls: Lio/rong/imlib/location/RealTimeLocationManager;->handleRequest(Lio/rong/imlib/model/Message;)Z
    invoke-static {v2, p1}, Lio/rong/imlib/location/RealTimeLocationManager;->access$400(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Message;)Z

    move-result v1

    goto :goto_0
.end method
