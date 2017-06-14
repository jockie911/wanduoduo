.class Lio/rong/imkit/widget/adapter/MessageListAdapter$5;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/adapter/MessageListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

.field final synthetic val$data:Lio/rong/imkit/model/UIMessage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iput-object p2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    iput p3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 486
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 487
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v2, v2, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-interface {v1, v2, p1, v3}, Lio/rong/imkit/RongIM$ConversationBehaviorListener;->onMessageClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->this$0:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    #calls: Lio/rong/imkit/widget/adapter/MessageListAdapter;->getNeedEvaluate(Lio/rong/imkit/model/UIMessage;)Z
    invoke-static {v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->access$000(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEvaluateProvider()Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    move-result-object v0

    .line 497
    .local v0, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    :goto_1
    if-eqz v0, :cond_0

    .line 498
    iget v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$position:I

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v0, p1, v1, v2, v3}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V

    goto :goto_0

    .line 496
    .end local v0           #provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;->val$data:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v0

    .restart local v0       #provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    goto :goto_1
.end method
