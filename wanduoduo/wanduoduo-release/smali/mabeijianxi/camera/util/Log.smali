.class public Lmabeijianxi/camera/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCamera"

.field private static gIsLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 23
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "VCamera"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 17
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 41
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 86
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "VCamera"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 80
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 103
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 109
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "VCamera"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    return-void
.end method

.method public static getIsLog()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 47
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 64
    sget-boolean v0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static setLog(Z)V
    .locals 0
    .parameter "isLog"

    .prologue
    .line 9
    sput-boolean p0, Lmabeijianxi/camera/util/Log;->gIsLog:Z

    .line 10
    return-void
.end method
