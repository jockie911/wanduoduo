.class public Lio/rong/imlib/filetransfer/RequestOption;
.super Ljava/lang/Object;
.source "RequestOption.java"


# instance fields
.field private end:I

.field private fileName:Ljava/lang/String;

.field private mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

.field private requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

.field private serverIp:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>(IILio/rong/imlib/filetransfer/FtConst$MimeType;Ljava/lang/String;Lio/rong/imlib/filetransfer/RequestCallBack;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "mimeType"
    .parameter "serverIp"
    .parameter "requestCallBack"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lio/rong/imlib/filetransfer/RequestOption;->start:I

    .line 34
    iput p2, p0, Lio/rong/imlib/filetransfer/RequestOption;->end:I

    .line 35
    iput-object p3, p0, Lio/rong/imlib/filetransfer/RequestOption;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 36
    iput-object p4, p0, Lio/rong/imlib/filetransfer/RequestOption;->serverIp:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lio/rong/imlib/filetransfer/RequestOption;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/rong/imlib/filetransfer/FtConst$MimeType;Lio/rong/imlib/filetransfer/RequestCallBack;)V
    .locals 0
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "requestCallBack"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/rong/imlib/filetransfer/RequestOption;->fileName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/rong/imlib/filetransfer/RequestOption;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 22
    iput-object p3, p0, Lio/rong/imlib/filetransfer/RequestOption;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/rong/imlib/filetransfer/FtConst$MimeType;Ljava/lang/String;Lio/rong/imlib/filetransfer/RequestCallBack;)V
    .locals 0
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "serverIp"
    .parameter "requestCallBack"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/rong/imlib/filetransfer/RequestOption;->fileName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lio/rong/imlib/filetransfer/RequestOption;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 28
    iput-object p3, p0, Lio/rong/imlib/filetransfer/RequestOption;->serverIp:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lio/rong/imlib/filetransfer/RequestOption;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    .line 30
    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->end:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Lio/rong/imlib/filetransfer/FtConst$MimeType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    return-object v0
.end method

.method public getRequestCallBack()Lio/rong/imlib/filetransfer/RequestCallBack;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->requestCallBack:Lio/rong/imlib/filetransfer/RequestCallBack;

    return-object v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->serverIp:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lio/rong/imlib/filetransfer/RequestOption;->start:I

    return v0
.end method
