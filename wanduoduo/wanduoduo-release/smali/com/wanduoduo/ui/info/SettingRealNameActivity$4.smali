.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity;->setSuscess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

.field final synthetic val$pics:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;->val$pics:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 188
    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u6210\u529f"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pic"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;->val$pics:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->setResult(I)V

    .line 192
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->finish()V

    .line 193
    return-void
.end method
