.class public Lio/rong/imlib/filetransfer/FileTransferClient;
.super Ljava/lang/Object;
.source "FileTransferClient.java"


# static fields
.field private static sInstance:Lio/rong/imlib/filetransfer/FileTransferClient;


# instance fields
.field private configuration:Lio/rong/imlib/filetransfer/Configuration;

.field private dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;


# direct methods
.method private constructor <init>(Lio/rong/imlib/filetransfer/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->configuration:Lio/rong/imlib/filetransfer/Configuration;

    .line 11
    new-instance v0, Lio/rong/imlib/filetransfer/CallDispatcher;

    invoke-direct {v0}, Lio/rong/imlib/filetransfer/CallDispatcher;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    .line 12
    return-void
.end method

.method public static getInstance()Lio/rong/imlib/filetransfer/FileTransferClient;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/rong/imlib/filetransfer/FileTransferClient;->sInstance:Lio/rong/imlib/filetransfer/FileTransferClient;

    return-object v0
.end method

.method public static init(Lio/rong/imlib/filetransfer/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 15
    new-instance v0, Lio/rong/imlib/filetransfer/FileTransferClient;

    invoke-direct {v0, p0}, Lio/rong/imlib/filetransfer/FileTransferClient;-><init>(Lio/rong/imlib/filetransfer/Configuration;)V

    sput-object v0, Lio/rong/imlib/filetransfer/FileTransferClient;->sInstance:Lio/rong/imlib/filetransfer/FileTransferClient;

    .line 16
    return-void
.end method


# virtual methods
.method public cancel(ILio/rong/imlib/filetransfer/CancelCallback;)V
    .locals 2
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 55
    if-lez p1, :cond_0

    .line 56
    iget-object v0, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/filetransfer/CallDispatcher;->cancel(Ljava/lang/Object;Lio/rong/imlib/filetransfer/CancelCallback;)V

    .line 58
    :cond_0
    return-void
.end method

.method public download(ILjava/lang/String;Lio/rong/imlib/filetransfer/RequestOption;)V
    .locals 4
    .parameter "id"
    .parameter "url"
    .parameter "option"

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, request:Lio/rong/imlib/filetransfer/Request;
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->configuration:Lio/rong/imlib/filetransfer/Configuration;

    iget-object v2, v2, Lio/rong/imlib/filetransfer/Configuration;->serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    sget-object v3, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    if-ne v2, v3, :cond_0

    .line 42
    new-instance v1, Lio/rong/imlib/filetransfer/QiniuRequest;

    .end local v1           #request:Lio/rong/imlib/filetransfer/Request;
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->configuration:Lio/rong/imlib/filetransfer/Configuration;

    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getRequestCallBack()Lio/rong/imlib/filetransfer/RequestCallBack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/rong/imlib/filetransfer/QiniuRequest;-><init>(Lio/rong/imlib/filetransfer/Configuration;Lio/rong/imlib/filetransfer/RequestCallBack;)V

    .line 43
    .restart local v1       #request:Lio/rong/imlib/filetransfer/Request;
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getMimeType()Lio/rong/imlib/filetransfer/FtConst$MimeType;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 44
    const-string v2, "GET"

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    .line 45
    iput-object p2, v1, Lio/rong/imlib/filetransfer/Request;->url:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->tag:Ljava/lang/Object;

    .line 47
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->fileName:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getRequestCallBack()Lio/rong/imlib/filetransfer/RequestCallBack;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 50
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    invoke-static {v2, v1}, Lio/rong/imlib/filetransfer/Call;->create(Lio/rong/imlib/filetransfer/CallDispatcher;Lio/rong/imlib/filetransfer/Request;)Lio/rong/imlib/filetransfer/Call;

    move-result-object v0

    .line 51
    .local v0, call:Lio/rong/imlib/filetransfer/Call;
    invoke-virtual {v0}, Lio/rong/imlib/filetransfer/Call;->enqueue()V

    .line 52
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/filetransfer/RequestOption;)V
    .locals 4
    .parameter "url"
    .parameter "token"
    .parameter "option"

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, request:Lio/rong/imlib/filetransfer/Request;
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->configuration:Lio/rong/imlib/filetransfer/Configuration;

    iget-object v2, v2, Lio/rong/imlib/filetransfer/Configuration;->serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    sget-object v3, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    if-ne v2, v3, :cond_0

    .line 25
    new-instance v1, Lio/rong/imlib/filetransfer/QiniuRequest;

    .end local v1           #request:Lio/rong/imlib/filetransfer/Request;
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->configuration:Lio/rong/imlib/filetransfer/Configuration;

    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getRequestCallBack()Lio/rong/imlib/filetransfer/RequestCallBack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/rong/imlib/filetransfer/QiniuRequest;-><init>(Lio/rong/imlib/filetransfer/Configuration;Lio/rong/imlib/filetransfer/RequestCallBack;)V

    .line 26
    .restart local v1       #request:Lio/rong/imlib/filetransfer/Request;
    iput-object p2, v1, Lio/rong/imlib/filetransfer/Request;->token:Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getMimeType()Lio/rong/imlib/filetransfer/FtConst$MimeType;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 28
    const-string v2, "POST"

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->method:Ljava/lang/String;

    .line 29
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getServerIp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->serverIp:Ljava/lang/String;

    .line 30
    iput-object p1, v1, Lio/rong/imlib/filetransfer/Request;->url:Ljava/lang/String;

    .line 31
    iput-object p1, v1, Lio/rong/imlib/filetransfer/Request;->tag:Ljava/lang/Object;

    .line 32
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->fileName:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lio/rong/imlib/filetransfer/RequestOption;->getRequestCallBack()Lio/rong/imlib/filetransfer/RequestCallBack;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/filetransfer/Request;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 35
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/filetransfer/FileTransferClient;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    invoke-static {v2, v1}, Lio/rong/imlib/filetransfer/Call;->create(Lio/rong/imlib/filetransfer/CallDispatcher;Lio/rong/imlib/filetransfer/Request;)Lio/rong/imlib/filetransfer/Call;

    move-result-object v0

    .line 36
    .local v0, call:Lio/rong/imlib/filetransfer/Call;
    invoke-virtual {v0}, Lio/rong/imlib/filetransfer/Call;->enqueue()V

    .line 37
    return-void
.end method
