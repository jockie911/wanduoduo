.class public Lio/rong/imkit/widget/provider/FileInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
.source "FileInputProvider.java"


# static fields
.field private static final REQUEST_FILE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileInputProvider"


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 29
    return-void
.end method


# virtual methods
.method public obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_files:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    sget v0, Lio/rong/imkit/R$string;->rc_plugins_files:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    const/16 v6, 0x64

    if-ne p1, v6, :cond_1

    .line 51
    if-eqz p3, :cond_1

    .line 52
    const-string v6, "sendSelectedFiles"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 53
    .local v5, selectedFileInfos:Ljava/util/HashSet;,"Ljava/util/HashSet<Lio/rong/imkit/model/FileInfo;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/FileInfo;

    .line 54
    .local v0, fileInfo:Lio/rong/imkit/model/FileInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    .local v2, filePath:Landroid/net/Uri;
    invoke-static {v2}, Lio/rong/message/FileMessage;->obtain(Landroid/net/Uri;)Lio/rong/message/FileMessage;

    move-result-object v1

    .line 56
    .local v1, fileMessage:Lio/rong/message/FileMessage;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lio/rong/imkit/model/FileInfo;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lio/rong/message/FileMessage;->setType(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/FileInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/FileInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v4

    .line 59
    .local v4, message:Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v6

    invoke-virtual {v6, v4, v8, v8, v8}, Lio/rong/imkit/RongIM;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V

    goto :goto_0

    .line 64
    .end local v0           #fileInfo:Lio/rong/imkit/model/FileInfo;
    .end local v1           #fileMessage:Lio/rong/message/FileMessage;
    .end local v2           #filePath:Landroid/net/Uri;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #message:Lio/rong/imlib/model/Message;
    .end local v5           #selectedFileInfos:Ljava/util/HashSet;,"Ljava/util/HashSet<Lio/rong/imkit/model/FileInfo;>;"
    :cond_1
    return-void
.end method

.method public onPluginClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/FileInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v1

    const-class v2, Lio/rong/imkit/activity/FileManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/widget/provider/FileInputProvider;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    return-void
.end method
