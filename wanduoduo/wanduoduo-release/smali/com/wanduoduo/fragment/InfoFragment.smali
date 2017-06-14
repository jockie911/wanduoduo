.class public Lcom/wanduoduo/fragment/InfoFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "InfoFragment.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACCOUNT_MONEY:I = 0x8

.field private static final REL_VIP:I = 0xa

.field private static final SKILL_AUTHENTICATION:I = 0x9


# instance fields
.field civAvatar:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0122
        }
    .end annotation
.end field

.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

.field private isVideoExist:Z

.field ivSkillOrCat:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0286
        }
    .end annotation
.end field

.field ivVipLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fb
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

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field relAuthentticationSkill:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0285
        }
    .end annotation
.end field

.field relAuthentticationVideo:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0283
        }
    .end annotation
.end field

.field tvConpous:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e023c
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

.field tvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fa
        }
    .end annotation
.end field

.field tvSkillOrCar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0288
        }
    .end annotation
.end field

.field tvVip:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0240
        }
    .end annotation
.end field

.field tv_coin:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0112
        }
    .end annotation
.end field

.field private vipNames:[Ljava/lang/String;

.field private vipRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/fragment/InfoFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 57
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 86
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u767d\u94f6\u4f1a\u5458"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u9ec4\u91d1\u4f1a\u5458"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u94c2\u91d1\u4f1a\u5458"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u94bb\u77f3\u4f1a\u5458"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->vipNames:[Ljava/lang/String;

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->vipRes:[I

    .line 144
    new-instance v0, Lcom/wanduoduo/fragment/InfoFragment$2;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/InfoFragment$2;-><init>(Lcom/wanduoduo/fragment/InfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->mResults:Ljava/util/List;

    return-void

    .line 87
    :array_0
    .array-data 0x4
        0x44t 0x3t 0x2t 0x7ft
        0x45t 0x3t 0x2t 0x7ft
        0x46t 0x3t 0x2t 0x7ft
        0x47t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/InfoFragment;)Lcom/wanduoduo/bean/InfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/InfoFragment;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/InfoFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->vipNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/InfoFragment;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->vipRes:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/wanduoduo/fragment/InfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/InfoFragment;->isVideoExist:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wanduoduo/fragment/InfoFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wanduoduo/fragment/InfoFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/wanduoduo/fragment/InfoFragment;->skillAuthentication()V

    return-void
.end method

.method private civAvatarClick()V
    .locals 4

    .prologue
    .line 275
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u4e0a\u4f20\u5934\u50cf"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u67e5\u770b\u4e2a\u4eba\u8d44\u6599"

    aput-object v3, v1, v2

    .line 277
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$3;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 305
    return-void
.end method

.method private clickToAuthVideoDialog()V
    .locals 4

    .prologue
    .line 311
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u6280\u80fd\u8ba4\u8bc1\u5b8c\u6210\u524d\u8bf7\u5148\u8ba4\u8bc1\u89c6\u9891,\u5426\u5219\u6211\u4eec\u5c06\u65e0\u6cd5\u8ba4\u5b9a\u662f\u60a8\u672c\u4eba"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 313
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$5;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$5;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/fragment/InfoFragment$4;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/InfoFragment$4;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 325
    return-void
.end method

.method private infoJumpActivity(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/info/InfoDifferentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "money"

    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method private skillAuthentication()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private skillAuthenticationAlertDialog()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getGender()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 333
    const-string v1, "\u662f\u5426\u4fee\u6539\u5df2\u8ba4\u8bc1\u8f66\u8f86"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 337
    :goto_0
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$6;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$6;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 344
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$7;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$7;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 350
    return-void

    .line 335
    :cond_0
    const-string v1, "\u662f\u5426\u4fee\u6539\u5df2\u8ba4\u8bc1\u6280\u80fd"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private userAvatartUpLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 400
    const-string v1, "user_avatar"

    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$8;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$8;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-static {v1, v0, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostAvatar(Ljava/lang/String;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 411
    return-void
.end method


# virtual methods
.method public getInfoData()V
    .locals 4

    .prologue
    .line 129
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

    new-instance v2, Lcom/wanduoduo/fragment/InfoFragment$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/InfoFragment$1;-><init>(Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 142
    return-void
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 91
    const v0, 0x7f04007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    const-string v0, "login_info"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "login_info"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getInfoData()V

    .line 126
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "login_info"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wanduoduo/bean/InfoBean;

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBean;

    iput-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    .line 104
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 395
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    :cond_0
    return-void

    .line 372
    :sswitch_0
    invoke-direct {p0}, Lcom/wanduoduo/fragment/InfoFragment;->userAvatartUpLoad()V

    goto :goto_0

    .line 375
    :sswitch_1
    if-eqz p3, :cond_0

    .line 378
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->mResults:Ljava/util/List;

    .line 379
    sget-boolean v1, Lcom/wanduoduo/fragment/InfoFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->mResults:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/fragment/InfoFragment;->mResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/wanduoduo/fragment/InfoFragment;->userAvatartUpLoad()V

    goto :goto_0

    .line 386
    :sswitch_2
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getInfoData()V

    goto :goto_0

    .line 389
    :sswitch_3
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getInfoData()V

    goto :goto_0

    .line 392
    :sswitch_4
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/InfoFragment;->getInfoData()V

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0243,
            0x7f0e0283,
            0x7f0e0285,
            0x7f0e0238,
            0x7f0e0239,
            0x7f0e01e7,
            0x7f0e0282,
            0x7f0e023e,
            0x7f0e0241,
            0x7f0e0242,
            0x7f0e0122,
            0x7f0e023f,
            0x7f0e023d
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v8, 0x8

    const/16 v9, 0xa

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 186
    :sswitch_0
    iget-boolean v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->isVideoExist:Z

    if-eqz v6, :cond_1

    .line 187
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "isCanEdit"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "video_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, video_url:Ljava/lang/String;
    const-string v6, "path"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v5           #video_url:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1, v9}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6, v9}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 210
    :sswitch_1
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getVideo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "1"

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_2
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/authentication/AuthenticationPersonInfoActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 218
    :sswitch_2
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :sswitch_3
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/info/InfoDifferentActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v4, intentMoney:Landroid/content/Intent;
    const-string v6, "type"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v6, :cond_3

    .line 224
    const-string v6, "money"

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMoney()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :cond_3
    invoke-virtual {p0, v4, v8}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 229
    .end local v4           #intentMoney:Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/info/PlayCoinActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v2, intent1:Landroid/content/Intent;
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v6, :cond_4

    .line 231
    const-string v6, "coin"

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCoin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_4
    invoke-virtual {p0, v2, v8}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 235
    .end local v2           #intent1:Landroid/content/Intent;
    :sswitch_5
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 238
    :sswitch_6
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v3, intentEditPerson:Landroid/content/Intent;
    const-string v6, "isCanEdit"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v3, v9}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 243
    .end local v3           #intentEditPerson:Landroid/content/Intent;
    :sswitch_7
    sget v6, Lcom/wanduoduo/istatic/IConsName;->INFO_ALREADY_BUY_SERVICE:I

    invoke-direct {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->infoJumpActivity(I)V

    goto/16 :goto_0

    .line 246
    :sswitch_8
    sget v6, Lcom/wanduoduo/istatic/IConsName;->INFO_MY_LIKE:I

    invoke-direct {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->infoJumpActivity(I)V

    goto/16 :goto_0

    .line 249
    :sswitch_9
    sget v6, Lcom/wanduoduo/istatic/IConsName;->INFO_WATCH:I

    invoke-direct {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->infoJumpActivity(I)V

    goto/16 :goto_0

    .line 252
    :sswitch_a
    invoke-direct {p0}, Lcom/wanduoduo/fragment/InfoFragment;->civAvatarClick()V

    goto/16 :goto_0

    .line 255
    :sswitch_b
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v6, :cond_0

    .line 256
    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_vip()I

    move-result v6

    if-nez v6, :cond_5

    .line 257
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "coin"

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCoin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v1, v9}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 261
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "coin"

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getCoin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1, v9}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 269
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/wanduoduo/ui/info/MsgActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/wanduoduo/fragment/InfoFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x7f0e0122 -> :sswitch_a
        0x7f0e01e7 -> :sswitch_5
        0x7f0e0238 -> :sswitch_3
        0x7f0e0239 -> :sswitch_4
        0x7f0e023d -> :sswitch_c
        0x7f0e023e -> :sswitch_7
        0x7f0e023f -> :sswitch_b
        0x7f0e0241 -> :sswitch_8
        0x7f0e0242 -> :sswitch_9
        0x7f0e0243 -> :sswitch_2
        0x7f0e0282 -> :sswitch_6
        0x7f0e0283 -> :sswitch_0
        0x7f0e0285 -> :sswitch_1
    .end sparse-switch
.end method
