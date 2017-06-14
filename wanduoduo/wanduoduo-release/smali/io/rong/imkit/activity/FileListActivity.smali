.class public Lio/rong/imkit/activity/FileListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FileListActivity.java"


# instance fields
.field private fragmentCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/activity/FileListActivity;->fragmentCount:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 45
    iget v3, p0, Lio/rong/imkit/activity/FileListActivity;->fragmentCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/rong/imkit/activity/FileListActivity;->fragmentCount:I

    if-nez v3, :cond_3

    .line 46
    invoke-virtual {p0}, Lio/rong/imkit/activity/FileListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, fragments:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 49
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    goto :goto_0

    .line 53
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/activity/FileListActivity;->finish()V

    .line 58
    .end local v1           #fragments:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 56
    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x800

    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lio/rong/imkit/activity/FileListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/FileListActivity;->requestWindowFeature(I)Z

    .line 27
    sget v1, Lio/rong/imkit/R$layout;->rc_ac_file_list:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/FileListActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lio/rong/imkit/activity/FileListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$id;->rc_ac_fl_storage_folder_list_fragment:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lio/rong/imkit/fragment/FileListFragment;

    invoke-direct {v0}, Lio/rong/imkit/fragment/FileListFragment;-><init>()V

    .line 30
    .local v0, fileListFragment:Lio/rong/imkit/fragment/FileListFragment;
    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FileListActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 32
    .end local v0           #fileListFragment:Lio/rong/imkit/fragment/FileListFragment;
    :cond_0
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 35
    iget v0, p0, Lio/rong/imkit/activity/FileListActivity;->fragmentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rong/imkit/activity/FileListActivity;->fragmentCount:I

    .line 36
    invoke-virtual {p0}, Lio/rong/imkit/activity/FileListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$id;->rc_ac_fl_storage_folder_list_fragment:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    return-void
.end method
