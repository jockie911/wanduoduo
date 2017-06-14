.class Lcom/wanduoduo/ui/info/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingActivity;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingActivity$3;->this$0:Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 118
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 104
    invoke-static {}, Lcom/wanduoduo/utils/SPUtils;->deleteSP()V

    .line 105
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->disconnect()V

    .line 108
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingActivity$3;->this$0:Lcom/wanduoduo/ui/info/SettingActivity;

    const-class v4, Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 111
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {v0}, Landroid/support/v4/content/IntentCompat;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, mainIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingActivity$3;->this$0:Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-virtual {v3, v2}, Lcom/wanduoduo/ui/info/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
