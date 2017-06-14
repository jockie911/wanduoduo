.class public Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;
.super Lcom/wanduoduo/base/BaseWebViewActivity;
.source "AuthenticationSkillOrCarActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 4

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 15
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u8f66\u8f86\u8ba4\u8bc1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.wanduoduo.cc/new/car.html?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->setURL(Ljava/lang/String;)V

    .line 22
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/wanduoduo/base/BaseWebViewActivity;->initData()V

    .line 24
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v2, "go_back"

    new-instance v3, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->registerHandler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/BridgeHandler;)V

    .line 30
    return-void

    .line 18
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u6280\u80fd\u8ba4\u8bc1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.wanduoduo.cc/new/skill.html?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->setURL(Ljava/lang/String;)V

    goto :goto_0
.end method
