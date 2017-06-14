.class public abstract Lio/rong/imkit/fragment/UriFragment;
.super Lio/rong/imkit/fragment/BaseFragment;
.source "UriFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;
    }
.end annotation


# static fields
.field public static final RONG_URI:Ljava/lang/String; = "RONG_URI"

.field private static final TAG:Ljava/lang/String; = "UriFragment"


# instance fields
.field mBarHandler:Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected getActionBarHandler()Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mBarHandler:Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected abstract initFragment(Landroid/net/Uri;)V
.end method

.method protected obtainUriBundle(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .parameter "uri"

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "RONG_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 36
    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "RONG_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseFragment;->onPause()V

    .line 59
    return-void
.end method

.method public onRestoreUI()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/UriFragment;->initFragment(Landroid/net/Uri;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseFragment;->onResume()V

    .line 54
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 69
    const-string v0, "RONG_URI"

    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/UriFragment;->initFragment(Landroid/net/Uri;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const-string v0, "UriFragment"

    const-string v1, "onViewStateRestored"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public setActionBarHandler(Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;)V
    .locals 0
    .parameter "mBarHandler"

    .prologue
    .line 80
    iput-object p1, p0, Lio/rong/imkit/fragment/UriFragment;->mBarHandler:Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    .line 81
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 92
    iput-object p1, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    .line 94
    iget-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/UriFragment;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/rong/imkit/fragment/UriFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/UriFragment;->initFragment(Landroid/net/Uri;)V

    .line 96
    :cond_0
    return-void
.end method
