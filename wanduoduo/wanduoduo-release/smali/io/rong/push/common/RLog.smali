.class public Lio/rong/push/common/RLog;
.super Ljava/lang/Object;
.source "RLog.java"


# static fields
.field static final DEBUG:Z = true

.field private static FILE_NAME:Ljava/lang/String;

.field private static IS_WRITE_TO_FILE:Ljava/lang/Boolean;

.field private static LOG_FILE_SAVE_DAYS:I

.field private static LOG_PATH:Ljava/lang/String;

.field private static RongLog:Ljava/lang/String;

.field private static fileNameFormat:Ljava/text/SimpleDateFormat;

.field private static logFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    const-string v0, "RongLog-Push"

    sput-object v0, Lio/rong/push/common/RLog;->RongLog:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/rong/push/common/RLog;->IS_WRITE_TO_FILE:Ljava/lang/Boolean;

    .line 22
    const-string v0, "/sdcard/"

    sput-object v0, Lio/rong/push/common/RLog;->LOG_PATH:Ljava/lang/String;

    .line 23
    sput v1, Lio/rong/push/common/RLog;->LOG_FILE_SAVE_DAYS:I

    .line 24
    const-string v0, "PushLog.txt"

    sput-object v0, Lio/rong/push/common/RLog;->FILE_NAME:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/rong/push/common/RLog;->logFormat:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/rong/push/common/RLog;->fileNameFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 38
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lio/rong/push/common/RLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 39
    return-void
.end method

.method public static delFile()V
    .locals 5

    .prologue
    .line 94
    sget-object v2, Lio/rong/push/common/RLog;->fileNameFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lio/rong/push/common/RLog;->getDateBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, needDelFiel:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lio/rong/push/common/RLog;->LOG_PATH:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/rong/push/common/RLog;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 99
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 42
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lio/rong/push/common/RLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 43
    return-void
.end method

.method private static getDateBefore()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 105
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 106
    .local v1, nowtime:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, now:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sget v3, Lio/rong/push/common/RLog;->LOG_FILE_SAVE_DAYS:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 30
    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lio/rong/push/common/RLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 31
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "level"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/rong/push/common/RLog;->RongLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    const/16 v0, 0x65

    if-ne v0, p2, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x77

    if-ne v0, p2, :cond_1

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_1
    const/16 v0, 0x64

    if-ne v0, p2, :cond_2

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    const/16 v0, 0x69

    if-ne v0, p2, :cond_3

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendLog(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 116
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 117
    .local v4, nowtime:Ljava/util/Date;
    sget-object v6, Lio/rong/push/common/RLog;->fileNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, fileDate:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Lio/rong/push/common/RLog;->LOG_PATH:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lio/rong/push/common/RLog;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 126
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileDate:Ljava/lang/String;
    .end local v4           #nowtime:Ljava/util/Date;
    :goto_0
    if-eqz v5, :cond_0

    .line 127
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "message/rfc822"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v6, "android.intent.extra.EMAIL"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "RongCloud log"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 34
    const/16 v0, 0x76

    invoke-static {p0, p1, v0}, Lio/rong/push/common/RLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 35
    return-void
.end method

.method private static writeLogtoFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "mylogtype"
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 70
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 71
    .local v6, nowtime:Ljava/util/Date;
    sget-object v7, Lio/rong/push/common/RLog;->fileNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, fileDate:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/rong/push/common/RLog;->logFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, needWriteMessage:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v7, Lio/rong/push/common/RLog;->LOG_PATH:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lio/rong/push/common/RLog;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v2, file:Ljava/io/File;
    invoke-static {}, Lio/rong/push/common/RLog;->delFile()V

    .line 78
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v4, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 79
    .local v4, filerWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    .local v0, bufWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 82
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 83
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .end local v4           #filerWriter:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
