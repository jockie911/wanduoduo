.class public Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "AuthenticationPersonInfoActivity.java"


# instance fields
.field tvIdcard:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00de
        }
    .end annotation
.end field

.field tvVideo:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00dc
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private setInfo()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f040021

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u4e2a\u4eba\u4fe1\u606f\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->setInfo()V

    .line 38
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->setInfo()V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00dd,
            0x7f0e00df
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00dd
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
