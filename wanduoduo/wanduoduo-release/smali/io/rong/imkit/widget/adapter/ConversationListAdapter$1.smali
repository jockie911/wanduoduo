.class Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/adapter/ConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

.field final synthetic val$data:Lio/rong/imkit/model/UIConversation;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;->this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iput-object p2, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;->val$data:Lio/rong/imkit/model/UIConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;->this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    #getter for: Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mOnPortraitItemClick:Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;
    invoke-static {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->access$000(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;->this$0:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    #getter for: Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mOnPortraitItemClick:Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;
    invoke-static {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->access$000(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;->val$data:Lio/rong/imkit/model/UIConversation;

    invoke-interface {v0, p1, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;->onPortraitItemClick(Landroid/view/View;Lio/rong/imkit/model/UIConversation;)V

    .line 155
    :cond_0
    return-void
.end method
