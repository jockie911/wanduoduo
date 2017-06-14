.class public Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "OnLineChooseAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 7
    .parameter "finder"
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;,"TT;"
    const v6, 0x7f0e0294

    const v5, 0x7f0e0161

    const v4, 0x7f0e0122

    const v3, 0x7f0e00fa

    const v2, 0x7f0e00e5

    .line 11
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 13
    const-string v1, "field \'ivIsVip\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivIsVip\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVip:Landroid/widget/ImageView;

    .line 15
    const-string v1, "field \'ivIsVideo\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivIsVideo\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVideo:Landroid/widget/ImageView;

    .line 17
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    .line 19
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 25
    iput-object v0, p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVip:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVideo:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    .line 28
    iput-object v0, p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;)V

    return-void
.end method
