.class public Lcom/wanduoduo/ui/info/InfoChongZhiActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoChongZhiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;,
        Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;
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

.field etMoney:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0267
        }
    .end annotation
.end field

.field gvMoney:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e028c
        }
    .end annotation
.end field

.field private moneyAdapter:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private paycode:Ljava/lang/String;

.field tvMakeSureChongZhi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0118
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->getPayMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;

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
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "type"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "num"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object v0
.end method

.method private getOrder()V
    .locals 4

    .prologue
    .line 99
    const-string v0, "charge"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 100
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
    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "order_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "pay_method"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "pay_method"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 154
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 136
    return-void
.end method

.method public cbChected(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f040090

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u94b1\u5305\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->moneyAdapter:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;

    .line 68
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->gvMoney:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->moneyAdapter:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->gvMoney:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0130,
            0x7f0e0115,
            0x7f0e0117,
            0x7f0e0118
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbChected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 84
    :sswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbChected(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 87
    :sswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->getOrder()V

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x7f0e0115 -> :sswitch_1
        0x7f0e0117 -> :sswitch_2
        0x7f0e0118 -> :sswitch_3
        0x7f0e0130 -> :sswitch_0
    .end sparse-switch
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
    .line 120
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .local v0, i1:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, tv:Landroid/widget/TextView;
    if-ne v0, p3, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    const v2, 0x7f02012c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 130
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->moneyAdapter:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;

    iget-object v3, v3, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;->mData:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const-string v1, "#394471"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
