.class Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongUserInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;


# direct methods
.method constructor <init>(Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 381
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    iget-object v0, v0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mPublicServiceProfileCache:Lio/rong/imkit/userInfoCache/RongUserCache;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$1200(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/RongUserCache;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    iget-object v1, v1, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/userInfoCache/RongUserCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    iget-object v0, v0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->this$1:Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;

    iget-object v0, v0, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5;->this$0:Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    #getter for: Lio/rong/imkit/userInfoCache/RongUserInfoManager;->mCacheListener:Lio/rong/imkit/userInfoCache/IRongCacheListener;
    invoke-static {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->access$300(Lio/rong/imkit/userInfoCache/RongUserInfoManager;)Lio/rong/imkit/userInfoCache/IRongCacheListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/userInfoCache/IRongCacheListener;->onPublicServiceProfileUpdated(Lio/rong/imlib/model/PublicServiceProfile;)V

    .line 377
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 368
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager$5$1;->onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method
