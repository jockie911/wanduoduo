.class public Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "PlayerEvaluationDataFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;,
        Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;
    }
.end annotation


# instance fields
.field private gift_tag_id:Ljava/lang/String;

.field private isAllEva:Z

.field private type:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .parameter "isAllEva"
    .parameter "gift_tag_id"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->type:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->url:Ljava/lang/String;

    .line 40
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->isAllEva:Z

    .line 41
    iput-object p2, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->gift_tag_id:Ljava/lang/String;

    .line 42
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
    .line 72
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->isAllEva:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "user_id"

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    const-string v0, "page"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 80
    return-void

    .line 75
    :cond_0
    const-string v0, "gift_id"

    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->gift_tag_id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;-><init>(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$1;)V

    return-object v0
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 67
    const-class v0, Lcom/wanduoduo/bean/CommentListBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendDataRequest()V
    .locals 3

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->isAllEva:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "gcommentlist_all"

    iput-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->url:Ljava/lang/String;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 53
    return-void

    .line 50
    :cond_0
    const-string v0, "gcommentlist"

    iput-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 83
    iput p1, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->type:I

    .line 84
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;

    check-cast p1, Lcom/wanduoduo/bean/CommentListBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/CommentListBean;->getData()Lcom/wanduoduo/bean/CommentListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CommentListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$PlayerEvaluationAdapter;->addData(Ljava/util/List;Z)V

    .line 58
    return-void
.end method
