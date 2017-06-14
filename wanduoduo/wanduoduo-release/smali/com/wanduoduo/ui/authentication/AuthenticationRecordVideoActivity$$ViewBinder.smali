.class public Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "AuthenticationRecordVideoActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;,"TT;"
    const v6, 0x7f0e00ea

    const v5, 0x7f0e00e9

    const v4, 0x7f0e00e7

    const v3, 0x7f0e00e5

    const v2, 0x7f0e00e3

    .line 11
    const-string v1, "field \'surfaceView\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'surfaceView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 13
    const-string v1, "field \'ivRecoordDelete\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRecoordDelete\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecoordDelete:Landroid/widget/ImageView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'ivRecordPlay\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRecordPlay\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecordPlay:Landroid/widget/ImageView;

    .line 25
    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const-string v1, "field \'ivRecordOk\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRecordOk\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecordOk:Landroid/widget/ImageView;

    .line 35
    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->tvTime:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0e00e1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0e00e2

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 55
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

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
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;,"TT;"
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 67
    iput-object v0, p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecoordDelete:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecordPlay:Landroid/widget/ImageView;

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->ivRecordOk:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->tvTime:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    return-void
.end method
