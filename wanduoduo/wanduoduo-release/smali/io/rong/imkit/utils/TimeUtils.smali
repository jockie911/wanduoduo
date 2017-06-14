.class public Lio/rong/imkit/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatData(J)Ljava/lang/String;
    .locals 10
    .parameter "timeMillis"

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 19
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_0

    .line 20
    const-string v3, ""

    .line 38
    :goto_0
    return-object v3

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 24
    .local v3, result:Ljava/lang/String;
    div-long v6, p0, v8

    long-to-int v4, v6

    .line 25
    .local v4, targetDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 27
    .local v2, nowDay:I
    if-ne v4, v2, :cond_1

    .line 28
    const-string v5, "HH:mm"

    invoke-static {p0, p1, v5}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 29
    :cond_1
    add-int/lit8 v5, v4, 0x1

    if-ne v5, v2, :cond_2

    .line 30
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_yesterday_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, formatString:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "HH:mm"

    invoke-static {p0, p1, v7}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #formatString:Ljava/lang/String;
    :cond_2
    const-string v5, "yyyy-MM-dd"

    invoke-static {p0, p1, v5}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 10
    .parameter "timeMillis"

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 45
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_0

    .line 46
    const-string v3, ""

    .line 64
    :goto_0
    return-object v3

    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 50
    .local v3, result:Ljava/lang/String;
    div-long v6, p0, v8

    long-to-int v4, v6

    .line 51
    .local v4, targetDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 53
    .local v2, nowDay:I
    if-ne v4, v2, :cond_1

    .line 54
    const-string v5, "HH:mm"

    invoke-static {p0, p1, v5}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v5, v4, 0x1

    if-ne v5, v2, :cond_2

    .line 56
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_yesterday_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, formatString:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "HH:mm"

    invoke-static {p0, p1, v7}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    goto :goto_0

    .line 60
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #formatString:Ljava/lang/String;
    :cond_2
    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {p0, p1, v5}, Lio/rong/imkit/utils/TimeUtils;->fromatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static fromatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "timeMillis"
    .parameter "fromat"

    .prologue
    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
