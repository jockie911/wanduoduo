.class public Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageMySkillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;I)V
    .locals 1
    .parameter "playerSkillManageItemActivity"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    .line 44
    iput p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->type:I

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->upDownSkill(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->doWithDeleteSkill(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->editSkill(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->downSkill(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->postToNetDeleteSkill(I)V

    return-void
.end method

.method private doWithDeleteSkill(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 201
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u5220\u9664\u6b64\u6280\u80fd\u540e\u5c06\u4e0d\u53ef\u6062\u590d\uff0c\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 203
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$8;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$8;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$7;

    invoke-direct {v3, p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$7;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)V

    .line 209
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 215
    return-void
.end method

.method private downAlertDialog(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 149
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u5220\u9664\u6b64\u6280\u80fd\u540e\u5c06\u4e0d\u53ef\u6062\u590d\uff0c\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$5;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$4;

    invoke-direct {v3, p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$4;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)V

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 163
    return-void
.end method

.method private downSkill(IZ)V
    .locals 4
    .parameter "position"
    .parameter "isUpGift"

    .prologue
    .line 170
    const-string v0, ""

    .line 171
    .local v0, url:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 172
    const-string v0, "gift_on"

    .line 176
    :goto_0
    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v2, "id"

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    .line 177
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;ZI)V

    .line 176
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 198
    return-void

    .line 174
    :cond_0
    const-string v0, "gift_off"

    goto :goto_0
.end method

.method private editSkill(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    const-class v2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "datalistbean"

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    const-string v2, "tag_id"

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_tag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "type"

    const/16 v2, 0x2766

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private postToNetDeleteSkill(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 223
    const-string v1, "gift_cancel"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v2, "id"

    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v0, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    invoke-static {v1, v0, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 241
    return-void
.end method

.method private upAlertDialog(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 146
    return-void
.end method

.method private upDownSkill(Ljava/lang/String;I)V
    .locals 1
    .parameter "status"
    .parameter "position"

    .prologue
    .line 133
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->downAlertDialog(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, p2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->upAlertDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isRefreshData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->notifyDataSetChanged()V

    .line 54
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/16 v5, 0x8

    .line 73
    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400b2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    .line 76
    .local v0, dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;
    #calls: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    move-result-object v1

    .line 77
    .local v1, holder:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ef7\u683c  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getCover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 80
    iget v2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 81
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u67b6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    const v3, 0x7f0d001b

    const v4, 0x7f020088

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 89
    :goto_0
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flUpDown:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$1;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :goto_1
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flDeleteSkill:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$2;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flEditSkill:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$3;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object p2

    .line 85
    :cond_1
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    const-string v3, "\u4e0a\u67b6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    const v3, 0x7f0d002d

    const v4, 0x7f02033f

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tempV:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v2, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flUpDown:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
