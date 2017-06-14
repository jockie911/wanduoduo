.class public Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;
.super Ljava/lang/Object;
.source "SettingAccoutFragmetn$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;",
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
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Ljava/lang/Object;)V
    .locals 6
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
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;,"TT;"
    const v5, 0x7f0e027f

    const v4, 0x7f0e027e

    const v3, 0x7f0e027c

    const v2, 0x7f0e027b

    .line 11
    const-string v1, "field \'tvPhoneNum\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvPhoneNum\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->tvPhoneNum:Landroid/widget/TextView;

    .line 13
    const-string v1, "field \'ivAlreadyName\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivAlreadyName\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->ivAlreadyName:Landroid/widget/ImageView;

    .line 15
    const-string v1, "field \'relRealName\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relRealName\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relRealName:Landroid/widget/RelativeLayout;

    .line 17
    new-instance v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-string v1, "field \'relEditPhone\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relEditPhone\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relEditPhone:Landroid/widget/RelativeLayout;

    .line 27
    new-instance v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f0e027d

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;,"TT;"
    const/4 v0, 0x0

    .line 47
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->tvPhoneNum:Landroid/widget/TextView;

    .line 48
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->ivAlreadyName:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relRealName:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->relEditPhone:Landroid/widget/RelativeLayout;

    .line 51
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V

    return-void
.end method
