.class public Lio/rong/common/RFLog;
.super Ljava/lang/Object;
.source "RFLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/common/RFLog$1;,
        Lio/rong/common/RFLog$UploadFile;
    }
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x100000

.field private static LOG_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RFLog"

.field private static ZIP_FILE:Ljava/lang/String;

.field private static mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lio/rong/common/RFLog;->LOG_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lio/rong/common/RFLog;->ZIP_FILE:Ljava/lang/String;

    return-object v0
.end method

.method private static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "dir"

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 154
    .local v1, sdCardExist:Z
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 159
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 167
    :goto_0
    return-object v3

    .line 163
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, tarDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 83
    const-string v5, "RFLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v5, "Log2File"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 85
    .local v4, sp:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "LOG_MODE"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, pre:I
    if-eq p1, v1, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    .local v2, now:J
    const-string v5, "LOG_START"

    invoke-interface {v0, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v5, "LOG_MODE"

    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pre:I
    .end local v2           #now:J
    :cond_0
    return-void
.end method

.method public static uploadIfNeed(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ronglog"

    invoke-static {p0, v10}, Lio/rong/common/RFLog;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/RongLog.log"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lio/rong/common/RFLog;->LOG_FILE:Ljava/lang/String;

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ronglog"

    invoke-static {p0, v10}, Lio/rong/common/RFLog;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/RongLog.zip"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lio/rong/common/RFLog;->ZIP_FILE:Ljava/lang/String;

    .line 45
    const-string v7, "Log2File"

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 46
    .local v6, sp:Landroid/content/SharedPreferences;
    if-nez v6, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v7, "LOG_MODE"

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/rong/common/RFLog;->mode:I

    .line 51
    const-string v7, "LOG_START"

    const-wide/16 v10, 0x0

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 52
    .local v8, start:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 53
    .local v4, now:J
    sub-long v10, v4, v8

    const-wide/32 v12, 0xf731400

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 54
    const-string v7, "RFLog"

    const-string v10, "Stop write log"

    invoke-static {v7, v10}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v7, 0x0

    sput v7, Lio/rong/common/RFLog;->mode:I

    .line 56
    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lio/rong/imlib/NativeClient;->setLogStatus(Z)V

    goto :goto_0

    .line 60
    :cond_2
    sget v7, Lio/rong/common/RFLog;->mode:I

    if-lez v7, :cond_4

    .line 61
    const-string v7, "RFLog"

    const-string v10, "Start write log"

    invoke-static {v7, v10}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lio/rong/imlib/NativeClient;->setLogStatus(Z)V

    .line 63
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "LOG_TIME"

    const-wide/16 v10, 0x0

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 65
    .local v2, last:J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-nez v7, :cond_3

    .line 66
    const-string v7, "LOG_TIME"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 69
    :cond_3
    sub-long v10, v4, v2

    const-wide/32 v12, 0x6ddd00

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 70
    const-string v7, "LOG_TIME"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    new-instance v1, Ljava/io/File;

    sget-object v7, Lio/rong/common/RFLog;->LOG_FILE:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    new-instance v7, Lio/rong/common/RFLog$UploadFile;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lio/rong/common/RFLog$UploadFile;-><init>(Lio/rong/common/RFLog$1;)V

    invoke-virtual {v7}, Lio/rong/common/RFLog$UploadFile;->start()V

    goto/16 :goto_0

    .line 77
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #last:J
    :cond_4
    const-string v7, "RFLog"

    const-string v10, "Stop write log"

    invoke-static {v7, v10}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lio/rong/imlib/NativeClient;->setLogStatus(Z)V

    goto/16 :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 118
    sget v4, Lio/rong/common/RFLog;->mode:I

    if-nez v4, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 124
    .local v1, expStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 126
    .local v2, pw:Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    .end local v2           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-static {p0, v1}, Lio/rong/common/RFLog;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 98
    sget v6, Lio/rong/common/RFLog;->mode:I

    if-nez v6, :cond_0

    .line 115
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lio/rong/common/RFLog;->LOG_FILE:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, file:Ljava/io/File;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm:ss.SS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, datetime:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, message:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 107
    .local v4, filerWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    .local v0, bufWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 111
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .end local v4           #filerWriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 113
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "level"

    .prologue
    .line 138
    sget v0, Lio/rong/common/RFLog;->mode:I

    if-eqz v0, :cond_0

    sget v0, Lio/rong/common/RFLog;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    if-ge p2, v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {p0, p1}, Lio/rong/common/RFLog;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
