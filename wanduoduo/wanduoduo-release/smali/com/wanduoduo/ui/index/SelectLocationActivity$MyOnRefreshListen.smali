.class Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "SelectLocationActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/index/SelectLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 158
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 150
    const-string v0, "city_list"

    invoke-static {v0, p1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    const-class v0, Lcom/wanduoduo/bean/CityAllBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CityAllBean;

    #setter for: Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->access$002(Lcom/wanduoduo/ui/index/SelectLocationActivity;Lcom/wanduoduo/bean/CityAllBean;)Lcom/wanduoduo/bean/CityAllBean;

    .line 152
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method
