.class public Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "PerSonSkillFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private deletePostion:I

.field private gift_id:Ljava/lang/String;

.field private isALl:Z

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "user_id"
    .parameter "isAll"
    .parameter "gift_id"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->deletePostion:I

    .line 35
    iput-object p1, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->user_id:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->isALl:Z

    .line 37
    iput-object p3, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->gift_id:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected addParams(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->user_id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 82
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v2, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-direct {v2}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;-><init>()V

    .line 83
    .local v2, itemData:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
    iget-object v4, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v4, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;

    iget-object v4, v4, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    .line 85
    .local v0, dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setTitle(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setFee(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getArea_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setArea_id(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getCover_pic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setCover_pic(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_pic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setGift_pic(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getPro_pic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setPro_pic(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_video()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setGift_video(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_tag_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setGift_tag_id(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getIs_drink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setIs_drink(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getServer_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setServer_time(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getServer_time_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setServer_time_type(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getIntro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setIntro(Ljava/lang/String;)V

    .line 98
    new-instance v3, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    invoke-direct {v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;-><init>()V

    .line 99
    .local v3, organizerBean:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->setId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->setAvatar(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->setAge(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->setGender(I)V

    .line 103
    invoke-virtual {v0}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->setNickname(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v3}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->setOrganizer(Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "itemdata"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 77
    const-class v0, Lcom/wanduoduo/bean/ManageServerSkillBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "server_gift"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 44
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 56
    check-cast p1, Lcom/wanduoduo/bean/ManageServerSkillBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/ManageServerSkillBean;->getData()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;>;"
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->isALl:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->gift_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    iput v1, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->deletePostion:I

    .line 65
    .end local v1           #i:I
    :cond_0
    iget v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->deletePostion:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 66
    iget v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->deletePostion:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;

    iget-boolean v3, p0, Lcom/wanduoduo/fragment/personability/PerSonSkillFragment;->isRefreshData:Z

    invoke-virtual {v2, v0, v3}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter;->addData(Ljava/util/List;Z)V

    .line 68
    return-void

    .line 58
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
