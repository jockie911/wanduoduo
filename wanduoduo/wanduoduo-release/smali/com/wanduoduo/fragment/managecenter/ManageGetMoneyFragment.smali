.class public Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "ManageGetMoneyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;
    }
.end annotation


# instance fields
.field private ali_info:Ljava/lang/String;

.field etAccount:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0266
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

.field etName:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0264
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

.field private isSuccess:Z

.field ivClear:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0268
        }
    .end annotation
.end field

.field tvMakeSureTixian:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01df
        }
    .end annotation
.end field

.field tvUserableMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0269
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 145
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$3;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)Lcom/wanduoduo/bean/InfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->withDrawTheMoney()V

    return-void
.end method

.method static synthetic access$202(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->isSuccess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->alertDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->isClickableGetMoney()Z

    move-result v0

    return v0
.end method

.method private alertDialog()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u4eb2\u7231\u7684\uff0c\u60a8\u7684\u63d0\u73b0\u7533\u8bf7\u5df2\u6536\u5230\uff0c\u4e00\u7b14\u5de8\u6b3e\u5c06\u57281-7\u4e2a\u5de5\u4f5c\u65e5\u5185\u5230\u8fbe\u60a8\u7684\u8d26\u6237\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$4;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void
.end method

.method private getMap(I)Ljava/util/Map;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 213
    const-string v1, "ali_info"

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ali_info:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const-string v1, "num"

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isClickableGetMoney()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    .line 236
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestInfo()V
    .locals 4

    .prologue
    .line 76
    const-string v0, "user_info"

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

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$1;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 88
    return-void
.end method

.method private setSoftKey(Landroid/widget/EditText;)V
    .locals 3
    .parameter "et"

    .prologue
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 228
    return-void
.end method

.method private withDrawTheMoney()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "withdraw"

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getMap(I)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 60
    const v0, 0x7f040080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$MyTextWatcher;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "money_bal"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, money_bal:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    invoke-direct {p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->requestInfo()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0263,
            0x7f0e0265,
            0x7f0e0268,
            0x7f0e026a,
            0x7f0e01df
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 94
    :sswitch_0
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 95
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->setSoftKey(Landroid/widget/EditText;)V

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 99
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->setSoftKey(Landroid/widget/EditText;)V

    goto :goto_0

    .line 102
    :sswitch_2
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :sswitch_3
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :sswitch_4
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 109
    const-string v2, "\u8d85\u8fc7\u63d0\u73b0\u91d1\u989d"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 113
    const-string v2, "\u6bcf\u6b21\u63d0\u73b0\u4e0d\u4f4e\u4e8e50\u5143"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getAli_info()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "account"

    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "realname"

    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ali_info:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    const-string v2, "user_info"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->getMap(I)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$2;

    invoke-direct {v4, p0}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$2;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x7f0e01df -> :sswitch_4
        0x7f0e0263 -> :sswitch_0
        0x7f0e0265 -> :sswitch_1
        0x7f0e0268 -> :sswitch_2
        0x7f0e026a -> :sswitch_3
    .end sparse-switch
.end method
