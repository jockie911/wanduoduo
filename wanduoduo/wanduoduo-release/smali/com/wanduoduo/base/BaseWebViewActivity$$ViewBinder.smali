.class public Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "BaseWebViewActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/base/BaseWebViewActivity;",
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
    .local p0, this:Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;,"Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/base/BaseWebViewActivity;Ljava/lang/Object;)V
    .locals 3
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
    .local p0, this:Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;,"Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/base/BaseWebViewActivity;,"TT;"
    const v2, 0x7f0e00eb

    .line 11
    const-string v1, "field \'webview\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'webview\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iput-object v1, p2, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 13
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;,"Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/base/BaseWebViewActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/base/BaseWebViewActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;,"Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/base/BaseWebViewActivity;,"TT;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/wanduoduo/base/BaseWebViewActivity;->webview:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 17
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;,"Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/base/BaseWebViewActivity$$ViewBinder;->unbind(Lcom/wanduoduo/base/BaseWebViewActivity;)V

    return-void
.end method
