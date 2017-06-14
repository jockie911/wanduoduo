.class Lcom/wanduoduo/ui/SplashActivity$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/SplashActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wanduoduo/ui/SplashActivity$2;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 92
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/wanduoduo/ui/SplashActivity$2;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    #getter for: Lcom/wanduoduo/ui/SplashActivity;->updataBean:Lcom/wanduoduo/bean/UpdataBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/SplashActivity;->access$000(Lcom/wanduoduo/ui/SplashActivity;)Lcom/wanduoduo/bean/UpdataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/UpdataBean;->getData()Lcom/wanduoduo/bean/UpdataBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/UpdataBean$DataBean;->getIs_update()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity$2;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    #calls: Lcom/wanduoduo/ui/SplashActivity;->showDialog()V
    invoke-static {v0}, Lcom/wanduoduo/ui/SplashActivity;->access$100(Lcom/wanduoduo/ui/SplashActivity;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity$2;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/SplashActivity$2;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    const-class v3, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
