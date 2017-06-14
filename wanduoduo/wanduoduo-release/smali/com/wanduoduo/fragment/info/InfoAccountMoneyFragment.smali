.class public Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "InfoAccountMoneyFragment.java"


# instance fields
.field private TYPE_NEW:I

.field private TYPE_OLD:I

.field private money_bal:Ljava/lang/String;

.field private money_draw:Ljava/lang/String;

.field private money_in:Ljava/lang/String;

.field tvMoneyIn:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b6
        }
    .end annotation
.end field

.field tvMonry:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f4
        }
    .end annotation
.end field

.field tvMonryDraw:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0214
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->TYPE_NEW:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->TYPE_OLD:I

    .line 44
    const-string v0, "0.00"

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;

    .line 45
    const-string v0, "0.00"

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_in:Ljava/lang/String;

    .line 46
    const-string v0, "0.00"

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_draw:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_in:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_in:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_draw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_draw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;

    return-object p1
.end method

.method private jumpToItemActivity(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v1, "money_bal"

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method

.method private requsetMonet()V
    .locals 4

    .prologue
    .line 63
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

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;-><init>(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 50
    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "money"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, money:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->tvMonry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->requsetMonet()V

    .line 60
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->requsetMonet()V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0216,
            0x7f0e0215,
            0x7f0e0217,
            0x7f0e0162
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 95
    :sswitch_0
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->jumpToItemActivity(I)V

    goto :goto_0

    .line 98
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 102
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, intent1:Landroid/content/Intent;
    const-string v2, "type"

    iget v3, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->TYPE_NEW:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->TYPE_NEW:I

    invoke-virtual {p0, v1, v2}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    .end local v1           #intent1:Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x7f0e0162 -> :sswitch_3
        0x7f0e0215 -> :sswitch_1
        0x7f0e0216 -> :sswitch_0
        0x7f0e0217 -> :sswitch_2
    .end sparse-switch
.end method
