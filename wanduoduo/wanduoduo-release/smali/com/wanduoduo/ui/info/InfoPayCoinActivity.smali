.class public Lcom/wanduoduo/ui/info/InfoPayCoinActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoPayCoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;
    }
.end annotation


# static fields
.field private static final REQUEST_GET_ORDER:I = 0x1

.field private static final REQUEST_READY_PAY:I = 0x2


# instance fields
.field cbWeixin:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0115
        }
    .end annotation
.end field

.field cbZfb:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0117
        }
    .end annotation
.end field

.field private coin:Ljava/lang/String;

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private paycode:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field tvCoin:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0112
        }
    .end annotation
.end field

.field tvMakeSureChongZhi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0118
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->getPayMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->paycode:Ljava/lang/String;

    return-object p1
.end method

.method private getMap()Ljava/util/Map;
    .locals 4
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
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "num"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->price:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v0
.end method

.method private getOrder()V
    .locals 4

    .prologue
    .line 106
    const-string v0, "charge"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$MyOnRefresListen;-><init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 107
    return-void
.end method

.method private getPayMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "order_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "order_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "pay_method"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "pay_method"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    return-object v0
.end method

.method private setCBSelected(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->setMakeSureChongZhi()V

    .line 94
    return-void
.end method

.method private setMakeSureChongZhi()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f04002e

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 58
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, data:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "coin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->coin:Ljava/lang/String;

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "price"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->price:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvCoin:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91d1\u5e01  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->coin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvPrice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ef7\u683c  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0115,
            0x7f0e0117,
            0x7f0e0118
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->setCBSelected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->setCBSelected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->getOrder()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0e0115
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
