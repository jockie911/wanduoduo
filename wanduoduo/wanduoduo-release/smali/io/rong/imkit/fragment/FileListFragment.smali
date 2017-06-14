.class public Lio/rong/imkit/fragment/FileListFragment;
.super Landroid/support/v4/app/Fragment;
.source "FileListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALL_AUDIO_FILES:I = 0x3

.field private static final ALL_FILE_FILES:I = 0x1

.field private static final ALL_RAM_FILES:I = 0x5

.field private static final ALL_SD_FILES:I = 0x6

.field private static final ALL_VIDEO_FILES:I = 0x2

.field private static final ALL_other_FILES:I = 0x4

.field private static final FILE_TRAVERSE_TYPE_ONE:I = 0xc8

.field private static final FILE_TRAVERSE_TYPE_TWO:I = 0xc9

.field private static final LOG_TAG:Ljava/lang/String; = "FileListFragment"

.field private static final MOBILE_DIR:Ljava/lang/String; = "directory"

.field private static final RESULT_SELECTED_FILES:I = 0x3e8

.field private static final ROOT_DIR:I = 0x64

.field private static final SD_CARD_ROOT_DIR:I = 0x65


# instance fields
.field private currentDir:Ljava/io/File;

.field private fileFilterType:I

.field private fileTraverseType:I

.field private mFileInfoMessage:Ljava/lang/String;

.field private mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

.field private mFileListTitleLinearLayout:Landroid/widget/LinearLayout;

.field private mFileLoadingLinearLayout:Landroid/widget/LinearLayout;

.field private mFileSelectStateTextView:Landroid/widget/TextView;

.field private mFilesCategoryTitleTextView:Landroid/widget/TextView;

.field private mFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesListView:Landroid/widget/ListView;

.field private mLoadFilesTask:Landroid/os/AsyncTask;

.field private mNoFileMessageTextView:Landroid/widget/TextView;

.field private mSelectedFiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private startDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/FileListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lio/rong/imkit/fragment/FileListFragment;->fileTraverseType:I

    return v0
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/FileListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lio/rong/imkit/fragment/FileListFragment;->showLoadingFileView()V

    return-void
.end method

.method static synthetic access$1000(Lio/rong/imkit/fragment/FileListFragment;)Lio/rong/imkit/widget/adapter/FileListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lio/rong/imkit/fragment/FileListFragment;Lio/rong/imkit/widget/adapter/FileListAdapter;)Lio/rong/imkit/widget/adapter/FileListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lio/rong/imkit/fragment/FileListFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imkit/fragment/FileListFragment;Lio/rong/imkit/widget/adapter/FileListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/FileListFragment;->setListViewAdapter(Lio/rong/imkit/widget/adapter/FileListAdapter;)V

    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/fragment/FileListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/rong/imkit/fragment/FileListFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/imkit/fragment/FileListFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$400(Lio/rong/imkit/fragment/FileListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lio/rong/imkit/fragment/FileListFragment;->fileFilterType:I

    return v0
.end method

.method static synthetic access$502(Lio/rong/imkit/fragment/FileListFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lio/rong/imkit/fragment/FileListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileLoadingLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imkit/fragment/FileListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/imkit/fragment/FileListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lio/rong/imkit/fragment/FileListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/FileListFragment;->showNoFileMessage(Ljava/lang/String;)V

    return-void
.end method

.method private loadFileList()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 160
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 161
    new-instance v0, Lio/rong/imkit/fragment/FileListFragment$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/FileListFragment$1;-><init>(Lio/rong/imkit/fragment/FileListFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/io/File;

    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment;->currentDir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/fragment/FileListFragment$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Lio/rong/imkit/fragment/FileListFragment$2;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/FileListFragment$2;-><init>(Lio/rong/imkit/fragment/FileListFragment;)V

    new-array v1, v2, [Ljava/io/File;

    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->currentDir:Ljava/io/File;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/FileListFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private navigateTo(Ljava/io/File;)V
    .locals 5
    .parameter "folder"

    .prologue
    .line 337
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/activity/FileListActivity;

    .line 338
    .local v0, activity:Lio/rong/imkit/activity/FileListActivity;
    new-instance v2, Lio/rong/imkit/fragment/FileListFragment;

    invoke-direct {v2}, Lio/rong/imkit/fragment/FileListFragment;-><init>()V

    .line 339
    .local v2, fragment:Lio/rong/imkit/fragment/FileListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v1, args:Landroid/os/Bundle;
    const-string v3, "directory"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2, v1}, Lio/rong/imkit/fragment/FileListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {v0, v2}, Lio/rong/imkit/activity/FileListActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 343
    return-void
.end method

.method private setListViewAdapter(Lio/rong/imkit/widget/adapter/FileListAdapter;)V
    .locals 1
    .parameter "fileListAdapter"

    .prologue
    .line 317
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

    .line 318
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    :cond_0
    return-void
.end method

.method private showLoadingFileView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 324
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mNoFileMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileLoadingLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    return-void
.end method

.method private showNoFileMessage(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 330
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileLoadingLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mNoFileMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mNoFileMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_fr_no_file_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 380
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedFiles"

    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 386
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListTitleLinearLayout:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 389
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "rootDirType"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .local v3, rootDirType:I
    const-string v4, "fileFilterType"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lio/rong/imkit/fragment/FileListFragment;->fileFilterType:I

    .line 78
    const-string v4, "fileTraverseType"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lio/rong/imkit/fragment/FileListFragment;->fileTraverseType:I

    .line 80
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "directory"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v4, Ljava/io/File;

    const-string v5, "directory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lio/rong/imkit/fragment/FileListFragment;->currentDir:Ljava/io/File;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 85
    new-instance v4, Ljava/io/File;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lio/rong/imkit/fragment/FileListFragment;->currentDir:Ljava/io/File;

    goto :goto_0

    .line 86
    :cond_2
    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 87
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lio/rong/imkit/fragment/FileListFragment;->currentDir:Ljava/io/File;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_file_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_ad_ll_file_list_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListTitleLinearLayout:Landroid/widget/LinearLayout;

    .line 98
    sget v1, Lio/rong/imkit/R$id;->rc_ad_tv_file_list_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesCategoryTitleTextView:Landroid/widget/TextView;

    .line 99
    sget v1, Lio/rong/imkit/R$id;->rc_ad_tv_file_list_select_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    .line 101
    sget v1, Lio/rong/imkit/R$id;->rc_fm_lv_storage_folder_list_files:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    .line 102
    sget v1, Lio/rong/imkit/R$id;->rc_fm_ll_storage_folder_list_load:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileLoadingLinearLayout:Landroid/widget/LinearLayout;

    .line 103
    sget v1, Lio/rong/imkit/R$id;->rc_fm_tv_no_file_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mNoFileMessageTextView:Landroid/widget/TextView;

    .line 104
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 145
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 348
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, selectedObject:Ljava/lang/Object;
    instance-of v2, v1, Lio/rong/imkit/model/FileInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 350
    check-cast v0, Lio/rong/imkit/model/FileInfo;

    .line 352
    .local v0, selectedFile:Lio/rong/imkit/model/FileInfo;
    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lio/rong/imkit/fragment/FileListFragment;->navigateTo(Ljava/io/File;)V

    .line 376
    .end local v0           #selectedFile:Lio/rong/imkit/model/FileInfo;
    :cond_0
    :goto_0
    return-void

    .line 355
    .restart local v0       #selectedFile:Lio/rong/imkit/model/FileInfo;
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 365
    :goto_1
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 366
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 367
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$color;->rc_ad_file_list_select_file_text_state:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_ad_send_file_select_file:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_3

    .line 359
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/FileListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_fr_file_list_most_selected_files:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 370
    :cond_4
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 371
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_ad_send_file_no_select_file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$color;->rc_ad_file_list_no_select_file_text_state:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lio/rong/imkit/fragment/FileListFragment;->loadFileList()V

    .line 112
    const-string v0, ""

    .line 113
    .local v0, text:Ljava/lang/String;
    iget v1, p0, Lio/rong/imkit/fragment/FileListFragment;->fileFilterType:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesCategoryTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileListTitleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 138
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment;->mFileSelectStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$color;->rc_ad_file_list_no_select_file_text_state:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    return-void

    .line 115
    :pswitch_0
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_text:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_video:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_audio:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_other:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_ram:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_5
    sget v1, Lio/rong/imkit/R$string;->rc_fr_file_category_title_sd:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
