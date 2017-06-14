.class public final enum Lio/rong/imlib/filetransfer/FtConst$ServiceType;
.super Ljava/lang/Enum;
.source "FtConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/filetransfer/FtConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/filetransfer/FtConst$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/filetransfer/FtConst$ServiceType;

.field public static final enum QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    const-string v1, "QI_NIU"

    invoke-direct {v0, v1, v2}, Lio/rong/imlib/filetransfer/FtConst$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    sget-object v1, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    aput-object v1, v0, v2

    sput-object v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->$VALUES:[Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/filetransfer/FtConst$ServiceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/filetransfer/FtConst$ServiceType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->$VALUES:[Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    invoke-virtual {v0}, [Lio/rong/imlib/filetransfer/FtConst$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    return-object v0
.end method
