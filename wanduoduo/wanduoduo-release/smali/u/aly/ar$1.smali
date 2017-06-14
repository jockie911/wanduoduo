.class Lu/aly/ar$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Lcom/umeng/analytics/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/ar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ar;


# direct methods
.method constructor <init>(Lu/aly/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lu/aly/ar$1;->a:Lu/aly/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public b(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-static {v2}, Lu/aly/bl;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 120
    :try_start_2
    invoke-static {v2}, Lu/aly/bl;->c(Ljava/io/InputStream;)V

    .line 124
    iget-object v2, p0, Lu/aly/ar$1;->a:Lu/aly/ar;

    invoke-static {v2}, Lu/aly/ar;->a(Lu/aly/ar;)Lu/aly/am;

    move-result-object v2

    invoke-virtual {v2, v3}, Lu/aly/am;->a([B)[B

    move-result-object v2

    .line 125
    if-nez v2, :cond_1

    move v2, v0

    .line 131
    :goto_0
    iget-object v3, p0, Lu/aly/ar$1;->a:Lu/aly/ar;

    invoke-static {v3}, Lu/aly/ar;->b(Lu/aly/ar;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    :cond_0
    :goto_1
    return v0

    .line 120
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lu/aly/bl;->c(Ljava/io/InputStream;)V

    throw v0

    .line 140
    :catch_0
    move-exception v0

    move v0, v1

    .line 144
    goto :goto_1

    .line 128
    :cond_1
    iget-object v3, p0, Lu/aly/ar$1;->a:Lu/aly/ar;

    invoke-static {v3, v2}, Lu/aly/ar;->a(Lu/aly/ar;[B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_0

    .line 135
    :cond_2
    if-ne v2, v0, :cond_0

    move v0, v1

    .line 136
    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public c(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lu/aly/ar$1;->a:Lu/aly/ar;

    invoke-static {v0}, Lu/aly/ar;->c(Lu/aly/ar;)Lu/aly/at;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/at;->k()V

    .line 150
    return-void
.end method
