.class public Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "LogInUseSmsCodeActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;,"TT;"
    const v7, 0x7f0e0136

    const v6, 0x7f0e0135

    const v5, 0x7f0e0134

    const v4, 0x7f0e012f

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

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'llLogin\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'llLogin\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llLogin:Landroid/widget/LinearLayout;

    .line 15
    const-string v1, "field \'etPhoneNum\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etPhoneNum\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 17
    const-string v1, "field \'ivSmsCodeIcon\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivSmsCodeIcon\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivSmsCodeIcon:Landroid/widget/ImageView;

    .line 19
    const-string v1, "field \'etSmsCode\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etSmsCode\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etSmsCode:Landroid/widget/EditText;

    .line 21
    const v1, 0x7f0e0139

    const-string v2, "field \'tvForgetPsw\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0139

    const-string v2, "field \'tvForgetPsw\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0e013a

    const-string v2, "field \'tvUseSmsCode\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e013a

    const-string v2, "field \'tvUseSmsCode\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvUseSmsCode:Landroid/widget/TextView;

    .line 25
    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f0e0137

    const-string v2, "field \'tvSmsCode\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0137

    const-string v2, "field \'tvSmsCode\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvSmsCode:Landroid/widget/TextView;

    .line 35
    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v1, "field \'ivPsd\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivPsd\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivPsd:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0e0138

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0e0130

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 55
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;,"TT;"
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 67
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->llLogin:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivSmsCodeIcon:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->etSmsCode:Landroid/widget/EditText;

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvUseSmsCode:Landroid/widget/TextView;

    .line 73
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->tvSmsCode:Landroid/widget/TextView;

    .line 74
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->ivPsd:Landroid/widget/ImageView;

    .line 75
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V

    return-void
.end method
