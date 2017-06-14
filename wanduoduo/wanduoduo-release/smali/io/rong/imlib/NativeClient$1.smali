.class Lio/rong/imlib/NativeClient$1;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/navigation/NavigationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lio/rong/imlib/NativeClient$1;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 6
    .parameter "cmp"
    .parameter "errorCode"

    .prologue
    .line 202
    const-string v2, "NativeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect onError - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, ip:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, port:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/NativeClient$1;->this$0:Lio/rong/imlib/NativeClient;

    iget-object v3, p0, Lio/rong/imlib/NativeClient$1;->val$token:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    #calls: Lio/rong/imlib/NativeClient;->internalConnect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    invoke-static {v2, v3, v0, v4, v5}, Lio/rong/imlib/NativeClient;->access$000(Lio/rong/imlib/NativeClient;Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 213
    .end local v0           #ip:Ljava/lang/String;
    .end local v1           #port:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/navigation/NavigationClient;->clearObserver()V

    .line 214
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v2, p2}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method

.method public onReconnect(Ljava/lang/String;Lio/rong/imlib/navigation/NavigationCallback;)V
    .locals 7
    .parameter "cmp"
    .parameter "navigationCallback"

    .prologue
    .line 218
    const-string v0, "NativeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect onReconnect - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, ip:Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, port:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/NativeClient$1;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/imlib/NativeClient;->access$100(Lio/rong/imlib/NativeClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/navigation/NavigationClient;->isMPOpened(Landroid/content/Context;)Z

    move-result v5

    .line 223
    .local v5, mpOpened:Z
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    iget-object v1, p0, Lio/rong/imlib/NativeClient$1;->val$token:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lio/rong/imlib/NativeClient$1$1;

    invoke-direct {v4, p0, p2}, Lio/rong/imlib/NativeClient$1$1;-><init>(Lio/rong/imlib/NativeClient$1;Lio/rong/imlib/navigation/NavigationCallback;)V

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->Connect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeObject$ConnectAckCallback;Z)V

    .line 235
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationClient;->clearObserver()V

    .line 236
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "cmp"

    .prologue
    .line 194
    const-string v2, "NativeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect onSuccess - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, ip:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, port:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/NativeClient$1;->this$0:Lio/rong/imlib/NativeClient;

    iget-object v3, p0, Lio/rong/imlib/NativeClient$1;->val$token:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lio/rong/imlib/NativeClient$1;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    #calls: Lio/rong/imlib/NativeClient;->internalConnect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    invoke-static {v2, v3, v0, v4, v5}, Lio/rong/imlib/NativeClient;->access$000(Lio/rong/imlib/NativeClient;Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 198
    return-void
.end method
