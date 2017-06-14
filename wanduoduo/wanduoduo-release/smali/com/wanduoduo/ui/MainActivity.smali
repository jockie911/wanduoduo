.class public Lcom/wanduoduo/ui/MainActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private infoFragment:Lcom/wanduoduo/fragment/InfoFragment;

.field normalBg:[I

.field selectedBg:[I

.field tvActivi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e014a
        }
    .end annotation
.end field

.field tvIndex:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0148
        }
    .end annotation
.end field

.field tvInfo:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e014c
        }
    .end annotation
.end field

.field tvLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field tvMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0144
        }
    .end annotation
.end field

.field tvOnline:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0146
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 68
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    .line 153
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->selectedBg:[I

    .line 155
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->normalBg:[I

    return-void

    .line 153
    :array_0
    .array-data 0x4
        0xa7t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 155
    :array_1
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/MainActivity;DD)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wanduoduo/ui/MainActivity;->getMap(DD)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getMap(DD)Ljava/util/Map;
    .locals 5
    .parameter "lat"
    .parameter "lng"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "lng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v0
.end method

.method private setImageViewBg(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d001b

    iget-object v3, p0, Lcom/wanduoduo/ui/MainActivity;->normalBg:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d002d

    iget-object v3, p0, Lcom/wanduoduo/ui/MainActivity;->selectedBg:[I

    aget v3, v3, p1

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 164
    iget v1, p0, Lcom/wanduoduo/ui/MainActivity;->currentSelectedPosition:I

    iput v1, p0, Lcom/wanduoduo/ui/MainActivity;->beforeSelectedPosition:I

    .line 165
    iput p1, p0, Lcom/wanduoduo/ui/MainActivity;->currentSelectedPosition:I

    .line 166
    invoke-virtual {p0}, Lcom/wanduoduo/ui/MainActivity;->dealWithFragment()V

    .line 167
    return-void
.end method

.method private setUserAlive()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/wanduoduo/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/MainActivity$1;-><init>(Lcom/wanduoduo/ui/MainActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentFragment;

    invoke-direct {v1}, Lcom/wanduoduo/fragment/online/AppointmentFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {v1}, Lcom/wanduoduo/fragment/OnLineFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {v1}, Lcom/wanduoduo/fragment/IndexFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    new-instance v1, Lcom/wanduoduo/fragment/ActiviFragment;

    invoke-direct {v1}, Lcom/wanduoduo/fragment/ActiviFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/InfoFragment;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->infoFragment:Lcom/wanduoduo/fragment/InfoFragment;

    .line 129
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->infoFragment:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->mFragment:Ljava/util/List;

    return-object v0
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/wanduoduo/ui/MainActivity;->isHaveTitleBar:Z

    .line 86
    iput-boolean v0, p0, Lcom/wanduoduo/ui/MainActivity;->isSwipe:Z

    .line 87
    const v0, 0x7f04003e

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "city_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "city_id"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "city_title"

    const-string v1, "\u5168\u56fd"

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/wanduoduo/ui/MainActivity;->currentSelectedPosition:I

    .line 111
    invoke-virtual {p0}, Lcom/wanduoduo/ui/MainActivity;->dealWithFragment()V

    .line 113
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvMsg:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvOnline:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvIndex:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvActivi:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/wanduoduo/ui/MainActivity;->tvLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/MainActivity;->tvInfo:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-direct {p0}, Lcom/wanduoduo/ui/MainActivity;->setUserAlive()V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0143,
            0x7f0e0147,
            0x7f0e014b,
            0x7f0e0145,
            0x7f0e0149
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/MainActivity;->setImageViewBg(I)V

    goto :goto_0

    .line 140
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/MainActivity;->setImageViewBg(I)V

    goto :goto_0

    .line 143
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/MainActivity;->setImageViewBg(I)V

    goto :goto_0

    .line 146
    :pswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/MainActivity;->setImageViewBg(I)V

    goto :goto_0

    .line 149
    :pswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/MainActivity;->setImageViewBg(I)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0143
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected setStatusBar()V
    .locals 3

    .prologue
    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/wanduoduo/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    .local v0, window:Landroid/view/Window;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 97
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 102
    .end local v0           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method
