.class Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;
.super Lcom/wanduoduo/widget/MyHandler;
.source "LogInUseSmsCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 153
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 155
    :sswitch_0
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 156
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    const-string v1, "token"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "rc_token"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getRctoken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getRctoken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v3}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v4}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->connectRongIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$300(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_password()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_password()I

    move-result v1

    if-nez v1, :cond_2

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    const-class v2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "sex"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "avatar"

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->finish()V

    goto/16 :goto_0

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->infoBean:Lcom/wanduoduo/bean/InfoBean;
    invoke-static {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->access$200(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)Lcom/wanduoduo/bean/InfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    const-class v4, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$1;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->finish()V

    goto/16 :goto_0

    .line 176
    :sswitch_1
    invoke-static {}, Lcom/wanduoduo/utils/DialogUtils;->loadingDismiss()V

    .line 177
    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :sswitch_2
    const-string v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_3
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
