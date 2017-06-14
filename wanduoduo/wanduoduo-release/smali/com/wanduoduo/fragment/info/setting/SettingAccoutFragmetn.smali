.class public Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;
.super Lcom/wanduoduo/base/BaseFragment;
.source "SettingAccoutFragmetn.java"


# instance fields
.field private infoBean:Lcom/wanduoduo/bean/InfoBean;

.field ivAlreadyName:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e027f
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field relEditPhone:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e027b
        }
    .end annotation
.end field

.field relRealName:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e027e
        }
    .end annotation
.end field

.field tvPhoneNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e027c
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$2;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)Lcom/wanduoduo/bean/InfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Lcom/wanduoduo/bean/InfoBean;)Lcom/wanduoduo/bean/InfoBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    return-object p1
.end method

.method private alertDialog()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u60a8\u7684\u8eab\u4efd\u9a8c\u8bc1\u6b63\u5728\u7b49\u5f85\u540e\u53f0\u5ba1\u6838\uff0c\u6211\u4eec\u5c06\u5c3d\u5feb\u5b8c\u6210\u4f60\u7684\u5ba1\u6838"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$3;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 48
    const v0, 0x7f04008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 53
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

    new-instance v2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$1;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 65
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 148
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 149
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "pic"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, pic:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->setIdcard_pic(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->ivAlreadyName:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    .end local v0           #pic:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e027b,
            0x7f0e027d,
            0x7f0e027e
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v2, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "phone"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, intentPsd:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    .end local v1           #intentPsd:Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "0"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->alertDialog()V

    goto/16 :goto_0

    .line 122
    :cond_3
    const-string v2, "1"

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->infoBean:Lcom/wanduoduo/bean/InfoBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIdcard_ok()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "ishava"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0, v4}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e027b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/wanduoduo/base/BaseFragment;->onDestroyView()V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->unbind(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
