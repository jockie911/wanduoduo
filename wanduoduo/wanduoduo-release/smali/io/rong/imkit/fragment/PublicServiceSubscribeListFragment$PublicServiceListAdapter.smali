.class Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "PublicServiceSubscribeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicServiceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;


# direct methods
.method public constructor <init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 138
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 139
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imlib/model/PublicServiceProfile;)V
    .locals 3
    .parameter "v"
    .parameter "position"
    .parameter "data"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;

    .line 159
    .local v0, viewHolder:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;
    if-eqz p3, :cond_0

    .line 160
    iget-object v1, v0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->portrait:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Landroid/net/Uri;)V

    .line 161
    iget-object v1, v0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->introduction:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imlib/model/PublicServiceProfile;->getIntroduction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    check-cast p3, Lio/rong/imlib/model/PublicServiceProfile;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->bindView(Landroid/view/View;ILio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lio/rong/imlib/model/PublicServiceProfile;
    .locals 1
    .parameter "position"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->getItem(I)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "position"
    .parameter "group"

    .prologue
    .line 144
    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_public_service_list:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, view:Landroid/view/View;
    new-instance v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;)V

    .line 147
    .local v1, viewHolder:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->portrait:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->portrait:Lio/rong/imkit/widget/AsyncImageView;

    .line 148
    sget v2, Lio/rong/imkit/R$id;->name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 149
    sget v2, Lio/rong/imkit/R$id;->introduction:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter$ViewHolder;->introduction:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    return-object v0
.end method
