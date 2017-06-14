.class public Lcom/wanduoduo/ui/info/CouponsActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "CouponsActivity.java"


# static fields
.field private static final MY_COUPONS:I = 0x1

.field private static final OLD_COUPONS:I = 0x2


# instance fields
.field etCouponsSearch:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ee
        }
    .end annotation
.end field

.field private infoCouponsFragment:Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

.field private isUserConpous:Z

.field llCouponsSearch:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ed
        }
    .end annotation
.end field

.field llOldPassCoupons:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00f1
        }
    .end annotation
.end field

.field tvOldPassCoupons:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00f2
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/CouponsActivity;)Lcom/wanduoduo/fragment/info/InfoCouponsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->infoCouponsFragment:Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    return-object v0
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fm"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/CouponsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f040028

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 49
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/CouponsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isuserconpous"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->isUserConpous:Z

    .line 50
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/CouponsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/CouponsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5386\u53f2\u4f18\u60e0\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->llOldPassCoupons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->llCouponsSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    iget-boolean v1, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->isUserConpous:Z

    invoke-direct {v0, v3, v1}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/CouponsActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u4f18\u60e0\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->isUserConpous:Z

    invoke-direct {v0, v1, v2}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;-><init>(IZ)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->infoCouponsFragment:Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->infoCouponsFragment:Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/CouponsActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00ef
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->etCouponsSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "\u5151\u6362\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "exchange_ticket"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "code"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/CouponsActivity;->etCouponsSearch:Landroid/widget/EditText;

    .line 82
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/CouponsActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/CouponsActivity$1;-><init>(Lcom/wanduoduo/ui/info/CouponsActivity;)V

    .line 81
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00f2
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00f2

    if-ne v1, v2, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/CouponsActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
