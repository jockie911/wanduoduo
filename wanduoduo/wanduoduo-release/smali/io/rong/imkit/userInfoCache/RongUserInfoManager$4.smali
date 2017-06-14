.class Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;
.super Ljava/lang/Object;
.source "RongUserInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    iput-object p2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 307
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1000(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 308
    :try_start_0
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1000(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v4, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    monitor-exit v3

    .line 348
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1000(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v4, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, discussion:Lio/rong/imlib/model/Discussion;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v1

    .line 318
    :cond_1
    if-eqz v1, :cond_3

    .line 319
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

    invoke-virtual {v1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lio/rong/imkit/userInfoCache/RongConversationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .local v0, conversationInfo:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onDiscussionUpdated(Lio/rong/imlib/model/Discussion;)V

    .line 324
    :cond_2
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mDiscussionQuerySet:Ljava/util/HashSet;
    invoke-static {v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1000(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v0           #conversationInfo:Lio/rong/imkit/userInfoCache/RongConversationInfo;
    .end local v1           #discussion:Lio/rong/imlib/model/Discussion;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 326
    .restart local v1       #discussion:Lio/rong/imlib/model/Discussion;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;->val$id:Ljava/lang/String;

    new-instance v4, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4$1;

    invoke-direct {v4, p0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$4$1;-><init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager$4;)V

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/RongIM;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0
.end method
