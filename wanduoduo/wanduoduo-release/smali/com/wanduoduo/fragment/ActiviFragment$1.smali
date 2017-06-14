.class Lcom/wanduoduo/fragment/ActiviFragment$1;
.super Ljava/lang/Object;
.source "ActiviFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/ActiviFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/ActiviFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/ActiviFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/AreaNameUtils;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/ActiviFragment;->access$002(Lcom/wanduoduo/fragment/ActiviFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    #getter for: Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/ActiviFragment;->access$100(Lcom/wanduoduo/fragment/ActiviFragment;)Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    #getter for: Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/fragment/ActiviFragment;->access$000(Lcom/wanduoduo/fragment/ActiviFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->setCity_code(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    #calls: Lcom/wanduoduo/fragment/ActiviFragment;->dealWithFragment()V
    invoke-static {v0}, Lcom/wanduoduo/fragment/ActiviFragment;->access$200(Lcom/wanduoduo/fragment/ActiviFragment;)V

    .line 62
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment$1;->this$0:Lcom/wanduoduo/fragment/ActiviFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/ActiviFragment;->relLeft:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 63
    return-void
.end method
