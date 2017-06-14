.class public Lu/aly/at;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lu/aly/ak;


# static fields
.field private static final h:Ljava/lang/String; = "successful_request"

.field private static final i:Ljava/lang/String; = "failed_requests "

.field private static final j:Ljava/lang/String; = "last_request_spent_ms"

.field private static final k:Ljava/lang/String; = "last_request_time"

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "last_req"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x36ee80

    iput v0, p0, Lu/aly/at;->d:I

    .line 26
    iput-wide v2, p0, Lu/aly/at;->f:J

    .line 27
    iput-wide v2, p0, Lu/aly/at;->g:J

    .line 39
    invoke-direct {p0, p1}, Lu/aly/at;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/at;->n:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/at;->a:I

    .line 47
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/at;->b:I

    .line 49
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/at;->e:I

    .line 50
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/at;->c:J

    .line 52
    const-string v1, "last_req"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/at;->f:J

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Lu/aly/aw;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-static {p0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "failed_requests "

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lu/aly/aw$n;->Q:J

    .line 117
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "successful_request"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lu/aly/aw$n;->P:J

    .line 118
    iget-object v1, p1, Lu/aly/aw;->a:Lu/aly/aw$n;

    const-string v2, "last_request_spent_ms"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lu/aly/aw$n;->R:J

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lu/aly/at;->i()V

    .line 124
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lu/aly/at;->j()V

    .line 129
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lu/aly/at;->g()V

    .line 134
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lu/aly/at;->h()V

    .line 139
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    const v0, 0x36ee80

    .line 56
    iget v1, p0, Lu/aly/at;->e:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lu/aly/at;->e:I

    goto :goto_0
.end method

.method public f()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-wide v4, p0, Lu/aly/at;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    iget-object v3, p0, Lu/aly/at;->n:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/h;->i()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 63
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v3, v2

    .line 61
    goto :goto_1

    :cond_2
    move v1, v2

    .line 63
    goto :goto_2
.end method

.method public g()V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lu/aly/at;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/at;->a:I

    .line 69
    iget-wide v0, p0, Lu/aly/at;->f:J

    iput-wide v0, p0, Lu/aly/at;->c:J

    .line 70
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lu/aly/at;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/at;->b:I

    .line 74
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/at;->f:J

    .line 78
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/at;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/at;->e:I

    .line 82
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lu/aly/at;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lu/aly/at;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lu/aly/at;->b:I

    .line 88
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/at;->e:I

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/at;->c:J

    .line 90
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lu/aly/at;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public l()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    iget-object v0, p0, Lu/aly/at;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lu/aly/at;->n:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/aq;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_activate_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/at;->g:J

    .line 102
    iget-wide v2, p0, Lu/aly/at;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/at;->g:J

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    iget-wide v2, p0, Lu/aly/at;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :cond_0
    iget-wide v0, p0, Lu/aly/at;->g:J

    return-wide v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lu/aly/at;->f:J

    return-wide v0
.end method
