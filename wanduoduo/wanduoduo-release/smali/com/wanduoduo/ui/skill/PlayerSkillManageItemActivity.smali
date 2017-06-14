.class public Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PlayerSkillManageItemActivity.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fm"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f04004c

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->type:I

    .line 25
    iget v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    :pswitch_0
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u8ba2\u5355\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6280\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u7528\u6237\u8bc4\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 39
    :pswitch_4
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u7533\u8bf7\u63d0\u73b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
