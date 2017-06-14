.class public abstract Lcom/wanduoduo/base/BaseGridRefreshFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "BaseGridRefreshFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/base/BaseGridRefreshFragment$MyMaterialRefreshListener;
    }
.end annotation


# static fields
.field private static final LOAD_OK:I = 0xca

.field private static final ONSUCCESS:I = 0xc8

.field private static final REFFRESH_OK:I = 0xc9


# instance fields
.field protected adapter:Landroid/widget/BaseAdapter;

.field protected gridView:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0237
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field public isRefreshData:Z

.field public mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

.field public page:I

.field public resultData:Ljava/lang/String;

.field public totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->resultData:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    .line 39
    iput v1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->totalPage:I

    .line 61
    new-instance v0, Lcom/wanduoduo/base/BaseGridRefreshFragment$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment$1;-><init>(Lcom/wanduoduo/base/BaseGridRefreshFragment;)V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->handler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment$2;-><init>(Lcom/wanduoduo/base/BaseGridRefreshFragment;)V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    return-void
.end method


# virtual methods
.method protected addParams(Ljava/util/Map;)V
    .locals 0
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
    .line 124
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected abstract getAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected getMap()Ljava/util/Map;
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
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0, v0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 119
    return-object v0
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 45
    const v0, 0x7f040079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 52
    iget-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->gridView:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->gridView:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->sendDataRequest()V

    .line 59
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 89
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onLoading()V
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    iget v1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->totalPage:I

    if-ge v0, v1, :cond_0

    .line 148
    iget v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->isRefreshData:Z

    .line 150
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->sendDataRequest()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onRefreshing()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->page:I

    .line 141
    iput-boolean v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment;->isRefreshData:Z

    .line 142
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->sendDataRequest()V

    .line 144
    return-void
.end method

.method protected abstract parseData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract sendDataRequest()V
.end method

.method public abstract updateAdapter(Ljava/lang/Object;)V
.end method
