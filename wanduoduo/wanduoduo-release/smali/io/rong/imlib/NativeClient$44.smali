.class Lio/rong/imlib/NativeClient$44;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->getPCAuthConfig(Lio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$resultCallback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3214
    iput-object p1, p0, Lio/rong/imlib/NativeClient$44;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$44;->val$resultCallback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 9
    .parameter "errorCode"
    .parameter "token"

    .prologue
    const/4 v8, 0x0

    .line 3217
    const-string v0, "NativeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPCAuthConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 3219
    const-string v0, ";;;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3220
    .local v6, result:[Ljava/lang/String;
    aget-object v1, v6, v8

    .line 3221
    .local v1, customId:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v2, v6, v0

    .line 3222
    .local v2, code:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationClient;->getCMPServer()Ljava/lang/String;

    move-result-object v7

    .line 3223
    .local v7, str:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3224
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, v8

    .line 3225
    .local v5, cmpIP:Ljava/lang/String;
    iget-object v0, p0, Lio/rong/imlib/NativeClient$44;->val$resultCallback:Lio/rong/imlib/NativeClient$IResultCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 3226
    invoke-static {}, Lio/rong/imlib/navigation/PCAuthConfig;->getInstance()Lio/rong/imlib/navigation/PCAuthConfig;

    move-result-object v0

    iget-object v3, p0, Lio/rong/imlib/NativeClient$44;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->appKey:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imlib/NativeClient;->access$300(Lio/rong/imlib/NativeClient;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/NativeClient$44;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mNaviServer:Ljava/lang/String;
    invoke-static {v4}, Lio/rong/imlib/NativeClient;->access$1100(Lio/rong/imlib/NativeClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/navigation/PCAuthConfig;->postConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    .end local v1           #customId:Ljava/lang/String;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #cmpIP:Ljava/lang/String;
    .end local v6           #result:[Ljava/lang/String;
    .end local v7           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3229
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$44;->val$resultCallback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method
