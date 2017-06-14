.class public Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "SelectDataPlaceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/wanduoduo/adapter/SelectPalceAllAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/SelectPalceAllAdapter;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 41
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/order/SelectDatePlaceDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/order/SelectDataPlaceFragment;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 31
    return-void
.end method
