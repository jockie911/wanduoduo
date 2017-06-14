.class public Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PayOrderCompleteActivity.java"


# static fields
.field private static final ORDER_FROM_HISTOEY:I = 0x2

.field private static final ORDER_JUST_NOW:I = 0x1


# instance fields
.field flYuYueOk:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0177
        }
    .end annotation
.end field

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

.field ivVip:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f8
        }
    .end annotation
.end field

.field private playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f4
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

.field tvOrderId:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f5
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

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->dialogMakeSureDelete()V

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->deleteOrder(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private deleteOrder(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialogInterface"

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    return-void
.end method

.method private dialogDeleteOrder()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u53d6\u6d88\u9884\u7ea6"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u53d6\u6d88"

    aput-object v3, v1, v2

    .line 122
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$1;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 134
    return-void
.end method

.method private dialogMakeSureDelete()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u53d6\u6d88\u8ba2\u5355\u540e\u4e0d\u53ef\u6062\u590d,\u662f\u5426\u53d6\u6d88\u9884\u7ea6"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 142
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$3;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$2;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$2;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 153
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f040043

    return v0
.end method

.method protected initData()V
    .locals 9

    .prologue
    const v8, 0x7f0d00a3

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 65
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvTitle:Landroid/widget/TextView;

    const-string v4, "\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020297

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playerInfoBean"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/PlayerInfoBean;

    iput-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 69
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, type:I
    if-ne v2, v6, :cond_1

    .line 71
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->flYuYueOk:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, ispay:I
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getOrder_status()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, status:I
    if-eqz v1, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_1

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .end local v0           #ispay:I
    .end local v1           #status:I
    :cond_1
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wanduoduo/utils/TimeShowUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvPlace:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getPlace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvOrderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getOrder_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvMoney:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getTotalFee()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 86
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getGender()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 87
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    const v4, 0x7f0200ab

    invoke-static {v3, v8, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 88
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    const v4, 0x7f020269

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 93
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->getAge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getUser_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->user_id:Ljava/lang/String;

    .line 95
    return-void

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getGender()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 90
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    const v4, 0x7f0200aa

    invoke-static {v3, v8, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 91
    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    const v4, 0x7f020268

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2,
            0x7f0e01f6,
            0x7f0e0178
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->dialogDeleteOrder()V

    goto :goto_0

    .line 104
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->user_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lio/rong/imkit/RongIM;->startPrivateChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x7f0e00e2 -> :sswitch_0
        0x7f0e0178 -> :sswitch_2
        0x7f0e01f6 -> :sswitch_1
    .end sparse-switch
.end method
