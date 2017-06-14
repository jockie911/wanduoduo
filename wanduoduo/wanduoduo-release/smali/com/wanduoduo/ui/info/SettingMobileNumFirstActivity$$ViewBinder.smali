.class public Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "SettingMobileNumFirstActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;,"TT;"
    const v5, 0x7f0e01df

    const v4, 0x7f0e01dd

    const v3, 0x7f0e0142

    const v2, 0x7f0e0139

    .line 11
    const-string v1, "field \'edTvPsd\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'edTvPsd\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    .line 13
    const-string v1, "field \'tvMakeSureTixian\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvMakeSureTixian\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'etSmsCode\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etSmsCode\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    .line 25
    const-string v1, "field \'tvForgetPsw\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvForgetPsw\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 27
    new-instance v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f0e01de

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;)V

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
    .local p0, this:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;,"TT;"
    const/4 v0, 0x0

    .line 47
    iput-object v0, p1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->edTvPsd:Landroid/widget/EditText;

    .line 48
    iput-object v0, p1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvMakeSureTixian:Landroid/widget/TextView;

    .line 49
    iput-object v0, p1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->etSmsCode:Landroid/widget/EditText;

    .line 50
    iput-object v0, p1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/SettingMobileNumFirstActivity;)V

    return-void
.end method
