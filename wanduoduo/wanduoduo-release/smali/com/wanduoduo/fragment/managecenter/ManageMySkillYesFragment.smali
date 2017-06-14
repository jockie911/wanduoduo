.class public Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "ManageMySkillYesFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

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
    .line 35
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_id"

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 56
    new-instance v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;I)V

    return-object v1
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "1"

    return-object v0
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 46
    const-class v0, Lcom/wanduoduo/bean/ManageServerSkillBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 28
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 29
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->baseListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 30
    const-string v0, "gift_center"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 31
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    check-cast p1, Lcom/wanduoduo/bean/ManageServerSkillBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/ManageServerSkillBean;->getData()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->addData(Ljava/util/List;Z)V

    .line 52
    return-void
.end method
