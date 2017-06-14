.class public Lio/rong/imkit/activity/PicturePagerActivity;
.super Landroid/app/Activity;
.source "PicturePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;,
        Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_MESSAGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PicturePagerActivity"


# instance fields
.field private isFirstTime:Z

.field private mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mCurrentImageMessage:Lio/rong/message/ImageMessage;

.field private mCurrentIndex:I

.field private mCurrentMessageId:I

.field private mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

.field private mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mTargetId:Ljava/lang/String;

.field private mViewPager:Lio/rong/imkit/widget/HackyViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mTargetId:Ljava/lang/String;

    .line 52
    iput v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I

    .line 55
    iput-boolean v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z

    .line 56
    new-instance v0, Lio/rong/imkit/activity/PicturePagerActivity$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/activity/PicturePagerActivity$1;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;)V

    iput-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/activity/PicturePagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$002(Lio/rong/imkit/activity/PicturePagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/widget/HackyViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imageloader/core/imageaware/ImageAware;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    return-object v0
.end method

.method static synthetic access$1002(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imageloader/core/imageaware/ImageAware;)Lio/rong/imageloader/core/imageaware/ImageAware;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mDownloadingImageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    return-object p1
.end method

.method static synthetic access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/activity/PicturePagerActivity;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    return-void
.end method

.method static synthetic access$600(Lio/rong/imkit/activity/PicturePagerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z

    return v0
.end method

.method static synthetic access$602(Lio/rong/imkit/activity/PicturePagerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z

    return p1
.end method

.method static synthetic access$700(Lio/rong/imkit/activity/PicturePagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentMessageId:I

    return v0
.end method

.method static synthetic access$800(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/message/ImageMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;

    return-object v0
.end method

.method private getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 8
    .parameter "mesageId"
    .parameter "direction"

    .prologue
    .line 102
    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mTargetId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mTargetId:Ljava/lang/String;

    const-string v3, "RC:ImgMsg"

    const/16 v5, 0xa

    new-instance v7, Lio/rong/imkit/activity/PicturePagerActivity$2;

    invoke-direct {v7, p0, p2}, Lio/rong/imkit/activity/PicturePagerActivity$2;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_photo:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/PicturePagerActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    .line 86
    .local v0, currentMessage:Lio/rong/imlib/model/Message;
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    check-cast v1, Lio/rong/message/ImageMessage;

    iput-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;

    .line 87
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 88
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    iput v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentMessageId:I

    .line 89
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mTargetId:Ljava/lang/String;

    .line 91
    sget v1, Lio/rong/imkit/R$id;->viewpager:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/activity/PicturePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/HackyViewPager;

    iput-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    .line 92
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/HackyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 93
    new-instance v1, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imkit/activity/PicturePagerActivity$1;)V

    iput-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z

    .line 95
    invoke-static {p0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->init(Landroid/content/Context;)V

    .line 97
    iget v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentMessageId:I

    sget-object v2, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0, v1, v2}, Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    .line 98
    iget v1, p0, Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentMessageId:I

    sget-object v2, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->BEHIND:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0, v1, v2}, Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 152
    invoke-virtual {p0}, Lio/rong/imkit/activity/PicturePagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->uninit()V

    .line 155
    :cond_0
    return-void
.end method
