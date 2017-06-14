.class public Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SettingMobileNumFirstActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_BIND:I = 0x3

.field private static final REQUEST_CODE_JIE_BAND:I = 0x2

.field private static final SMS_REQUEST_CODE:I = 0x1


# instance fields
.field edTvPsd:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01dd
        }
    .end annotation
.end field

.field etSmsCode:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0142
        }
    .end annotation
.end field

.field sHandler:Lcom/wanduoduo/widget/MyHandler;

.field tvForgetPsw:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0139
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

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 184
    new-instance v0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$1;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->sHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 5
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
    const-string v2, "token"

    const-string v3, "token"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget v2, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 116
    const-string v2, "sms_code_old"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "oldsmscode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, oldsmscode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    const-string v2, "sms_code_old"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    const-string v2, "mobile_new"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "sms_code_new"

    iget-object v3, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getPhoneNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    const-string v0, ""

    .line 104
    .local v0, phoneNum:Ljava/lang/String;
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 149
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 131
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f040056

    return v0
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->type:I

    .line 61
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 62
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u9a8c\u8bc1\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, phone:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 73
    .end local v0           #phone:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u7ed1\u5b9a\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvForgetPsw:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01df,
            0x7f0e0139,
            0x7f0e01de
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 81
    :sswitch_0
    iget v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->type:I

    if-ne v1, v4, :cond_0

    .line 82
    const-string v1, "bind_tel"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getMap()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 84
    :cond_0
    const-string v1, "bind_tel"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getMap()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 88
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "sms_code"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v2, "mobile"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0139 -> :sswitch_1
        0x7f0e01de -> :sswitch_2
        0x7f0e01df -> :sswitch_0
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 141
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const-string v1, "#394471"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
