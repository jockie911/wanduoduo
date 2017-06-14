.class Lio/rong/imkit/fragment/FileListFragment$1;
.super Landroid/os/AsyncTask;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/FileListFragment;->loadFileList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lio/rong/imkit/model/FileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/FileListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/FileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, [Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/FileListFragment$1;->doInBackground([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/util/List;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    const-string v4, ""

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->fileTraverseType:I
    invoke-static {v3}, Lio/rong/imkit/fragment/FileListFragment;->access$000(Lio/rong/imkit/fragment/FileListFragment;)I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_1

    .line 176
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lio/rong/imkit/utils/FileTypeUtils;->ALL_FOLDER_AND_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 177
    .local v2, files:[Ljava/io/File;
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/rong/imkit/utils/FileTypeUtils;->getFileInfosFromFileArray([Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 199
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :goto_1
    return-object v1

    .line 178
    .restart local v1       #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->fileTraverseType:I
    invoke-static {v3}, Lio/rong/imkit/fragment/FileListFragment;->access$000(Lio/rong/imkit/fragment/FileListFragment;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 179
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$302(Lio/rong/imkit/fragment/FileListFragment;Ljava/io/File;)Ljava/io/File;

    .line 180
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->fileFilterType:I
    invoke-static {v3}, Lio/rong/imkit/fragment/FileListFragment;->access$400(Lio/rong/imkit/fragment/FileListFragment;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;
    invoke-static {v4}, Lio/rong/imkit/fragment/FileListFragment;->access$300(Lio/rong/imkit/fragment/FileListFragment;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/utils/FileTypeUtils;->getTextFilesInfo(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 183
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    sget v5, Lio/rong/imkit/R$string;->rc_fr_file_category_title_text:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1           #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    :pswitch_1
    :try_start_1
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;
    invoke-static {v4}, Lio/rong/imkit/fragment/FileListFragment;->access$300(Lio/rong/imkit/fragment/FileListFragment;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/utils/FileTypeUtils;->getVideoFilesInfo(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 187
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    sget v5, Lio/rong/imkit/R$string;->rc_fr_file_category_title_video:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;
    invoke-static {v4}, Lio/rong/imkit/fragment/FileListFragment;->access$300(Lio/rong/imkit/fragment/FileListFragment;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/utils/FileTypeUtils;->getAudioFilesInfo(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 191
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    sget v5, Lio/rong/imkit/R$string;->rc_fr_file_category_title_audio:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :pswitch_3
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->startDir:Ljava/io/File;
    invoke-static {v4}, Lio/rong/imkit/fragment/FileListFragment;->access$300(Lio/rong/imkit/fragment/FileListFragment;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/utils/FileTypeUtils;->getOtherFilesInfo(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 195
    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    sget v5, Lio/rong/imkit/R$string;->rc_fr_file_category_title_other:I

    invoke-virtual {v4, v5}, Lio/rong/imkit/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lio/rong/imkit/fragment/FileListFragment;->access$202(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lio/rong/imkit/fragment/FileListFragment$1;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1

    .line 205
    .restart local v1       #fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    :cond_3
    new-instance v3, Lio/rong/imkit/utils/FileTypeUtils$FileNameComparator;

    invoke-direct {v3}, Lio/rong/imkit/utils/FileTypeUtils$FileNameComparator;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    const/4 v1, 0x0

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lio/rong/imkit/fragment/FileListFragment;->access$502(Lio/rong/imkit/fragment/FileListFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 215
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 216
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/FileListFragment$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, fileInfos:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFileLoadingLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lio/rong/imkit/fragment/FileListFragment;->access$600(Lio/rong/imkit/fragment/FileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFilesListView:Landroid/widget/ListView;
    invoke-static {v1}, Lio/rong/imkit/fragment/FileListFragment;->access$700(Lio/rong/imkit/fragment/FileListFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    const/4 v2, 0x0

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mLoadFilesTask:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/FileListFragment;->access$502(Lio/rong/imkit/fragment/FileListFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 224
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFilesList:Ljava/util/List;
    invoke-static {v1, p1}, Lio/rong/imkit/fragment/FileListFragment;->access$802(Lio/rong/imkit/fragment/FileListFragment;Ljava/util/List;)Ljava/util/List;

    .line 225
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFilesList:Ljava/util/List;
    invoke-static {v1}, Lio/rong/imkit/fragment/FileListFragment;->access$800(Lio/rong/imkit/fragment/FileListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFileInfoMessage:Ljava/lang/String;
    invoke-static {v2}, Lio/rong/imkit/fragment/FileListFragment;->access$200(Lio/rong/imkit/fragment/FileListFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lio/rong/imkit/fragment/FileListFragment;->showNoFileMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/FileListFragment;->access$900(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    new-instance v2, Lio/rong/imkit/widget/adapter/FileListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFilesList:Ljava/util/List;
    invoke-static {v4}, Lio/rong/imkit/fragment/FileListFragment;->access$800(Lio/rong/imkit/fragment/FileListFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mSelectedFiles:Ljava/util/HashSet;
    invoke-static {v5}, Lio/rong/imkit/fragment/FileListFragment;->access$1100(Lio/rong/imkit/fragment/FileListFragment;)Ljava/util/HashSet;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lio/rong/imkit/widget/adapter/FileListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashSet;)V

    #setter for: Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/FileListFragment;->access$1002(Lio/rong/imkit/fragment/FileListFragment;Lio/rong/imkit/widget/adapter/FileListAdapter;)Lio/rong/imkit/widget/adapter/FileListAdapter;

    .line 230
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    iget-object v2, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->mFileListAdapter:Lio/rong/imkit/widget/adapter/FileListAdapter;
    invoke-static {v2}, Lio/rong/imkit/fragment/FileListFragment;->access$1000(Lio/rong/imkit/fragment/FileListFragment;)Lio/rong/imkit/widget/adapter/FileListAdapter;

    move-result-object v2

    #calls: Lio/rong/imkit/fragment/FileListFragment;->setListViewAdapter(Lio/rong/imkit/widget/adapter/FileListAdapter;)V
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/FileListFragment;->access$1200(Lio/rong/imkit/fragment/FileListFragment;Lio/rong/imkit/widget/adapter/FileListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    #calls: Lio/rong/imkit/fragment/FileListFragment;->showNoFileMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/FileListFragment;->access$900(Lio/rong/imkit/fragment/FileListFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #getter for: Lio/rong/imkit/fragment/FileListFragment;->fileTraverseType:I
    invoke-static {v0}, Lio/rong/imkit/fragment/FileListFragment;->access$000(Lio/rong/imkit/fragment/FileListFragment;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lio/rong/imkit/fragment/FileListFragment$1;->this$0:Lio/rong/imkit/fragment/FileListFragment;

    #calls: Lio/rong/imkit/fragment/FileListFragment;->showLoadingFileView()V
    invoke-static {v0}, Lio/rong/imkit/fragment/FileListFragment;->access$100(Lio/rong/imkit/fragment/FileListFragment;)V

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 168
    return-void
.end method
