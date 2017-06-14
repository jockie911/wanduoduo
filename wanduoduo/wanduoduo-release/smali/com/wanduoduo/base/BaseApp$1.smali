.class Lcom/wanduoduo/base/BaseApp$1;
.super Ljava/lang/Object;
.source "BaseApp.java"

# interfaces
.implements Lio/rong/imkit/RongIM$ConversationBehaviorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/base/BaseApp;->initRongIMBrhevieClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseApp;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseApp;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wanduoduo/base/BaseApp$1;->this$0:Lcom/wanduoduo/base/BaseApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "message"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageLinkClick(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "s"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imlib/model/Message;)Z
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "message"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onUserPortraitClick(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/UserInfo;)Z
    .locals 4
    .parameter "context"
    .parameter "conversationType"
    .parameter "userInfo"

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v1, "user_id"

    invoke-virtual {p3}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return v3
.end method

.method public onUserPortraitLongClick(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/UserInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "conversationType"
    .parameter "userInfo"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
