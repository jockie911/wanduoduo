.class public Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoReceiveGiftActivity.java"


# instance fields
.field tvCharming:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e011f
        }
    .end annotation
.end field

.field tvGiftCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0121
        }
    .end annotation
.end field

.field tvRenqi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0120
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->makeSureTiXian()V

    return-void
.end method

.method private alertDialog()V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u662f\u5426\u63d0\u73b0\u81f3\u4f59\u989d\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 70
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;-><init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 86
    return-void
.end method

.method private makeSureTiXian()V
    .locals 4

    .prologue
    .line 89
    const-string v0, "charm_money"

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

    new-instance v2, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;-><init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f040031

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6536\u5230\u7684\u793c\u7269"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e011e
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011e

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->alertDialog()V

    .line 62
    :cond_0
    return-void
.end method

.method public setTvCharming(Ljava/lang/String;)V
    .locals 6
    .parameter "charming"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvCharming:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvRenqi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setTvGiftCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvGiftCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u6536\u5230\u7684\u793c\u7269("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
