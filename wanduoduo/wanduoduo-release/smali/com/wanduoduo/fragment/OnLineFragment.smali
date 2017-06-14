.class public Lcom/wanduoduo/fragment/OnLineFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "OnLineFragment.java"


# static fields
.field private static final HIDE:I = 0x4

.field private static final ON_LINE_CHOOSE:I = 0x1

.field private static final ROCKET_ERR:I = 0x3

.field private static final ROCKET_SUCCESS:I = 0x2


# instance fields
.field private appointmentFragment:Lcom/wanduoduo/fragment/online/AppointmentFragment;

.field private isHide:Z

.field ivInvisable:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0271
        }
    .end annotation
.end field

.field ivLeftTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e1
        }
    .end annotation
.end field

.field llIvs:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e026e
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private onAppointmentSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

.field private onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

.field private onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

.field refreshLayout:Lcom/cjj/MaterialRefreshLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ba
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ee
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 230
    new-instance v0, Lcom/wanduoduo/fragment/OnLineFragment$5;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/OnLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/OnLineFragment$5;-><init>(Lcom/wanduoduo/fragment/OnLineFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/OnLineFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z

    return v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/OnLineFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z

    return p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    return-object v0
.end method

.method private getHideMap()Ljava/util/Map;
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
    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "is_hide"

    iget-boolean v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->isHide:Z

    if-eqz v1, :cond_0

    const-string v1, "0"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-object v0

    .line 205
    :cond_0
    const-string v1, "1"

    goto :goto_0
.end method

.method private initRefreshListener()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 109
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V

    .line 110
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment$2;

    invoke-direct {v1, p0}, Lcom/wanduoduo/fragment/OnLineFragment$2;-><init>(Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/cjj/MaterialRefreshListener;)V

    .line 132
    return-void
.end method

.method private sendRocket()V
    .locals 4

    .prologue
    .line 213
    const-string v0, "user_rocket"

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

    new-instance v2, Lcom/wanduoduo/fragment/OnLineFragment$4;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/OnLineFragment$4;-><init>(Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 228
    return-void
.end method

.method private setSelfHide()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "user_info"

    invoke-direct {p0}, Lcom/wanduoduo/fragment/OnLineFragment;->getHideMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/OnLineFragment$3;

    invoke-direct {v2, p0}, Lcom/wanduoduo/fragment/OnLineFragment$3;-><init>(Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 75
    const v0, 0x7f040085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5728\u7ebf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    .line 87
    new-instance v0, Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    .line 88
    new-instance v0, Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onAppointmentSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    .line 90
    invoke-direct {p0}, Lcom/wanduoduo/fragment/OnLineFragment;->initRefreshListener()V

    .line 92
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/OnLineFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 94
    new-instance v0, Lcom/wanduoduo/fragment/OnLineFragment$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/OnLineFragment$1;-><init>(Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 105
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 259
    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 260
    iget v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->currentSelectedPosition:I

    if-nez v0, :cond_1

    .line 261
    const-string v0, "onLineSelectBean"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/OnLineSelectBean;

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    .line 262
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->setSort(Lcom/wanduoduo/bean/OnLineSelectBean;)V

    .line 267
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    return-void

    .line 263
    :cond_1
    iget v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->currentSelectedPosition:I

    if-ne v0, v1, :cond_0

    .line 264
    const-string v0, "onLineSelectBean"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/OnLineSelectBean;

    iput-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onAppointmentSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e026f,
            0x7f0e0270,
            0x7f0e0271
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 138
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "onLineSelectBean"

    iget v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->currentSelectedPosition:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v1, "type"

    iget v2, p0, Lcom/wanduoduo/fragment/OnLineFragment;->currentSelectedPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/fragment/OnLineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->onAppointmentSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    goto :goto_1

    .line 144
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 151
    :sswitch_2
    invoke-direct {p0}, Lcom/wanduoduo/fragment/OnLineFragment;->sendRocket()V

    goto :goto_0

    .line 154
    :sswitch_3
    invoke-direct {p0}, Lcom/wanduoduo/fragment/OnLineFragment;->setSelfHide()V

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e01ef -> :sswitch_0
        0x7f0e026f -> :sswitch_1
        0x7f0e0270 -> :sswitch_2
        0x7f0e0271 -> :sswitch_3
    .end sparse-switch
.end method
