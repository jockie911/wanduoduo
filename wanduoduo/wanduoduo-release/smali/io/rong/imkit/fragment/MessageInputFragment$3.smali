.class Lio/rong/imkit/fragment/MessageInputFragment$3;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageInputFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageInputFragment;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V
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
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageInputFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageInputFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 155
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 157
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 5
    .parameter "publicServiceProfile"

    .prologue
    .line 141
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setPublicServiceProfile(Lio/rong/imlib/model/PublicServiceProfile;)V

    .line 142
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getMenu()Lio/rong/imlib/model/PublicServiceMenu;

    move-result-object v0

    .line 143
    .local v0, menu:Lio/rong/imlib/model/PublicServiceMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v3

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imkit/widget/InputView;->setInputProviderEx(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageInputFragment$3;->onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method
