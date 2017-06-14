.class Lcom/wanduoduo/ui/index/SelectLocationActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "SelectLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/index/SelectLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$1;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$1;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    #getter for: Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;
    invoke-static {v0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->access$100(Lcom/wanduoduo/ui/index/SelectLocationActivity;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity$1;->this$0:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    #getter for: Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->access$000(Lcom/wanduoduo/ui/index/SelectLocationActivity;)Lcom/wanduoduo/bean/CityAllBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean;->getData()Lcom/wanduoduo/bean/CityAllBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean;->getAll_city()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->addData(Ljava/util/List;Z)V

    .line 76
    return-void
.end method
