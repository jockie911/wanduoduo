.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 111
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    const-class v0, Lcom/wanduoduo/bean/ActiviBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean;

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$002(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Lcom/wanduoduo/bean/ActiviBean;)Lcom/wanduoduo/bean/ActiviBean;

    .line 103
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->activiBean:Lcom/wanduoduo/bean/ActiviBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$000(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)Lcom/wanduoduo/bean/ActiviBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean;->getData()Lcom/wanduoduo/bean/ActiviBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean;->getTotal_page()I

    move-result v1

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->total_page:I
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$102(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I

    .line 105
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$1;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 106
    return-void
.end method
