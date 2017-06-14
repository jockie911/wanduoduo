.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnrefreshListen"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;->position:I

    .line 491
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 507
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 495
    iget v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;->position:I

    packed-switch v0, :pswitch_data_0

    .line 502
    :goto_0
    return-void

    .line 497
    :pswitch_0
    const-string v0, "city_select"

    invoke-static {v0, p1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    const-class v0, Lcom/wanduoduo/bean/CitySelectBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean;

    #setter for: Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->access$402(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Lcom/wanduoduo/bean/CitySelectBean;)Lcom/wanduoduo/bean/CitySelectBean;

    .line 499
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
