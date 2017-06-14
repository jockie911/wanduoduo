.class Lcom/wanduoduo/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/MainActivity;->setUserAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/MainActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wanduoduo/ui/MainActivity$1;->this$0:Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 177
    const-string v0, "user_alive"

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity$1;->this$0:Lcom/wanduoduo/ui/MainActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    #calls: Lcom/wanduoduo/ui/MainActivity;->getMap(DD)Ljava/util/Map;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wanduoduo/ui/MainActivity;->access$000(Lcom/wanduoduo/ui/MainActivity;DD)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/MainActivity$1$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/MainActivity$1$1;-><init>(Lcom/wanduoduo/ui/MainActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 187
    return-void
.end method
