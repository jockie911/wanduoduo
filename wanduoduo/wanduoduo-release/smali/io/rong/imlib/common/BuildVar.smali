.class public Lio/rong/imlib/common/BuildVar;
.super Ljava/lang/Object;
.source "BuildVar.java"


# static fields
.field public static SDK_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "2.7.0"

    sput-object v0, Lio/rong/imlib/common/BuildVar;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
