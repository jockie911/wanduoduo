.class Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;
.super Ljava/lang/Object;
.source "ActiviPublishSelectPlaceActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, poiList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/location/Poi;>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->activiPublishSelectPlaceAdapter:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->access$100(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$ActiviPublishSelectPlaceAdapter;->addData(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->access$200(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)Lcom/wanduoduo/bean/PubSelectPlaceBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->setLat(D)V

    .line 52
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;->access$200(Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;)Lcom/wanduoduo/bean/PubSelectPlaceBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->setLng(D)V

    .line 53
    return-void
.end method
