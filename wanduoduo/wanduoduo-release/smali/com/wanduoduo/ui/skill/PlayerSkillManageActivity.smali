.class public Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PlayerSkillManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;
    }
.end annotation


# instance fields
.field mgvManage:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ba
        }
    .end annotation
.end field

.field private money_bal:Ljava/lang/String;

.field tvMoneyDraw:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b8
        }
    .end annotation
.end field

.field tvMoneyIn:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b6
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->money_bal:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->money_bal:Ljava/lang/String;

    return-object p1
.end method

.method private jumpToItemActivity(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private requestMoney()V
    .locals 4

    .prologue
    .line 55
    const-string v0, "user_billsum"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f04004b

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u6280\u80fd\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;)V

    .line 48
    .local v0, manageAdapter:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$ManageAdapter;
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->mgvManage:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->mgvManage:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v1, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->requestMoney()V

    .line 52
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->requestMoney()V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01bb,
            0x7f0e01b9
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01bb

    if-ne v1, v2, :cond_1

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01b9

    if-ne v1, v2, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "money_bal"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->money_bal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    .line 103
    packed-switch p3, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->jumpToItemActivity(I)V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->jumpToItemActivity(I)V

    goto :goto_0

    .line 111
    :pswitch_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->jumpToItemActivity(I)V

    goto :goto_0

    .line 114
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/index/DetailWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "http://api.wanduoduo.cc/new/a_service_teach.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
