.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;
.super Lcom/wanduoduo/widget/MyHandler;
.source "PlayerSkillPerfectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 616
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 617
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 618
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 619
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 626
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 621
    const-string v1, "gift_pub"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    #calls: Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getMap()Ljava/util/Map;
    invoke-static {v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->access$300(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 622
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 623
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 624
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    const-class v4, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
