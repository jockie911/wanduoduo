.class public abstract Lio/rong/imkit/fragment/DispatchResultFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "DispatchResultFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    return-void
.end method

.method private getFragmentOffset(ILandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)I
    .locals 4
    .parameter "offset"
    .parameter "targetFragment"
    .parameter "parentFragment"

    .prologue
    const/4 v2, 0x0

    .line 51
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 55
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 56
    .local v1, item:Landroid/support/v4/app/Fragment;
    add-int/lit8 p1, p1, 0x1

    .line 57
    if-ne p2, v1, :cond_2

    move v2, p1

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lio/rong/imkit/fragment/DispatchResultFragment;->getFragmentOffset(ILandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)I

    move-result v2

    goto :goto_0
.end method

.method private getOffsetFragment(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter "offset"
    .parameter "fragment"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 81
    .end local p2
    :goto_0
    return-object p2

    .line 72
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 73
    .local v1, item:Landroid/support/v4/app/Fragment;
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_2

    move-object p2, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 77
    invoke-direct {p0, p1, v1}, Lio/rong/imkit/fragment/DispatchResultFragment;->getOffsetFragment(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    goto :goto_0

    .line 81
    .end local v1           #item:Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 13
    shr-int/lit8 v1, p1, 0xc

    .line 14
    .local v1, index:I
    if-eqz v1, :cond_1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-direct {p0, v1, p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->getOffsetFragment(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 19
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 20
    and-int/lit16 v2, p1, 0xfff

    invoke-virtual {v0, v2, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 28
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/rong/imkit/fragment/UriFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 3
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v2, -0x1

    .line 31
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->getFragmentOffset(ILandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 33
    .local v0, index:I
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DispatchFragment only support 16 fragments\u3002"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    if-ne p3, v2, :cond_1

    .line 38
    invoke-virtual {p0, p2, v2}, Lio/rong/imkit/fragment/DispatchResultFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_1
    and-int/lit16 v1, p3, -0x1000

    if-eqz v1, :cond_2

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only use lower 12 bits for requestCode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0xc

    and-int/lit16 v2, p3, 0xfff

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lio/rong/imkit/fragment/DispatchResultFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
