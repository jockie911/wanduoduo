.class public Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Ljava/lang/Object;)V
    .locals 8
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;,"TT;"
    const v7, 0x7f0e01a2

    const v6, 0x7f0e01a1

    const v5, 0x7f0e01a0

    const v4, 0x7f0e016a

    const v3, 0x7f0e00eb

    .line 11
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'rootLLTitle\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'rootLLTitle\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLTitle:Landroid/widget/LinearLayout;

    .line 23
    const-string v1, "field \'rootLLCommunicate\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'rootLLCommunicate\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLCommunicate:Landroid/widget/LinearLayout;

    .line 25
    const v1, 0x7f0e01a5

    const-string v2, "field \'rootRelDesc\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a5

    const-string v2, "field \'rootRelDesc\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelDesc:Landroid/widget/RelativeLayout;

    .line 27
    const v1, 0x7f0e01a9

    const-string v2, "field \'rootLlCert\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a9

    const-string v2, "field \'rootLlCert\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLlCert:Landroid/widget/LinearLayout;

    .line 29
    const v1, 0x7f0e01ab

    const-string v2, "field \'rootRelPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01ab

    const-string v2, "field \'rootRelPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelPlace:Landroid/widget/RelativeLayout;

    .line 31
    const v1, 0x7f0e01aa

    const-string v2, "field \'gvCert\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01aa

    const-string v2, "field \'gvCert\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvCert:Landroid/widget/GridView;

    .line 33
    const v1, 0x7f0e01a3

    const-string v2, "field \'cbFirstCommunicate\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a3

    const-string v2, "field \'cbFirstCommunicate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    .line 35
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f0e01a4

    const-string v2, "field \'cbSecondCommunicate\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a4

    const-string v2, "field \'cbSecondCommunicate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    .line 45
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-string v1, "field \'etTitle\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etTitle\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    .line 55
    const-string v1, "field \'ivTitleDelete\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivTitleDelete\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->ivTitleDelete:Landroid/widget/ImageView;

    .line 57
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f0e01a6

    const-string v2, "field \'etDesc\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a6

    const-string v2, "field \'etDesc\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    .line 67
    const v1, 0x7f0e01ae

    const-string v2, "field \'cbAllPlace\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 68
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01ae

    const-string v2, "field \'cbAllPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbAllPlace:Landroid/widget/CheckBox;

    .line 69
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0e01ac

    const-string v2, "field \'tvSelectPlace\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 78
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01ac

    const-string v2, "field \'tvSelectPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvSelectPlace:Landroid/widget/TextView;

    .line 79
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f0e01ad

    const-string v2, "field \'gvPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 88
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01ad

    const-string v2, "field \'gvPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvPlace:Lcom/wanduoduo/widget/MyGridView;

    .line 89
    const v1, 0x7f0e01af

    const-string v2, "field \'llPrice\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 90
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01af

    const-string v2, "field \'llPrice\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llPrice:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f0e01b1

    const-string v2, "field \'etPrice\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 92
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01b1

    const-string v2, "field \'etPrice\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    .line 93
    const v1, 0x7f0e01b2

    const-string v2, "field \'tvWraning\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 94
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01b2

    const-string v2, "field \'tvWraning\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    .line 95
    const-string v1, "field \'webView\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 96
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'webView\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 97
    const v1, 0x7f0e01b0

    const-string v2, "field \'llItemPrice\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 98
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01b0

    const-string v2, "field \'llItemPrice\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llItemPrice:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f0e01a8

    const-string v2, "field \'tvDescCount\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 100
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01a8

    const-string v2, "field \'tvDescCount\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvDescCount:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0e00e1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 102
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0e01a7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 111
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;,"TT;"
    const/4 v0, 0x0

    .line 122
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 123
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLTitle:Landroid/widget/LinearLayout;

    .line 124
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLCommunicate:Landroid/widget/LinearLayout;

    .line 125
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelDesc:Landroid/widget/RelativeLayout;

    .line 126
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLlCert:Landroid/widget/LinearLayout;

    .line 127
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelPlace:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvCert:Landroid/widget/GridView;

    .line 129
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    .line 130
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    .line 131
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    .line 132
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->ivTitleDelete:Landroid/widget/ImageView;

    .line 133
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    .line 134
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbAllPlace:Landroid/widget/CheckBox;

    .line 135
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvSelectPlace:Landroid/widget/TextView;

    .line 136
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvPlace:Lcom/wanduoduo/widget/MyGridView;

    .line 137
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llPrice:Landroid/widget/LinearLayout;

    .line 138
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    .line 139
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    .line 140
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 141
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llItemPrice:Landroid/widget/LinearLayout;

    .line 142
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvDescCount:Landroid/widget/TextView;

    .line 143
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    return-void
.end method
