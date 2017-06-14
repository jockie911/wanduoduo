.class Lio/rong/imkit/RongIM$9;
.super Lio/rong/imkit/notification/MessageCounter$Counter;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->setOnReceiveUnreadCountChangedListener(Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;[Lio/rong/imlib/model/Conversation$ConversationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$listener:Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Lio/rong/imkit/model/ConversationTypeFilter;Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lio/rong/imkit/RongIM$9;->this$0:Lio/rong/imkit/RongIM;

    iput-object p3, p0, Lio/rong/imkit/RongIM$9;->val$listener:Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;

    invoke-direct {p0, p2}, Lio/rong/imkit/notification/MessageCounter$Counter;-><init>(Lio/rong/imkit/model/ConversationTypeFilter;)V

    return-void
.end method


# virtual methods
.method public onMessageIncreased(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1357
    iget-object v0, p0, Lio/rong/imkit/RongIM$9;->val$listener:Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;

    invoke-interface {v0, p1}, Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;->onMessageIncreased(I)V

    .line 1358
    return-void
.end method
