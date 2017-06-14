.class public Lio/rong/imkit/widget/adapter/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/FileListAdapter$1;,
        Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lio/rong/imkit/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, mFileList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/FileInfo;>;"
    .local p3, mSelectedFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Lio/rong/imkit/model/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p2, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mSelectedFiles:Ljava/util/HashSet;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 47
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 58
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$layout;->rc_wi_file_list_adapter:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, view:Landroid/view/View;
    new-instance v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;

    invoke-direct {v3, p0, v6}, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/FileListAdapter;Lio/rong/imkit/widget/adapter/FileListAdapter$1;)V

    .line 60
    .local v3, viewHolder:Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;
    sget v4, Lio/rong/imkit/R$id;->rc_wi_ad_iv_file_check_state:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileCheckStateImageView:Landroid/widget/ImageView;

    .line 61
    sget v4, Lio/rong/imkit/R$id;->rc_wi_ad_iv_file_icon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileIconImageView:Landroid/widget/ImageView;

    .line 62
    sget v4, Lio/rong/imkit/R$id;->rc_wi_ad_tv_file_name:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileNameTextView:Landroid/widget/TextView;

    .line 63
    sget v4, Lio/rong/imkit/R$id;->rc_wi_ad_tv_file_details:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileDetailsTextView:Landroid/widget/TextView;

    .line 65
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/FileInfo;

    .line 66
    .local v0, file:Lio/rong/imkit/model/FileInfo;
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-static {v0}, Lio/rong/imkit/utils/FileTypeUtils;->getNumFilesInFolder(Lio/rong/imkit/model/FileInfo;)I

    move-result v1

    .line 69
    .local v1, filesNumber:I
    if-nez v1, :cond_0

    .line 70
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileDetailsTextView:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_ad_folder_no_files:I

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileIconImageView:Landroid/widget/ImageView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/rong/imkit/utils/FileTypeUtils;->getFileIconResource(Lio/rong/imkit/model/FileInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .end local v1           #filesNumber:I
    :goto_1
    return-object v2

    .line 72
    .restart local v1       #filesNumber:I
    :cond_0
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileDetailsTextView:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_ad_folder_files_number:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    .end local v1           #filesNumber:I
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/FileListAdapter;->mSelectedFiles:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileCheckStateImageView:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ad_list_file_checked:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :goto_2
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileDetailsTextView:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_ad_file_size:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v8

    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->getFileSize()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileIconImageView:Landroid/widget/ImageView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/rong/imkit/utils/FileTypeUtils;->getFileIconResource(Lio/rong/imkit/model/FileInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v4, v3, Lio/rong/imkit/widget/adapter/FileListAdapter$ViewHolder;->fileCheckStateImageView:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ad_list_file_unchecked:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
