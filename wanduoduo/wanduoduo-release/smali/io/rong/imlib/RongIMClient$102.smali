.class Lio/rong/imlib/RongIMClient$102;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->startCustomService(Ljava/lang/String;Lio/rong/imlib/ICustomServiceListener;Lio/rong/imlib/model/CSCustomServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 7421
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 6
    .parameter "messageId"
    .parameter "e"

    .prologue
    .line 7424
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7425
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "rc_init_failed"

    const-string v4, "string"

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7426
    .local v0, strFail:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v1

    invoke-virtual {p2}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lio/rong/imlib/ICustomServiceListener;->onError(ILjava/lang/String;)V

    .line 7427
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$102;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    #setter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$3102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/ICustomServiceListener;)Lio/rong/imlib/ICustomServiceListener;

    .line 7429
    .end local v0           #strFail:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 0
    .parameter "integer"

    .prologue
    .line 7433
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7421
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$102;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
