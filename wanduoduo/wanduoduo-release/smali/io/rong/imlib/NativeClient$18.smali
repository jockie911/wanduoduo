.class Lio/rong/imlib/NativeClient$18;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

.field final synthetic val$uploadType:I


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/filetransfer/FtConst$MimeType;Lio/rong/imlib/NativeClient$IResultProgressCallback;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1768
    iput-object p1, p0, Lio/rong/imlib/NativeClient$18;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$18;->val$mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$18;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    iput-object p4, p0, Lio/rong/imlib/NativeClient$18;->val$filePath:Ljava/lang/String;

    iput p5, p0, Lio/rong/imlib/NativeClient$18;->val$uploadType:I

    iput-object p6, p0, Lio/rong/imlib/NativeClient$18;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 11
    .parameter "errorCode"
    .parameter "token"

    .prologue
    .line 1771
    if-nez p1, :cond_4

    .line 1772
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->val$mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    invoke-virtual {v6}, Lio/rong/imlib/filetransfer/FtConst$MimeType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/rong/imlib/filetransfer/FtUtilities;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, mimeKey:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imlib/NativeClient$18;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lio/rong/imlib/NativeClient;->access$100(Lio/rong/imlib/NativeClient;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imlib/navigation/NavigationClient;->getMediaServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, ipAddr:Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mFileServer:Ljava/lang/String;
    invoke-static {v6}, Lio/rong/imlib/NativeClient;->access$600(Lio/rong/imlib/NativeClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1777
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->this$0:Lio/rong/imlib/NativeClient;

    #getter for: Lio/rong/imlib/NativeClient;->mFileServer:Ljava/lang/String;
    invoke-static {v6}, Lio/rong/imlib/NativeClient;->access$600(Lio/rong/imlib/NativeClient;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    :cond_0
    if-eqz v0, :cond_3

    .line 1780
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1781
    .local v2, pos:I
    if-lez v2, :cond_2

    .line 1782
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1783
    .local v5, uploadIP:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1784
    .local v4, upPort:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1793
    .end local v4           #upPort:Ljava/lang/String;
    .end local v5           #uploadIP:Ljava/lang/String;
    .local v3, serverIp:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lio/rong/imlib/filetransfer/FileTransferClient;->getInstance()Lio/rong/imlib/filetransfer/FileTransferClient;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imlib/NativeClient$18;->val$filePath:Ljava/lang/String;

    new-instance v8, Lio/rong/imlib/filetransfer/RequestOption;

    iget-object v9, p0, Lio/rong/imlib/NativeClient$18;->val$mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    new-instance v10, Lio/rong/imlib/NativeClient$18$1;

    invoke-direct {v10, p0, v1}, Lio/rong/imlib/NativeClient$18$1;-><init>(Lio/rong/imlib/NativeClient$18;Ljava/lang/String;)V

    invoke-direct {v8, v1, v9, v3, v10}, Lio/rong/imlib/filetransfer/RequestOption;-><init>(Ljava/lang/String;Lio/rong/imlib/filetransfer/FtConst$MimeType;Ljava/lang/String;Lio/rong/imlib/filetransfer/RequestCallBack;)V

    invoke-virtual {v6, v7, p2, v8}, Lio/rong/imlib/filetransfer/FileTransferClient;->upload(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/filetransfer/RequestOption;)V

    .line 1833
    .end local v0           #ipAddr:Ljava/lang/String;
    .end local v1           #mimeKey:Ljava/lang/String;
    .end local v2           #pos:I
    .end local v3           #serverIp:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1786
    .restart local v0       #ipAddr:Ljava/lang/String;
    .restart local v1       #mimeKey:Ljava/lang/String;
    .restart local v2       #pos:I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #serverIp:Ljava/lang/String;
    goto :goto_0

    .line 1789
    .end local v2           #pos:I
    .end local v3           #serverIp:Ljava/lang/String;
    :cond_3
    const-string v6, "NativeClient"

    const-string v7, "uploadMedia getMediaServer returns null"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    const/16 v7, 0x7538

    invoke-interface {v6, v7}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onError(I)V

    goto :goto_1

    .line 1830
    .end local v0           #ipAddr:Ljava/lang/String;
    .end local v1           #mimeKey:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    if-eqz v6, :cond_1

    .line 1831
    iget-object v6, p0, Lio/rong/imlib/NativeClient$18;->val$callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;

    invoke-interface {v6, p1}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onError(I)V

    goto :goto_1
.end method
