.class Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;
.super Ljava/lang/Object;
.source "PrefectionItemPlaceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

.field final synthetic val$i:I

.field final synthetic val$tv:Landroid/widget/TextView;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iget-object v1, v0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    #getter for: Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->access$000(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$i:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    #getter for: Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->access$000(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    #getter for: Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->playerPerfectionItemActivity:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->access$100(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setIsFullCheck(Z)V

    .line 86
    :goto_1
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    const v1, 0x7f020288

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iget-object v1, v0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    #getter for: Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->access$000(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->val$i:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;->this$0:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    #getter for: Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->playerPerfectionItemActivity:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
    invoke-static {v0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->access$100(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setIsFullCheck(Z)V

    goto :goto_1
.end method
