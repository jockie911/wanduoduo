.class public Lcom/wanduoduo/ui/order/SubmitOrderActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SubmitOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CONPOUS:I = 0x1

.field private static final server_hour:Ljava/lang/String; = ""


# instance fields
.field private count:Ljava/lang/String;

.field etPlace:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0170
        }
    .end annotation
.end field

.field private fee:Ljava/lang/String;

.field private gift_id:Ljava/lang/String;

.field ivPic:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e5
        }
    .end annotation
.end field

.field private pic:Ljava/lang/String;

.field private playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

.field private serverPlace:Ljava/lang/String;

.field private ticket_id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field tvCoupons:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e8
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

.field tvSubTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0168
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

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e018e
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ticket_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->serverPlace:Ljava/lang/String;

    return-object v0
.end method

.method private getMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "token"

    const-string v4, "token"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "gift_id"

    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->gift_id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "server_hour"

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "num"

    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->count:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v3, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->etPlace:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->serverPlace:Ljava/lang/String;

    .line 127
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "name"

    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->serverPlace:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v3, "server_place"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    const-string v3, "ticket_id"

    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ticket_id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "server_start_time"

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "server_start_time"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "server_end_time"

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "server_end_time"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f04005b

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playerinfobean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/PlayerInfoBean;

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/PlayerInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->gift_id:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/PlayerInfoBean;->getCover_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->pic:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/PlayerInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->title:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/PlayerInfoBean;->getFee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->fee:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->count:Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ivPic:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->fee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\u5c0f\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->type:Ljava/lang/String;

    .line 82
    const-string v0, "1"

    iget-object v1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u9009\u62e9\u7684\u6570\u91cf\u4e3a\uff1a  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->count:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5c0f\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTotalPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->fee:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->count:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void

    .line 84
    :cond_1
    const-string v0, "2"

    iget-object v1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/TimeShowUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 167
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 168
    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvCoupons:Landroid/widget/TextView;

    const-string v1, "\u6709\u4e00\u5f20\u53ef\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const-string v0, "cpcode"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ticket_id:Ljava/lang/String;

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ea,
            0x7f0e01e7,
            0x7f0e01e9
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    iget-object v2, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->etPlace:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "\u8bf7\u5148\u9009\u62e9\u670d\u52a1\u5730\u70b9"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "apply"

    invoke-direct {p0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity;Lcom/wanduoduo/ui/order/SubmitOrderActivity$1;)V

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 105
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, intentCoupons:Landroid/content/Intent;
    const-string v2, "isuserconpous"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v1, v3}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    .end local v1           #intentCoupons:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/index/DetailWebViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, intent1:Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v2, "url"

    const-string v3, "http://api.wanduoduo.cc/new/a_return.html"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01e7
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
