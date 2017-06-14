.class public Lio/rong/imkit/userInfoCache/RongUserInfoManager;
.super Ljava/lang/Object;
.source "RongUserInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/userInfoCache/RongUserInfoManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RongUserInfoManager"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

.field private mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/userInfoCache/RongUserCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/userInfoCache/RongConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscussionQuerySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/userInfoCache/RongUserCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/userInfoCache/RongConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupQuerySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/userInfoCache/RongUserCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/model/GroupUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupUserQuerySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mIsCacheGroupInfo:Z

.field private mIsCacheGroupUserInfo:Z

.field private mIsCacheUserInfo:Z

.field private mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/userInfoCache/RongUserCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

.field private mUserId:Ljava/lang/String;

.field private mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/userInfoCache/RongUserCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserQuerySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x40

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheUserInfo:Z

    .line 37
    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupInfo:Z

    .line 38
    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupUserInfo:Z

    .line 50
    new-instance v0, Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-direct {v0, v1}, Lio/rong/imkit/userInfoCache/RongUserCache;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    .line 51
    new-instance v0, Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-direct {v0, v1}, Lio/rong/imkit/userInfoCache/RongUserCache;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    .line 52
    new-instance v0, Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-direct {v0, v2}, Lio/rong/imkit/userInfoCache/RongUserCache;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    .line 53
    new-instance v0, Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-direct {v0, v2}, Lio/rong/imkit/userInfoCache/RongUserCache;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    .line 54
    new-instance v0, Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-direct {v0, v1}, Lio/rong/imkit/userInfoCache/RongUserCache;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupQuerySet:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserQuerySet:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RongUserInfoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    invoke-direct {v0}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->putUserInfoInDB(Lio/rong/imlib/model/UserInfo;)V

    return-void
.end method

.method static synthetic access$500(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->putUserInfoInCache(Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserQuerySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupQuerySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    return-object v0
.end method

.method public static getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$SingletonHolder;->sInstance:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    return-object v0
.end method

.method private insertUserInfoInDB(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 137
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->insertUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 140
    :cond_0
    return-void
.end method

.method private putUserInfoInCache(Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;
    .locals 2
    .parameter "info"

    .prologue
    .line 133
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method private putUserInfoInDB(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->putUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
    .locals 4
    .parameter "id"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, discussionInfo:Lio/rong/imlib/model/Discussion;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    .line 303
    .local v1, info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    if-nez v1, :cond_1

    .line 304
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 351
    :cond_1
    new-instance v0, Lio/rong/imlib/model/Discussion;

    .end local v0           #discussionInfo:Lio/rong/imlib/model/Discussion;
    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lio/rong/imlib/model/Discussion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #discussionInfo:Lio/rong/imlib/model/Discussion;
    goto :goto_0
.end method

.method public getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 5
    .parameter "id"

    .prologue
    .line 246
    if-nez p1, :cond_1

    .line 247
    const/4 v0, 0x0

    .line 294
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const/4 v0, 0x0

    .line 250
    .local v0, groupInfo:Lio/rong/imlib/model/Group;
    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupInfo:Z

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    .line 252
    .local v1, info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    if-nez v1, :cond_2

    .line 253
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$3;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$3;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 287
    :cond_2
    new-instance v0, Lio/rong/imlib/model/Group;

    .end local v0           #groupInfo:Lio/rong/imlib/model/Group;
    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lio/rong/imlib/model/Group;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #groupInfo:Lio/rong/imlib/model/Group;
    goto :goto_0

    .line 290
    .end local v1           #info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v2, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 4
    .parameter "gId"
    .parameter "id"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 242
    :cond_1
    :goto_0
    return-object v0

    .line 201
    :cond_2
    invoke-static {p1, p2}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 203
    .local v0, info:Lio/rong/imkit/model/GroupUserInfo;
    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupUserInfo:Z

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, v1}, Lio/rong/imkit/userInfoCache/RongUserCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lio/rong/imkit/model/GroupUserInfo;
    check-cast v0, Lio/rong/imkit/model/GroupUserInfo;

    .line 205
    .restart local v0       #info:Lio/rong/imkit/model/GroupUserInfo;
    if-nez v0, :cond_1

    .line 206
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$2;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v2, p1, p2}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;
    .locals 4
    .parameter "type"
    .parameter "id"

    .prologue
    .line 357
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 386
    :cond_1
    :goto_0
    return-object v0

    .line 360
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, v1}, Lio/rong/imkit/userInfoCache/RongUserCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    .line 364
    .local v0, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-nez v0, :cond_1

    .line 365
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    invoke-direct {v3, p0, p1, p2, v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 3
    .parameter "id"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    const/4 v0, 0x0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, info:Lio/rong/imlib/model/UserInfo;
    iget-boolean v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheUserInfo:Z

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lio/rong/imlib/model/UserInfo;
    check-cast v0, Lio/rong/imlib/model/UserInfo;

    .line 156
    .restart local v0       #info:Lio/rong/imlib/model/UserInfo;
    if-nez v0, :cond_0

    .line 157
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v1, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/rong/imkit/userInfoCache/IRongCacheListener;)V
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "userId"
    .parameter "listener"

    .prologue
    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const-string v0, "RongUserInfoManager"

    const-string v1, "init, appkey or userId is null."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    .line 89
    iput-object p2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mAppKey:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    .line 92
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    const-string v0, "RongUserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInitialized(Ljava/lang/String;)Z
    .locals 2
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDiscussionInfo(Lio/rong/imlib/model/Discussion;)V
    .locals 6
    .parameter "discussion"

    .prologue
    .line 464
    new-instance v0, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lio/rong/imkit/userInfoCache/RongConversationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v0, info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    .line 466
    .local v1, oldInfo:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/Discussion;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_1
    return-void
.end method

.method public setGroupInfo(Lio/rong/imlib/model/Group;)V
    .locals 6
    .parameter "group"

    .prologue
    .line 438
    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupInfo:Z

    if-eqz v2, :cond_3

    .line 439
    new-instance v0, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lio/rong/imkit/userInfoCache/RongConversationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    .local v0, info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/userInfoCache/RongConversationInfo;

    .line 441
    .local v1, oldInfo:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongConversationInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$8;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$8;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/Group;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    .end local v0           #info:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    .end local v1           #oldInfo:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    :cond_2
    :goto_0
    return-void

    .line 457
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v2, :cond_2

    .line 458
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v2, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onGroupUpdated(Lio/rong/imlib/model/Group;)V

    goto :goto_0
.end method

.method public setGroupUserInfo(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 413
    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, key:Ljava/lang/String;
    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupUserInfo:Z

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, v0, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/GroupUserInfo;

    .line 416
    .local v1, oldInfo:Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$7;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$7;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imkit/model/GroupUserInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    .end local v1           #oldInfo:Lio/rong/imkit/model/GroupUserInfo;
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v2, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onGroupUserInfoUpdated(Lio/rong/imkit/model/GroupUserInfo;)V

    goto :goto_0
.end method

.method public setIsCacheGroupInfo(Z)V
    .locals 0
    .parameter "mIsCacheGroupInfo"

    .prologue
    .line 71
    iput-boolean p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupInfo:Z

    .line 72
    return-void
.end method

.method public setIsCacheGroupUserInfo(Z)V
    .locals 0
    .parameter "mIsCacheGroupUserInfo"

    .prologue
    .line 75
    iput-boolean p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheGroupUserInfo:Z

    .line 76
    return-void
.end method

.method public setIsCacheUserInfo(Z)V
    .locals 0
    .parameter "mIsCacheUserInfo"

    .prologue
    .line 67
    iput-boolean p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheUserInfo:Z

    .line 68
    return-void
.end method

.method public setPublicServiceProfile(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v2, v0, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/PublicServiceProfile;

    .line 486
    .local v1, oldInfo:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imkit/userInfoCache/RongUserInfoManager$10;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$10;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/PublicServiceProfile;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :cond_2
    return-void
.end method

.method public setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 390
    iget-boolean v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mIsCacheUserInfo:Z

    if-eqz v1, :cond_3

    .line 391
    invoke-direct {p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->putUserInfoInCache(Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 392
    .local v0, oldInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imkit/userInfoCache/RongUserInfoManager$6;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$6;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/UserInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    .end local v0           #oldInfo:Lio/rong/imlib/model/UserInfo;
    :cond_2
    :goto_0
    return-void

    .line 406
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    invoke-interface {v1, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onUserInfoUpdated(Lio/rong/imlib/model/UserInfo;)V

    goto :goto_0
.end method

.method public uninit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v0, "RongUserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->clear()V

    .line 112
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->clear()V

    .line 115
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->clear()V

    .line 118
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mGroupUserInfoCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->clear()V

    .line 121
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->clear()V

    .line 124
    :cond_4
    iput-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mInitialized:Z

    .line 126
    iput-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserId:Ljava/lang/String;

    .line 127
    iput-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mAppKey:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->close()V

    .line 130
    :cond_5
    return-void
.end method
