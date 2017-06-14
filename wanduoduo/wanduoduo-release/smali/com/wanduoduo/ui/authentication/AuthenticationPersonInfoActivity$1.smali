.class Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationPersonInfoActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->setInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 5
    .parameter "infoBean"

    .prologue
    const v4, 0x7f0d002d

    const v3, 0x7f0d001c

    const v2, 0x7f0d001b

    .line 44
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo_back()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    const-string v1, "\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :cond_0
    :goto_0
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_pic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    const-string v1, "\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :goto_1
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo_back()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    const-string v1, "*\u5ba1\u6838\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    const-string v1, "\u5df2\u901a\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvVideo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    const-string v1, "*\u5ba1\u6838\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    const-string v1, "\u5df2\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvIdcard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
