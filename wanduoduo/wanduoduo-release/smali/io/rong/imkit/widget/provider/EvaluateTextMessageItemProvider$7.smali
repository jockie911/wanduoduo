.class Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;
.super Ljava/lang/Object;
.source "EvaluateTextMessageItemProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/ILinkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;->this$0:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClick(Ljava/lang/String;)Z
    .locals 2
    .parameter "link"

    .prologue
    .line 234
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    move-result-object v0

    .line 235
    .local v0, listener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/rong/imkit/RongIM$ConversationBehaviorListener;->onMessageLinkClick(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 238
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
