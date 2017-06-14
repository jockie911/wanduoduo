.class Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "SettingMobileNumFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 188
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 190
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    const-class v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "oldsmscode"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-virtual {v2}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->finish()V

    goto :goto_0

    .line 196
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    const-string v2, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :sswitch_2
    const-string v2, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :sswitch_3
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :sswitch_4
    const-string v2, "\u624b\u673a\u53f7\u7801\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;->this$0:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-virtual {v2}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->finish()V

    goto :goto_0

    .line 209
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, errMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
