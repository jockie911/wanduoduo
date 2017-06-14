.class public Lcom/wanduoduo/ui/skill/PersonAbilityActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PersonAbilityActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field containerLL:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0182
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field public itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

.field ivAvctor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f7
        }
    .end annotation
.end field

.field ivRightTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e2
        }
    .end annotation
.end field

.field private picNums:I

.field private popupWindowCount:Landroid/widget/PopupWindow;

.field private popupWindowServerTime:Landroid/widget/PopupWindow;

.field redDotView:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0183
        }
    .end annotation
.end field

.field relPro:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0187
        }
    .end annotation
.end field

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvDescContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0184
        }
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f9
        }
    .end annotation
.end field

.field tvOrder:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018f
        }
    .end annotation
.end field

.field tvOtherAbility:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018c
        }
    .end annotation
.end field

.field tvPlayerDiscuss:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018b
        }
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0113
        }
    .end annotation
.end field

.field tvServerCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0186
        }
    .end annotation
.end field

.field tvServiceDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018a
        }
    .end annotation
.end field

.field tvTagName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0185
        }
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018e
        }
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0181
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 121
    new-instance v0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$1;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getPlayerInfoBean()Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/PlayerInfoBean;-><init>()V

    .line 222
    .local v0, pinfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setId(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAge(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAvatar(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getCover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setCover_pic(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setFee(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setNickname(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setGender(I)V

    .line 229
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTitle(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/PlayerInfoBean;->setUser_id(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method private initItemData()V
    .locals 5

    .prologue
    const v4, 0x7f0d00a3

    .line 132
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvDescContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uffe5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServerCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b64\u6280\u80fd\u5171\u65bd\u5c55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getServer_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 137
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v0

    .line 138
    .local v0, gender:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f0200ab

    invoke-static {v1, v4, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 140
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTotalPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uffe5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f0200aa

    invoke-static {v1, v4, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 143
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e018d

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 252
    return-void
.end method

.method private selectServerTime()V
    .locals 6

    .prologue
    .line 205
    const-string v4, "2"

    iget-object v5, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getServer_time_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getServer_time()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, server_time:Ljava/lang/String;
    const-string v2, ""

    .line 208
    .local v2, selectedTime:Ljava/lang/String;
    new-instance v1, Lcom/wanduoduo/view/SelectServerTimeView;

    invoke-direct {v1, v3, v2}, Lcom/wanduoduo/view/SelectServerTimeView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v1, selectServerTimeView:Lcom/wanduoduo/view/SelectServerTimeView;
    invoke-virtual {v1}, Lcom/wanduoduo/view/SelectServerTimeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, rootView:Landroid/view/View;
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getPlayerInfoBean()Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wanduoduo/view/SelectServerTimeView;->setData(Lcom/wanduoduo/bean/PlayerInfoBean;)V

    .line 211
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOrder:Landroid/widget/TextView;

    invoke-static {p0, v4, v0}, Lcom/wanduoduo/utils/PopWindowUtils;->getWindow(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v4

    iput-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->popupWindowServerTime:Landroid/widget/PopupWindow;

    .line 218
    .end local v0           #rootView:Landroid/view/View;
    .end local v1           #selectServerTimeView:Lcom/wanduoduo/view/SelectServerTimeView;
    .end local v2           #selectedTime:Ljava/lang/String;
    .end local v3           #server_time:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setDots()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v5, 0x40e0

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->picNums:I

    if-ge v0, v3, :cond_1

    .line 152
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    .local v2, view:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 155
    const/high16 v3, 0x4110

    invoke-static {p0, v3}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 157
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020272

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->containerLL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDrawableDeauflt()V
    .locals 3

    .prologue
    const v2, 0x7f0d002b

    .line 244
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServiceDesc:Landroid/widget/TextView;

    const v1, 0x7f02025f

    invoke-static {v0, v2, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 245
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPlayerDiscuss:Landroid/widget/TextView;

    const v1, 0x7f020151

    invoke-static {v0, v2, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 246
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOtherAbility:Landroid/widget/TextView;

    const v1, 0x7f020144

    invoke-static {v0, v2, v1}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 247
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f040045

    return v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    .line 94
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07011d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemdata"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    iput-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    .line 99
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getGift_video()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wanduoduo/utils/String2ListUtlis;->string2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, videoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getGift_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wanduoduo/utils/String2ListUtlis;->string2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, giftList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->picNums:I

    .line 102
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->setDots()V

    .line 103
    new-instance v1, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;

    invoke-direct {v1, v3, v0}, Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 104
    .local v1, personAbilityAdapter:Lcom/wanduoduo/adapter/index/PersonAbilityAdapter;
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->setDrawableDeauflt()V

    .line 108
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServiceDesc:Landroid/widget/TextView;

    const v5, 0x7f0d002d

    const v6, 0x7f020260

    invoke-static {v4, v5, v6}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 109
    new-instance v4, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;

    invoke-direct {v4}, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;-><init>()V

    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 111
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->initItemData()V

    .line 112
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getPro_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->relPro:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getGift_tag_id()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->handler:Landroid/os/Handler;

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/GiftNameUtils;->getTagName(Ljava/lang/String;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, tagName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTagName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e018a,
            0x7f0e018b,
            0x7f0e018c,
            0x7f0e018f,
            0x7f0e01f6,
            0x7f0e0187
        }
    .end annotation

    .prologue
    const v4, 0x7f0d002d

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 200
    :goto_0
    :sswitch_0
    return-void

    .line 167
    :sswitch_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->setDrawableDeauflt()V

    .line 168
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServiceDesc:Landroid/widget/TextView;

    const v3, 0x7f020260

    invoke-static {v2, v4, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 169
    new-instance v2, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/personability/ServiceInstoduceFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 172
    :sswitch_2
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->setDrawableDeauflt()V

    .line 173
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPlayerDiscuss:Landroid/widget/TextView;

    const v3, 0x7f020152

    invoke-static {v2, v4, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 174
    new-instance v2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getGift_tag_id()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getComment_allnum()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    .line 175
    invoke-virtual {v6}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getComment_perfectnum()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getComment_goodnum()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getComment_badnum()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 178
    :sswitch_3
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->setDrawableDeauflt()V

    .line 179
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOtherAbility:Landroid/widget/TextView;

    const v3, 0x7f020145

    invoke-static {v2, v4, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 180
    new-instance v2, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4}, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 186
    :sswitch_4
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->selectServerTime()V

    goto :goto_0

    .line 189
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, intent1:Landroid/content/Intent;
    const-string v2, "isCanEdit"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    .end local v1           #intent1:Landroid/content/Intent;
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/index/ProPicActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pro_pic"

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->itemDatas:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getPro_pic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0181 -> :sswitch_0
        0x7f0e0187 -> :sswitch_6
        0x7f0e018a -> :sswitch_1
        0x7f0e018b -> :sswitch_2
        0x7f0e018c -> :sswitch_3
        0x7f0e018f -> :sswitch_4
        0x7f0e01f6 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 267
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->redDotView:Landroid/view/View;

    int-to-float v1, p1

    add-float/2addr v1, p2

    const/high16 v2, 0x4180

    invoke-static {p0, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 257
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 262
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->popupWindowCount:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->popupWindowCount:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->popupWindowServerTime:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->popupWindowServerTime:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 240
    :cond_1
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onPause()V

    .line 241
    return-void
.end method
