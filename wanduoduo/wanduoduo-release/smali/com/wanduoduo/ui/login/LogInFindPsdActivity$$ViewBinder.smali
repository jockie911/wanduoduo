.class public Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "LogInFindPsdActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/login/LogInFindPsdActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;,"TT;"
    const v7, 0x7f0e0132

    const v6, 0x7f0e0131

    const v5, 0x7f0e012f

    const v4, 0x7f0e012e

    const v3, 0x7f0e012d

    .line 11
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'ivIcon\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivIcon\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivIcon:Landroid/widget/ImageView;

    .line 15
    const-string v1, "field \'etPhoneNum\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etPhoneNum\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 17
    const-string v1, "field \'etGetSmsCode\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etGetSmsCode\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etGetSmsCode:Landroid/widget/EditText;

    .line 19
    const v1, 0x7f0e0135

    const-string v2, "field \'etSecurityCode\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0135

    const-string v2, "field \'etSecurityCode\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    .line 21
    const v1, 0x7f0e0138

    const-string v2, "field \'tvLogin\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0138

    const-string v2, "field \'tvLogin\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvLogin:Landroid/widget/TextView;

    .line 23
    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f0e0139

    const-string v2, "field \'tvForgetPsw\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0139

    const-string v2, "field \'tvForgetPsw\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0e013a

    const-string v2, "field \'tvUseSmsCode\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e013a

    const-string v2, "field \'tvUseSmsCode\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvUseSmsCode:Landroid/widget/TextView;

    .line 35
    const-string v1, "field \'llLogin\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'llLogin\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llLogin:Landroid/widget/LinearLayout;

    .line 37
    const-string v1, "field \'llGetSmsCode\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'llGetSmsCode\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llGetSmsCode:Landroid/widget/LinearLayout;

    .line 39
    const v1, 0x7f0e0136

    const-string v2, "field \'ivPsd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0136

    const-string v2, "field \'ivPsd\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivPsd:Landroid/widget/ImageView;

    .line 41
    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0e0133

    const-string v2, "field \'tvGetSmsCode\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0133

    const-string v2, "field \'tvGetSmsCode\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    .line 51
    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0e0130

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;,"TT;"
    const/4 v0, 0x0

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivIcon:Landroid/widget/ImageView;

    .line 73
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 74
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etGetSmsCode:Landroid/widget/EditText;

    .line 75
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->etSecurityCode:Landroid/widget/EditText;

    .line 76
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvLogin:Landroid/widget/TextView;

    .line 77
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 78
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvUseSmsCode:Landroid/widget/TextView;

    .line 79
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llLogin:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->llGetSmsCode:Landroid/widget/LinearLayout;

    .line 81
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->ivPsd:Landroid/widget/ImageView;

    .line 82
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V

    return-void
.end method
