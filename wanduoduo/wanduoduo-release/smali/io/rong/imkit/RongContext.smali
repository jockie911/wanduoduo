.class public Lio/rong/imkit/RongContext;
.super Landroid/content/ContextWrapper;
.source "RongContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/RongContext$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RongContext"

.field private static sContext:Lio/rong/imkit/RongContext;


# instance fields
.field private evaluateTextMessageItemProvider:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isShowNewMessageState:Z

.field private isShowUnreadMessageState:Z

.field private isUserInfoAttached:Z

.field private mBus:Lio/rong/eventbus/EventBus;

.field private mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

.field private mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

.field private mConversationProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/model/ConversationProviderTag;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationTypeStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

.field private mCurrentConversationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

.field private mDefaultTemplate:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

.field private mExtendProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

.field private mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

.field mHandler:Landroid/os/Handler;

.field mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

.field mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

.field private mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

.field private mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

.field private mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mNotificationCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

.field private mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;",
            "Lio/rong/imkit/model/ProviderTag;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

.field private mPublicServiceMenuClickListener:Lio/rong/imkit/IPublicServiceMenuClickListener;

.field private mReadReceiptConversationTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPermissionsListener:Lio/rong/imkit/RongIM$RequestPermissionsListener;

.field private mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

.field mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

.field mVoiceInputProvider:Lio/rong/imkit/widget/provider/VoiceInputProvider;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lio/rong/eventbus/EventBus;->getDefault()Lio/rong/eventbus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mBus:Lio/rong/eventbus/EventBus;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    .line 151
    new-instance v0, Lio/rong/imkit/notification/MessageCounter;

    invoke-direct {v0, p0}, Lio/rong/imkit/notification/MessageCounter;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    .line 156
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    .line 159
    invoke-direct {p0}, Lio/rong/imkit/RongContext;->initCache()V

    .line 162
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/RongContext;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 164
    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imkit/utils/AndroidEmoji;->init(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongNotificationManager;->init(Lio/rong/imkit/RongContext;)V

    .line 168
    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imkit/notification/MessageSounder;->init(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/rong/imkit/RongContext;->getDefaultConfig(Landroid/content/Context;)Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imageloader/core/ImageLoader;->init(Lio/rong/imageloader/core/ImageLoaderConfiguration;)V

    .line 171
    return-void
.end method

.method private getDefaultConfig(Landroid/content/Context;)Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .locals 10
    .parameter "context"

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 175
    .local v0, MAX_CACHE_MEMORY_SIZE:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cache/image/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lio/rong/imageloader/utils/StorageUtils;->getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 179
    .local v1, cacheDir:Ljava/io/File;
    :try_start_0
    new-instance v5, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v5, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    new-instance v6, Lio/rong/imageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v6, v0}, Lio/rong/imageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lio/rong/imageloader/cache/memory/MemoryCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    new-instance v6, Lio/rong/imageloader/cache/disc/impl/ext/LruDiskCache;

    new-instance v7, Lio/rong/imageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v7}, Lio/rong/imageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    const-wide/16 v8, 0x0

    invoke-direct {v6, v1, v7, v8, v9}, Lio/rong/imageloader/cache/disc/impl/ext/LruDiskCache;-><init>(Ljava/io/File;Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;J)V

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lio/rong/imageloader/cache/disc/DiskCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/utils/RongAuthImageDownloader;

    invoke-direct {v6, p0}, Lio/rong/imkit/utils/RongAuthImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lio/rong/imageloader/core/download/ImageDownloader;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    invoke-static {}, Lio/rong/imageloader/core/DisplayImageOptions;->createSimple()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->build()Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    .line 189
    .local v2, config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    const/4 v5, 0x0

    invoke-static {v5}, Lio/rong/imageloader/utils/L;->writeLogs(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 196
    .end local v2           #config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .local v3, config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    :goto_0
    return-object v3

    .line 192
    .end local v3           #config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    :catch_0
    move-exception v4

    .line 193
    .local v4, e:Ljava/io/IOException;
    const-string v5, "RongContext"

    const-string v6, "Use default ImageLoader config."

    invoke-static {v5, v6}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    .restart local v2       #config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    move-object v3, v2

    .line 196
    .end local v2           #config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .restart local v3       #config:Lio/rong/imageloader/core/ImageLoaderConfiguration;
    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/RongContext;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    sget-object v0, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lio/rong/imkit/RongContext;

    invoke-direct {v0, p0}, Lio/rong/imkit/RongContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    .line 126
    sget-object v0, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v0}, Lio/rong/imkit/RongContext;->initRegister()V

    .line 128
    :cond_0
    return-void
.end method

.method private initCache()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lio/rong/imkit/RongContext$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p0, v1}, Lio/rong/imkit/RongContext$1;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    .line 328
    return-void
.end method

.method private initRegister()V
    .locals 10

    .prologue
    .line 201
    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->registerDefaultConversationGatherState()V

    .line 202
    new-instance v8, Lio/rong/imkit/widget/provider/PrivateConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 203
    new-instance v8, Lio/rong/imkit/widget/provider/GroupConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/GroupConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 204
    new-instance v8, Lio/rong/imkit/widget/provider/DiscussionConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/DiscussionConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 205
    new-instance v8, Lio/rong/imkit/widget/provider/SystemConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/SystemConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 206
    new-instance v8, Lio/rong/imkit/widget/provider/CustomerServiceConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/CustomerServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 207
    new-instance v8, Lio/rong/imkit/widget/provider/AppServiceConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/AppServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 208
    new-instance v8, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;

    invoke-direct {v8}, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 210
    new-instance v8, Lio/rong/imkit/widget/provider/VoiceInputProvider;

    sget-object v9, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v8, v9}, Lio/rong/imkit/widget/provider/VoiceInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v8, p0, Lio/rong/imkit/RongContext;->mVoiceInputProvider:Lio/rong/imkit/widget/provider/VoiceInputProvider;

    .line 211
    new-instance v8, Lio/rong/imkit/widget/provider/ImageInputProvider;

    sget-object v9, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v8, v9}, Lio/rong/imkit/widget/provider/ImageInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    .line 212
    new-instance v8, Lio/rong/imkit/widget/provider/LocationInputProvider;

    sget-object v9, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v8, v9}, Lio/rong/imkit/widget/provider/LocationInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    .line 214
    new-instance v8, Lio/rong/imkit/widget/provider/TextInputProvider;

    sget-object v9, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v8, v9}, Lio/rong/imkit/widget/provider/TextInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 215
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mVoiceInputProvider:Lio/rong/imkit/widget/provider/VoiceInputProvider;

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 216
    new-instance v8, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    sget-object v9, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v8, v9}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-virtual {p0, v8}, Lio/rong/imkit/RongContext;->setMenuInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, privateProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, chatRoomProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v3, groupProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, customerProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, discussionProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v6, publicProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v5, publicAppProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v7, systemProvider:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v8, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method


# virtual methods
.method public addInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 5
    .parameter "conversationType"
    .parameter "providers"

    .prologue
    .line 531
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 538
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    move-object v0, p2

    .local v0, arr$:[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 535
    .local v3, p:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public executorBackground(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    return-object v0
.end method

.method public getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "type"

    .prologue
    .line 389
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string v0, "RongContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConversationGatherState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    return-object v0
.end method

.method public getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .locals 2
    .parameter "messageKey"

    .prologue
    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .line 471
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;
    .locals 2
    .parameter "conversationType"

    .prologue
    .line 364
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the conversation type hasn\'t been registered!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationProviderTag;

    return-object v0
.end method

.method public getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;
    .locals 1
    .parameter "conversationType"

    .prologue
    .line 360
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    return-object v0
.end method

.method public getCurrentConversationList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imkit/model/ConversationInfo;>;"
    iget-object v5, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 333
    .local v4, size:I
    if-lez v4, :cond_0

    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 335
    iget-object v5, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v3

    .line 336
    .local v3, key:Lio/rong/imkit/model/ConversationKey;
    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationInfo;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imkit/model/ConversationInfo;

    move-result-object v1

    .line 337
    .local v1, info:Lio/rong/imkit/model/ConversationInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0           #i:I
    .end local v1           #info:Lio/rong/imkit/model/ConversationInfo;
    .end local v3           #key:Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-object v2
.end method

.method public getCurrentUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiscussionInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
    .locals 1
    .parameter "discussionId"

    .prologue
    .line 450
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluateProvider()Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lio/rong/imkit/RongContext;->evaluateTextMessageItemProvider:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    invoke-direct {v0}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->evaluateTextMessageItemProvider:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    .line 418
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->evaluateTextMessageItemProvider:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    return-object v0
.end method

.method public getEventBus()Lio/rong/eventbus/EventBus;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mBus:Lio/rong/eventbus/EventBus;

    return-object v0
.end method

.method public getGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 719
    const-string v0, ""

    .line 720
    .local v0, title:Ljava/lang/String;
    sget-object v1, Lio/rong/imkit/RongContext$2;->$SwitchMap$io$rong$imlib$model$Conversation$ConversationType:[I

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 746
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "It\'s not the default conversation type!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-object v0

    .line 722
    :pswitch_0
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_private_conversation:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    goto :goto_0

    .line 725
    :pswitch_1
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_group:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    goto :goto_0

    .line 728
    :pswitch_2
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_discussion:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    goto :goto_0

    .line 731
    :pswitch_3
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_chatroom:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    goto :goto_0

    .line 734
    :pswitch_4
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_customer_service:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    goto :goto_0

    .line 737
    :pswitch_5
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_system_conversation:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    goto :goto_0

    .line 740
    :pswitch_6
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_app_public_service:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    goto :goto_0

    .line 743
    :pswitch_7
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_public_service:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 1
    .parameter "groupId"

    .prologue
    .line 438
    if-eqz p1, :cond_0

    .line 439
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

    return-object v0
.end method

.method public getGroupUserInfoFromCache(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 1
    .parameter "groupId"
    .parameter "userId"

    .prologue
    .line 446
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    return-object v0
.end method

.method public getImageInputProvider()Lio/rong/imkit/widget/provider/ImageInputProvider;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    return-object v0
.end method

.method public getLocationInputProvider()Lio/rong/imkit/widget/provider/LocationInputProvider;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    return-object v0
.end method

.method public getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

    return-object v0
.end method

.method public getMemberSelectListener()Lio/rong/imkit/RongIM$OnSelectMemberListener;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

    return-object v0
.end method

.method public getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

    return-object v0
.end method

.method public getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)",
            "Lio/rong/imkit/model/ProviderTag;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ProviderTag;

    return-object v0
.end method

.method public getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .line 407
    .local v0, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    return-object v0
.end method

.method public getNewMessageState()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isShowNewMessageState:Z

    return v0
.end method

.method public getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

    return-object v0
.end method

.method public getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    return-object v0
.end method

.method public getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;
    .locals 5
    .parameter "messageKey"

    .prologue
    .line 454
    invoke-static {p1}, Lio/rong/imkit/utils/StringUtils;->getArg1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, id:Ljava/lang/String;
    invoke-static {p1}, Lio/rong/imkit/utils/StringUtils;->getArg2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, arg2:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, iArg2:I
    const/4 v3, 0x0

    .line 459
    .local v3, type:Lio/rong/imlib/model/Conversation$PublicServiceType;
    sget-object v4, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 460
    sget-object v3, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 464
    :cond_0
    :goto_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v4

    return-object v4

    .line 461
    :cond_1
    sget-object v4, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 462
    sget-object v3, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    goto :goto_0
.end method

.method public getPublicServiceMenuClickListener()Lio/rong/imkit/IPublicServiceMenuClickListener;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceMenuClickListener:Lio/rong/imkit/IPublicServiceMenuClickListener;

    return-object v0
.end method

.method public getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 1
    .parameter "conversationType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRequestPermissionListener()Lio/rong/imkit/RongIM$RequestPermissionsListener;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mRequestPermissionsListener:Lio/rong/imkit/RongIM$RequestPermissionsListener;

    return-object v0
.end method

.method public getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 650
    const-string v0, "rc_token"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token_value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageState()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isShowUnreadMessageState:Z

    return v0
.end method

.method public getUserInfoAttachedState()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isUserInfoAttached:Z

    return v0
.end method

.method public getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 1
    .parameter "userId"

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

    return-object v0
.end method

.method public getVoIPInputProvider()Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    return-object v0
.end method

.method public getVoiceInputProvider()Lio/rong/imkit/widget/provider/VoiceInputProvider;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mVoiceInputProvider:Lio/rong/imkit/widget/provider/VoiceInputProvider;

    return-object v0
.end method

.method public isReadReceiptConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 764
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 765
    const-string v0, "RongContext"

    const-string v1, "isReadReceiptConversationType mReadReceiptConversationTypeList is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    .line 768
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 585
    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 587
    .local v0, key:Lio/rong/imkit/model/ConversationKey;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v0           #key:Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method

.method public registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imkit/model/ConversationProviderTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationProviderTag;

    .line 353
    .local v0, tag:Lio/rong/imkit/model/ConversationProviderTag;
    if-nez v0, :cond_0

    .line 354
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No ConversationProviderTag added with your provider!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ConversationProviderTag;->conversationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ConversationProviderTag;->conversationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public registerDefaultConversationGatherState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 374
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 376
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 378
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 380
    return-void
.end method

.method public registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imkit/model/ProviderTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ProviderTag;

    .line 399
    .local v0, tag:Lio/rong/imkit/model/ProviderTag;
    if-nez v0, :cond_0

    .line 400
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ProviderTag not def MessageContent type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ProviderTag;->messageContent()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ProviderTag;->messageContent()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public resetInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 5
    .parameter "conversationType"
    .parameter "providers"

    .prologue
    .line 541
    if-nez p1, :cond_1

    .line 551
    :cond_0
    return-void

    .line 543
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 545
    if-eqz p2, :cond_0

    .line 547
    move-object v0, p2

    .local v0, arr$:[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 548
    .local v3, p:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V
    .locals 0
    .parameter "conversationBehaviorListener"

    .prologue
    .line 483
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    .line 484
    return-void
.end method

.method public setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "type"
    .parameter "state"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name of the register conversation type can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method public setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V
    .locals 0
    .parameter "conversationListBehaviorListener"

    .prologue
    .line 691
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    .line 692
    return-void
.end method

.method public setConversationNotifyStatusToCache(Lio/rong/imkit/model/ConversationKey;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 2
    .parameter "conversationKey"
    .parameter "status"

    .prologue
    .line 475
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 625
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 627
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 630
    :cond_0
    return-void
.end method

.method setGetGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V
    .locals 1
    .parameter "provider"
    .parameter "isCacheGroupInfo"

    .prologue
    .line 509
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

    .line 510
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setIsCacheGroupInfo(Z)V

    .line 511
    return-void
.end method

.method public setGetUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V
    .locals 1
    .parameter "provider"
    .parameter "isCache"

    .prologue
    .line 504
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

    .line 505
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setIsCacheUserInfo(Z)V

    .line 506
    return-void
.end method

.method public setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V
    .locals 1
    .parameter "groupUserInfoProvider"
    .parameter "isCache"

    .prologue
    .line 522
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    .line 523
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setIsCacheGroupUserInfo(Z)V

    .line 524
    return-void
.end method

.method public setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V
    .locals 0
    .parameter "locationProvider"

    .prologue
    .line 608
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

    .line 609
    return-void
.end method

.method public setMenuInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 565
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 566
    return-void
.end method

.method public setOnMemberSelectListener(Lio/rong/imkit/RongIM$OnSelectMemberListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 495
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

    .line 496
    return-void
.end method

.method public setOnSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V
    .locals 0
    .parameter "onSendMessageListener"

    .prologue
    .line 616
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

    .line 617
    return-void
.end method

.method public setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 555
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 556
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setIndex(I)V

    .line 557
    return-void
.end method

.method public setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V
    .locals 0
    .parameter "publicServiceBehaviorListener"

    .prologue
    .line 491
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    .line 492
    return-void
.end method

.method public setPublicServiceMenuClickListener(Lio/rong/imkit/IPublicServiceMenuClickListener;)V
    .locals 0
    .parameter "menuClickListener"

    .prologue
    .line 679
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mPublicServiceMenuClickListener:Lio/rong/imkit/IPublicServiceMenuClickListener;

    .line 680
    return-void
.end method

.method varargs setReadReceiptConversationTypeList([Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 6
    .parameter "types"

    .prologue
    .line 753
    if-nez p1, :cond_1

    .line 754
    const-string v4, "RongContext"

    const-string v5, "setReadReceiptConversationTypeList parameter is null"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    return-void

    .line 757
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 758
    move-object v0, p1

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 759
    .local v3, type:Lio/rong/imlib/model/Conversation$ConversationType;
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mReadReceiptConversationTypeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRequestPermissionListener(Lio/rong/imkit/RongIM$RequestPermissionsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 695
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mRequestPermissionsListener:Lio/rong/imkit/RongIM$RequestPermissionsListener;

    .line 696
    return-void
.end method

.method public setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 560
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 561
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setIndex(I)V

    .line 562
    return-void
.end method

.method public setUserInfoAttachedState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 659
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isUserInfoAttached:Z

    .line 660
    return-void
.end method

.method public showNewMessageIcon(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 707
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isShowNewMessageState:Z

    .line 708
    return-void
.end method

.method public showUnreadMessageIcon(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 703
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isShowUnreadMessageState:Z

    .line 704
    return-void
.end method

.method public unregisterConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 596
    .local v0, key:Lio/rong/imkit/model/ConversationKey;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 597
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 600
    .end local v0           #key:Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method
