.class Lio/rong/imkit/widget/provider/LocationInputProvider$1;
.super Ljava/lang/Object;
.source "LocationInputProvider.java"

# interfaces
.implements Lio/rong/imkit/RongIM$LocationProvider$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/LocationInputProvider;->onPluginClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/LocationInputProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 59
    return-void
.end method

.method public onSuccess(Lio/rong/message/LocationMessage;)V
    .locals 4
    .parameter "locationMessage"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 54
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3, v3}, Lio/rong/imkit/RongIM;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    .line 55
    return-void
.end method
