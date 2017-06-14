.class public Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "ServiceInstoduceFragment.java"


# instance fields
.field tvDrink:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01c8
        }
    .end annotation
.end field

.field tvIntro:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0279
        }
    .end annotation
.end field

.field tvPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0106
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 32
    const v0, 0x7f040089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    iget-object v2, v3, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    .line 38
    .local v2, itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
    iget-object v3, p0, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getIntro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getArea_id()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, area_id:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getIs_drink()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, is_drink:Ljava/lang/String;
    const-string v3, "2"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;->tvDrink:Landroid/widget/TextView;

    const-string v4, "\u4e0d\u63a5\u53d7\u996e\u9152"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v3, "1"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;->tvDrink:Landroid/widget/TextView;

    const-string v4, "\u53ef\u5c11\u91cf\u996e\u9152"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
