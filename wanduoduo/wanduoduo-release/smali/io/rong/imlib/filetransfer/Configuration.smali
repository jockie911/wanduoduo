.class public Lio/rong/imlib/filetransfer/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/filetransfer/Configuration$1;,
        Lio/rong/imlib/filetransfer/Configuration$Builder;
    }
.end annotation


# instance fields
.field public final connectTimeout:I

.field public final readTimeout:I

.field public final serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;


# direct methods
.method private constructor <init>(Lio/rong/imlib/filetransfer/Configuration$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Lio/rong/imlib/filetransfer/Configuration$Builder;->connectTimeout:I

    iput v0, p0, Lio/rong/imlib/filetransfer/Configuration;->connectTimeout:I

    .line 14
    iget v0, p1, Lio/rong/imlib/filetransfer/Configuration$Builder;->readTimeout:I

    iput v0, p0, Lio/rong/imlib/filetransfer/Configuration;->readTimeout:I

    .line 15
    iget-object v0, p1, Lio/rong/imlib/filetransfer/Configuration$Builder;->serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    iput-object v0, p0, Lio/rong/imlib/filetransfer/Configuration;->serviceType:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/filetransfer/Configuration$Builder;Lio/rong/imlib/filetransfer/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lio/rong/imlib/filetransfer/Configuration;-><init>(Lio/rong/imlib/filetransfer/Configuration$Builder;)V

    return-void
.end method
