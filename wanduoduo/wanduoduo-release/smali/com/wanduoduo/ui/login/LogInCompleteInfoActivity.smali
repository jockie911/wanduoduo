.class public Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "LogInCompleteInfoActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private avatar:Ljava/lang/String;

.field cbFemale:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e013d
        }
    .end annotation
.end field

.field cbMale:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e013c
        }
    .end annotation
.end field

.field civAvatar:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0122
        }
    .end annotation
.end field

.field etNickname:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e010b
        }
    .end annotation
.end field

.field etPsd:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e013b
        }
    .end annotation
.end field

.field private isHavaAvatar:Z

.field llBaseTitleBar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ec
        }
    .end annotation
.end field

.field mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->mResults:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->isHavaAvatar:Z

    return p1
.end method

.method private getMap()Ljava/util/Map;
    .locals 9
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
    .line 162
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "token"

    const-string v7, "token"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v6, "nickname"

    iget-object v7, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v6, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    const-string v6, "gender"

    const-string v7, "1"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 172
    .local v3, inPublic:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "rsa_public_key.pem"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 173
    invoke-static {v3}, Lcom/wanduoduo/utils/RSAUtils;->loadPublicKey(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v5

    .line 174
    .local v5, publicKey:Ljava/security/PublicKey;
    iget-object v6, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etPsd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/wanduoduo/utils/RSAUtils;->encryptData([BLjava/security/PublicKey;)[B

    move-result-object v2

    .line 175
    .local v2, encryptByte:[B
    invoke-static {v2}, Lcom/wanduoduo/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, afterencrypt:Ljava/lang/String;
    const-string v6, "password"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0           #afterencrypt:Ljava/lang/String;
    .end local v2           #encryptByte:[B
    .end local v5           #publicKey:Ljava/security/PublicKey;
    :goto_1
    return-object v4

    .line 167
    .end local v3           #inPublic:Ljava/io/InputStream;
    :cond_1
    iget-object v6, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    const-string v6, "gender"

    const-string v7, "2"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    .restart local v3       #inPublic:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-boolean v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->isHavaAvatar:Z

    if-nez v1, :cond_0

    .line 185
    const-string v1, "\u8bf7\u4e0a\u4f20\u5934\u50cf"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 200
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etPsd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v1, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 197
    const-string v1, "\u8bf7\u9009\u62e9\u6027\u522b"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selectPhoto()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u62cd\u7167\u4e0a\u4f20"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u672c\u5730\u4e0a\u4f20"

    aput-object v3, v1, v2

    .line 137
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 149
    return-void
.end method

.method private setCheckBox(Landroid/widget/CheckBox;)V
    .locals 3
    .parameter "cb"

    .prologue
    const v2, 0x7f020116

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f04003b

    return v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    const v6, 0x7f020117

    const/4 v5, 0x1

    .line 70
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->tvTitle:Landroid/widget/TextView;

    const-string v4, "\u5b8c\u5584\u4fe1\u606f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, nickname:Ljava/lang/String;
    const-string v3, "avatar"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->avatar:Ljava/lang/String;

    .line 76
    const-string v3, "sex"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 78
    .local v2, sex:I
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->avatar:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iput-boolean v5, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->isHavaAvatar:Z

    .line 80
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 82
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 86
    :cond_1
    if-ne v2, v5, :cond_3

    .line 87
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 220
    :cond_0
    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    if-eqz p3, :cond_1

    .line 222
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 223
    const-string v2, "user_avatar"

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$3;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$3;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-static {v2, v1, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostAvatar(Ljava/lang/String;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 235
    :cond_1
    return-void

    .line 210
    :sswitch_1
    if-eqz p3, :cond_1

    .line 213
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->mResults:Ljava/util/List;

    .line 214
    sget-boolean v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->mResults:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->mResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e013e,
            0x7f0e013c,
            0x7f0e013d,
            0x7f0e0122
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->setCheckBox(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->setCheckBox(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->selectPhoto()V

    goto :goto_0

    .line 108
    :sswitch_3
    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "user_info"

    invoke-direct {p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$1;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0122 -> :sswitch_2
        0x7f0e013c -> :sswitch_0
        0x7f0e013d -> :sswitch_1
        0x7f0e013e -> :sswitch_3
    .end sparse-switch
.end method
