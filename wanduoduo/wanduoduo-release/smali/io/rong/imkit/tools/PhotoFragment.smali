.class public Lio/rong/imkit/tools/PhotoFragment;
.super Lio/rong/imkit/fragment/BaseFragment;
.source "PhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/PhotoFragment$ImageInfo;,
        Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;,
        Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;
    }
.end annotation


# static fields
.field private static final IMAGE_MESSAGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PhotoFragment"


# instance fields
.field private isFirstTime:Z

.field private mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mCurrentImageMessage:Lio/rong/message/ImageMessage;

.field private mCurrentIndex:I

.field private mCurrentMessageId:I

.field private mDownloadListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

.field private mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

.field private mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mTargetId:Ljava/lang/String;

.field private mViewPager:Lio/rong/imkit/widget/HackyViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mTargetId:Ljava/lang/String;

    .line 54
    iput v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentIndex:I

    .line 58
    iput-boolean v1, p0, Lio/rong/imkit/tools/PhotoFragment;->isFirstTime:Z

    .line 59
    new-instance v0, Lio/rong/imkit/tools/PhotoFragment$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/tools/PhotoFragment$1;-><init>(Lio/rong/imkit/tools/PhotoFragment;)V

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 427
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/tools/PhotoFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$002(Lio/rong/imkit/tools/PhotoFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/widget/HackyViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    return-object v0
.end method

.method static synthetic access$1100(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imageloader/core/imageaware/ImageAware;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    return-object v0
.end method

.method static synthetic access$1102(Lio/rong/imkit/tools/PhotoFragment;Lio/rong/imageloader/core/imageaware/ImageAware;)Lio/rong/imageloader/core/imageaware/ImageAware;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    return-object p1
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mDownloadListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imkit/tools/PhotoFragment;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/tools/PhotoFragment;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    return-void
.end method

.method static synthetic access$700(Lio/rong/imkit/tools/PhotoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lio/rong/imkit/tools/PhotoFragment;->isFirstTime:Z

    return v0
.end method

.method static synthetic access$702(Lio/rong/imkit/tools/PhotoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lio/rong/imkit/tools/PhotoFragment;->isFirstTime:Z

    return p1
.end method

.method static synthetic access$800(Lio/rong/imkit/tools/PhotoFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentMessageId:I

    return v0
.end method

.method static synthetic access$900(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/message/ImageMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentImageMessage:Lio/rong/message/ImageMessage;

    return-object v0
.end method

.method private getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 8
    .parameter "mesageId"
    .parameter "direction"

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mTargetId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment;->mTargetId:Ljava/lang/String;

    const-string v3, "RC:ImgMsg"

    const/16 v5, 0xa

    new-instance v7, Lio/rong/imkit/tools/PhotoFragment$2;

    invoke-direct {v7, p0, p2}, Lio/rong/imkit/tools/PhotoFragment$2;-><init>(Lio/rong/imkit/tools/PhotoFragment;Lio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public initPhoto(Lio/rong/imlib/model/Message;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V
    .locals 2
    .parameter "currentMessage"
    .parameter "downloadListener"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ImageMessage;

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentImageMessage:Lio/rong/message/ImageMessage;

    .line 102
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 103
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    iput v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentMessageId:I

    .line 104
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mTargetId:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lio/rong/imkit/tools/PhotoFragment;->mDownloadListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    .line 106
    iget v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentMessageId:I

    if-gez v0, :cond_1

    .line 107
    const-string v0, "PhotoFragment"

    const-string v1, "The value of messageId is wrong!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;-><init>(Lio/rong/imkit/tools/PhotoFragment;Lio/rong/imkit/tools/PhotoFragment$1;)V

    iput-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/tools/PhotoFragment;->isFirstTime:Z

    .line 113
    iget-object v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/HackyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 115
    iget v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentMessageId:I

    sget-object v1, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/tools/PhotoFragment;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    .line 116
    iget v0, p0, Lio/rong/imkit/tools/PhotoFragment;->mCurrentMessageId:I

    sget-object v1, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->BEHIND:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/tools/PhotoFragment;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lio/rong/imkit/tools/PhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 93
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_photo:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/HackyViewPager;

    iput-object v1, p0, Lio/rong/imkit/tools/PhotoFragment;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    .line 95
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseFragment;->onDestroy()V

    .line 191
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->uninit()V

    .line 192
    return-void
.end method

.method public onRestoreUI()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    return-void
.end method
