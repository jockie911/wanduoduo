.class public final Lio/rong/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Lio/rong/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lio/rong/photoview/log/LoggerDefault;

    invoke-direct {v0}, Lio/rong/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Lio/rong/photoview/log/LogManager;->logger:Lio/rong/photoview/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lio/rong/photoview/log/Logger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lio/rong/photoview/log/LogManager;->logger:Lio/rong/photoview/log/Logger;

    return-object v0
.end method

.method public static setLogger(Lio/rong/photoview/log/Logger;)V
    .locals 0
    .parameter "newLogger"

    .prologue
    .line 29
    sput-object p0, Lio/rong/photoview/log/LogManager;->logger:Lio/rong/photoview/log/Logger;

    .line 30
    return-void
.end method
