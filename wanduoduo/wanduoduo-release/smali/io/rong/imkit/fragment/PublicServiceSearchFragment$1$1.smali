.class Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "PublicServiceSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfileList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 79
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 80
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->clear()V

    .line 85
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfileList;->getPublicServiceData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 86
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->notifyDataSetChanged()V

    .line 87
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 88
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfileList;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V

    return-void
.end method
