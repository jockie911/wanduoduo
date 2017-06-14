.class public Lio/rong/imkit/activity/FilePreviewActivity;
.super Landroid/app/Activity;
.source "FilePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;
    }
.end annotation


# static fields
.field private static final DELETED:I = 0x3

.field private static final DOWNLOADED:I = 0x1

.field private static final DOWNLOADING:I = 0x2

.field private static final DOWNLOAD_CANCEL:I = 0x5

.field private static final DOWNLOAD_ERROR:I = 0x4

.field private static final DOWNLOAD_SUCCESS:I = 0x6

.field private static final NOT_DOWNLOAD:I = 0x0

.field private static final ON_CANCEL_CALLBACK:I = 0x66

.field private static final ON_ERROR_CALLBACK:I = 0x67

.field private static final ON_PROGRESS_CALLBACK:I = 0x65

.field private static final ON_SUCCESS_CALLBACK:I = 0x64


# instance fields
.field private mCancel:Landroid/widget/ImageView;

.field private mDownloadProgressTextView:Landroid/widget/TextView;

.field private mDownloadProgressView:Landroid/widget/LinearLayout;

.field private mFileButton:Landroid/widget/Button;

.field private mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

.field private mFileDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mFileMessage:Lio/rong/message/FileMessage;

.field private mFileName:Ljava/lang/String;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileSize:J

.field private mFileSizeView:Landroid/widget/TextView;

.field private mFileTypeImage:Landroid/widget/ImageView;

.field private mMessage:Lio/rong/imlib/model/Message;

.field private mPreviewDownloadFileLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 242
    return-void
.end method

.method private downloadFile()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mMessage:Lio/rong/imlib/model/Message;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIM;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V

    .line 143
    return-void
.end method

.method private getFileDownloadInfo()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v1}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v1}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x1

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    .line 155
    .end local v0           #file:Ljava/io/File;
    :goto_0
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->refreshDownloadState()V

    .line 156
    return-void

    .line 150
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x3

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    goto :goto_0

    .line 153
    .end local v0           #file:Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x0

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileName:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileTypeImage:Landroid/widget/ImageView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/rong/imkit/utils/FileTypeUtils;->fileTypeImageId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSize:J

    .line 81
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSizeView:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v1

    iget-wide v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSize:J

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    invoke-direct {v0, p0}, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;-><init>(Lio/rong/imkit/activity/FilePreviewActivity;)V

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    .line 85
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mPreviewDownloadFileLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 93
    sget v0, Lio/rong/imkit/R$id;->rc_ac_ll_file_download:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mPreviewDownloadFileLinearLayout:Landroid/widget/LinearLayout;

    .line 94
    sget v0, Lio/rong/imkit/R$id;->rc_ac_iv_file_type_image:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileTypeImage:Landroid/widget/ImageView;

    .line 95
    sget v0, Lio/rong/imkit/R$id;->rc_ac_tv_file_name:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileNameView:Landroid/widget/TextView;

    .line 96
    sget v0, Lio/rong/imkit/R$id;->rc_ac_tv_file_size:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSizeView:Landroid/widget/TextView;

    .line 97
    sget v0, Lio/rong/imkit/R$id;->rc_ac_btn_download_button:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    .line 98
    sget v0, Lio/rong/imkit/R$id;->rc_ac_ll_progress_view:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    .line 99
    sget v0, Lio/rong/imkit/R$id;->rc_btn_cancel:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mCancel:Landroid/widget/ImageView;

    .line 100
    sget v0, Lio/rong/imkit/R$id;->rc_ac_pb_download_progress:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 101
    sget v0, Lio/rong/imkit/R$id;->rc_ac_tv_download_progress:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressTextView:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method private openFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"
    .parameter "fileSavePath"

    .prologue
    .line 133
    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/rong/imkit/utils/FileTypeUtils;->getOpenFileIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    sget v1, Lio/rong/imkit/R$string;->rc_ac_file_preview_can_not_open_file:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private refreshDownloadState()V
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 158
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    iget v2, v2, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    packed-switch v2, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_preview_begin_download:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    iget v3, v3, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v2}, Lio/rong/message/FileMessage;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    iget v4, v4, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->progress:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-long v0, v2

    .line 167
    .local v0, downloadedFileLength:J
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressTextView:Landroid/widget/TextView;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_download_progress_tv:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v6

    iget-wide v8, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSize:J

    invoke-virtual {v6, v8, v9}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    .end local v0           #downloadedFileLength:J
    :pswitch_2
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_download_open_file_btn:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_download_open_file_btn:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_preview_downloaded:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    iget-object v3, v3, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_preview_begin_download:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget v2, Lio/rong/imkit/R$string;->rc_ac_file_preview_download_error:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 185
    :pswitch_5
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    sget v2, Lio/rong/imkit/R$string;->rc_ac_file_preview_download_cancel:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 191
    :pswitch_6
    iget-object v2, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    sget v3, Lio/rong/imkit/R$string;->rc_ac_file_preview_begin_download:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 107
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    iget v0, v0, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mPreviewDownloadFileLinearLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->finish()V

    .line 130
    :cond_1
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mDownloadProgressTextView:Landroid/widget/TextView;

    sget v1, Lio/rong/imkit/R$string;->rc_ac_file_download_progress_tv:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v4

    iget-wide v6, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileSize:J

    invoke-virtual {v4, v6, v7}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/activity/FilePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->downloadFile()V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v1}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/activity/FilePreviewActivity;->openFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mCancel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 125
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mMessage:Lio/rong/imlib/model/Message;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIM;->cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x800

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->requestWindowFeature(I)Z

    .line 67
    sget v0, Lio/rong/imkit/R$layout;->rc_ac_file_download:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/activity/FilePreviewActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FileMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/message/FileMessage;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    .line 70
    invoke-virtual {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    iput-object v0, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mMessage:Lio/rong/imlib/model/Message;

    .line 71
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->initData()V

    .line 73
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->getFileDownloadInfo()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$FileMessageEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 197
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 198
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getCallBackType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/FileMessage;

    .line 203
    .local v0, fileMessage:Lio/rong/message/FileMessage;
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileMessage:Lio/rong/message/FileMessage;

    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/message/FileMessage;->setLocalPath(Landroid/net/Uri;)V

    .line 204
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x6

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    .line 205
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->path:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->refreshDownloadState()V

    goto :goto_0

    .line 209
    .end local v0           #fileMessage:Lio/rong/message/FileMessage;
    :pswitch_1
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x2

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    .line 210
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$FileMessageEvent;->getProgress()I

    move-result v2

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->progress:I

    .line 211
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->refreshDownloadState()V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x4

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    .line 215
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->refreshDownloadState()V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v1, p0, Lio/rong/imkit/activity/FilePreviewActivity;->mFileDownloadInfo:Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;

    const/4 v2, 0x5

    iput v2, v1, Lio/rong/imkit/activity/FilePreviewActivity$FileDownloadInfo;->state:I

    .line 219
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->refreshDownloadState()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    invoke-direct {p0}, Lio/rong/imkit/activity/FilePreviewActivity;->getFileDownloadInfo()V

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 234
    return-void
.end method
