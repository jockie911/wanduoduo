.class public Lcom/wanduoduo/ui/info/SettingRealNameActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SettingRealNameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PIC_NUM_COUNT:I = 0x2


# instance fields
.field private alreadyPicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field gvIdCard:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e0
        }
    .end annotation
.end field

.field private picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)Lcom/wanduoduo/adapter/PhotoPicAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Lcom/wanduoduo/adapter/PhotoPicAdapter;)Lcom/wanduoduo/adapter/PhotoPicAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->setSuscess(Ljava/lang/String;)V

    return-void
.end method

.method private setSuscess(Ljava/lang/String;)V
    .locals 1
    .parameter "pics"

    .prologue
    .line 184
    new-instance v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$4;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f040057

    return v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u8eab\u4efd\u6821\u9a8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$1;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/UserInfoUtils;->getUserInfo(Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;)V

    .line 81
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    if-eqz p3, :cond_0

    .line 108
    sparse-switch p1, :sswitch_data_0

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    return-void

    .line 110
    :sswitch_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v2}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 113
    :sswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 114
    const-string v2, "selector_results"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, mResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, result:Ljava/lang/String;
    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v2}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    .line 85
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v2}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    .line 89
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u76f8\u673a\u62cd\u7167"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u76f8\u518c\u9009\u62e9"

    aput-object v3, v1, v2

    .line 91
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onclick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01e1
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01e1

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 131
    const-string v1, "\u8bf7\u81f3\u5c11\u4e0a\u4f20\u4e24\u5f20\u8eab\u4efd\u9a8c\u8bc1"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 134
    const-string v1, "\u5df2\u4fdd\u5b58\u4fe1\u606f"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6b63\u5728\u4e0a\u4f20\u8eab\u4efd\u8bc1\u4fe1\u606f"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, objs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity;->alreadyPicLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    const-string v1, "pic_upload"

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v3, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/wanduoduo/ui/info/SettingRealNameActivity$3;-><init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;Ljava/util/ArrayList;)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method
