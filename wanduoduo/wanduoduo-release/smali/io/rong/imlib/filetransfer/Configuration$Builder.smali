.class public Lio/rong/imlib/filetransfer/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/filetransfer/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public connectTimeout:I

.field public readTimeout:I

.field public serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public build()Lio/rong/imlib/filetransfer/Configuration;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lio/rong/imlib/filetransfer/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/rong/imlib/filetransfer/Configuration;-><init>(Lio/rong/imlib/filetransfer/Configuration$Builder;Lio/rong/imlib/filetransfer/Configuration$1;)V

    return-object v0
.end method

.method public connectTimeout(I)Lio/rong/imlib/filetransfer/Configuration$Builder;
    .locals 0
    .parameter "connectTimeout"

    .prologue
    .line 33
    iput p1, p0, Lio/rong/imlib/filetransfer/Configuration$Builder;->connectTimeout:I

    .line 34
    return-object p0
.end method

.method public readTimeout(I)Lio/rong/imlib/filetransfer/Configuration$Builder;
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 38
    iput p1, p0, Lio/rong/imlib/filetransfer/Configuration$Builder;->readTimeout:I

    .line 39
    return-object p0
.end method

.method public serverType(Lio/rong/imlib/filetransfer/FtConst$ServiceType;)Lio/rong/imlib/filetransfer/Configuration$Builder;
    .locals 0
    .parameter "serviceType"

    .prologue
    .line 28
    iput-object p1, p0, Lio/rong/imlib/filetransfer/Configuration$Builder;->serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    .line 29
    return-object p0
.end method
