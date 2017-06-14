.class public Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "BuyServiceAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;,"TT;"
    const v6, 0x7f0e02bb

    const v5, 0x7f0e02ba

    const v4, 0x7f0e02b9

    const v3, 0x7f0e02b8

    const v2, 0x7f0e0292

    .line 11
    const-string v1, "field \'itemIvPhoto\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'itemIvPhoto\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 13
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'itemTvTime\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvTime\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    .line 17
    const-string v1, "field \'itemTvMoney\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvMoney\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    .line 19
    const-string v1, "field \'ivStatus\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivStatus\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    .line 21
    const v1, 0x7f0e02bd

    const-string v2, "field \'itemTvPayOrDiscuss\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02bd

    const-string v2, "field \'itemTvPayOrDiscuss\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0e02bc

    const-string v2, "field \'itemRelPayOrDiscuss\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02bc

    const-string v2, "field \'itemRelPayOrDiscuss\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemRelPayOrDiscuss:Landroid/widget/RelativeLayout;

    .line 25
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 28
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 29
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 30
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    .line 31
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    .line 32
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    .line 34
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemRelPayOrDiscuss:Landroid/widget/RelativeLayout;

    .line 35
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;)V

    return-void
.end method
