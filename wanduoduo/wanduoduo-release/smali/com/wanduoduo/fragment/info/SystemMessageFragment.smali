.class public Lcom/wanduoduo/fragment/info/SystemMessageFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "SystemMessageFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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
    .line 37
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/wanduoduo/adapter/SystemMessageAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/SystemMessageAdapter;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 62
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v4, Lcom/wanduoduo/adapter/SystemMessageAdapter;

    iget-object v4, v4, Lcom/wanduoduo/adapter/SystemMessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;

    .line 63
    .local v0, dataListBean:Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_type()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_content()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_content()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5df2\u6210\u529f\u652f\u4ed8\u4e86\u8ba2\u5355"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_content()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5df2\u786e\u8ba4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/wanduoduo/ui/info/InfoDifferentActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "type"

    sget v5, Lcom/wanduoduo/istatic/IConsName;->INFO_ALREADY_BUY_SERVICE:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystem_content()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8d2d\u4e70"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v3, intentUser:Landroid/content/Intent;
    const-string v4, "isCanEdit"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v4, "user_id"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;->getSystemFans()Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean$SystemFans;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v3}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v3           #intentUser:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, intentSkill:Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v2}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 89
    .end local v2           #intentSkill:Landroid/content/Intent;
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mContext:Landroid/content/Context;

    const-class v6, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 52
    const-class v0, Lcom/wanduoduo/bean/SystemMessageBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "sys_message"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 33
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 45
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->baseListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/SystemMessageAdapter;

    check-cast p1, Lcom/wanduoduo/bean/SystemMessageBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/SystemMessageBean;->getData()Lcom/wanduoduo/bean/SystemMessageBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/SystemMessageFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/SystemMessageAdapter;->addData(Ljava/util/List;Z)V

    .line 48
    return-void
.end method
