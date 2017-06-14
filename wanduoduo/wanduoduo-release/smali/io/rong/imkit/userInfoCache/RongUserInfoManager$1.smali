.class Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;
.super Ljava/lang/Object;
.source "RongUserInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
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
    .line 157
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    iput-object p2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    monitor-exit v2

    .line 186
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, userInfo:Lio/rong/imlib/model/UserInfo;
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 171
    :cond_1
    if-nez v0, :cond_3

    .line 172
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 175
    :cond_2
    if-eqz v0, :cond_3

    .line 176
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #calls: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->putUserInfoInDB(Lio/rong/imlib/model/UserInfo;)V
    invoke-static {v1, v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$400(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/UserInfo;)V

    .line 179
    :cond_3
    if-eqz v0, :cond_4

    .line 180
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #calls: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->putUserInfoInCache(Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;
    invoke-static {v1, v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$500(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/UserInfo;)Lio/rong/imlib/model/UserInfo;

    .line 181
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onUserInfoUpdated(Lio/rong/imlib/model/UserInfo;)V

    .line 185
    :cond_4
    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mUserQuerySet:Ljava/util/HashSet;
    invoke-static {v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$100(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0           #userInfo:Lio/rong/imlib/model/UserInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
