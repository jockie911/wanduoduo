.class Lio/rong/imkit/model/EmojiMessageAdapter$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "EmojiMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/model/EmojiMessageAdapter;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/model/EmojiMessageAdapter;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/model/EmojiMessageAdapter;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->this$0:Lio/rong/imkit/model/EmojiMessageAdapter;

    iput-object p2, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 41
    iget-object v0, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/EmojiMessageAdapter$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v0, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iget-object v1, p0, Lio/rong/imkit/model/EmojiMessageAdapter$1;->this$0:Lio/rong/imkit/model/EmojiMessageAdapter;

    #calls: Lio/rong/imkit/model/EmojiMessageAdapter;->emojiMessageToUIMessage(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, p1}, Lio/rong/imkit/model/EmojiMessageAdapter;->access$000(Lio/rong/imkit/model/EmojiMessageAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method
