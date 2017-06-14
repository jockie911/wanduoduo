.class Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;
.super Ljava/lang/Object;
.source "RongUserInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setDiscussionInfo(Lio/rong/imlib/model/Discussion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

.field final synthetic val$discussion:Lio/rong/imlib/model/Discussion;


# direct methods
.method constructor <init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager;Lio/rong/imlib/model/Discussion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    iput-object p2, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->val$discussion:Lio/rong/imlib/model/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mRongDatabaseDao:Lio/rong/imkit/userInfoCache/RongDatabaseDao;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongDatabaseDao;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->val$discussion:Lio/rong/imlib/model/Discussion;

    invoke-virtual {v0, v1}, Lio/rong/imkit/userInfoCache/RongDatabaseDao;->putDiscussionInfo(Lio/rong/imlib/model/Discussion;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$9;->val$discussion:Lio/rong/imlib/model/Discussion;

    invoke-interface {v0, v1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onDiscussionUpdated(Lio/rong/imlib/model/Discussion;)V

    .line 477
    :cond_1
    return-void
.end method
