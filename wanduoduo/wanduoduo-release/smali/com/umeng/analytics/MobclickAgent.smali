.class public Lcom/umeng/analytics/MobclickAgent;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;,
        Lcom/umeng/analytics/MobclickAgent$EScenarioType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "input map is null"

.field private static final b:Lcom/umeng/analytics/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/umeng/analytics/d;

    invoke-direct {v0}, Lcom/umeng/analytics/d;-><init>()V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEncrypt(Z)V
    .locals 1
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->e(Z)V

    .line 63
    return-void
.end method

.method public static getAgent()Lcom/umeng/analytics/d;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    return-object v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 256
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 257
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "label is null or empty"

    invoke-static {v0}, Lu/aly/bm;->c(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    if-nez p2, :cond_0

    .line 290
    const-string v0, "input map is null"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method public static onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 309
    .line 310
    if-nez p2, :cond_0

    .line 311
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 315
    :goto_0
    const-string v0, "__ct__"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    .line 317
    return-void

    .line 313
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 368
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->d(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "pageName is null or empty"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "pageName is null or empty"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public static onProfileSignIn(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 380
    const-string v0, "_adhoc"

    invoke-static {v0, p0}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public static onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "uid is null"

    invoke-static {v0}, Lu/aly/bm;->d(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 399
    const-string v0, "uid is Illegal(length bigger then  legitimate length)."

    invoke-static {v0}, Lu/aly/bm;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-string v1, "_adhoc"

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 406
    const-string v0, "provider is Illegal(length bigger then  legitimate length)."

    invoke-static {v0}, Lu/aly/bm;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onProfileSignOff()V
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->b()V

    .line 420
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    if-nez p0, :cond_0

    .line 194
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const-string v0, "context is null in onShareEvent"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v0, "3"

    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 338
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    if-nez p0, :cond_0

    .line 351
    const-string v0, "context is null in onShareEvent"

    invoke-static {v0}, Lu/aly/bm;->e(Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "3"

    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 355
    invoke-static {p0, p1}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 1
    .parameter

    .prologue
    .line 138
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Z)V

    .line 139
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 214
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 229
    return-void
.end method

.method public static setCatchUncaughtExceptions(Z)V
    .locals 1
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Z)V

    .line 70
    return-void
.end method

.method public static setCheckDevice(Z)V
    .locals 1
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->c(Z)V

    .line 120
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->d(Z)V

    .line 177
    return-void
.end method

.method public static setLatencyWindow(J)V
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(J)V

    .line 54
    return-void
.end method

.method public static setLocation(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/d;->a(DD)V

    .line 50
    return-void
.end method

.method public static setOpenGLContext(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 130
    return-void
.end method

.method public static setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 94
    return-void
.end method

.method public static setSecret(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->b(J)V

    .line 107
    return-void
.end method

.method public static startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 40
    :cond_0
    return-void
.end method
