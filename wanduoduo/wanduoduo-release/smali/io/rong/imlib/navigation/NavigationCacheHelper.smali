.class public Lio/rong/imlib/navigation/NavigationCacheHelper;
.super Ljava/lang/Object;
.source "NavigationCacheHelper.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "appKey"

.field private static final CACHED_TIME:Ljava/lang/String; = "cached_time"

.field private static final CMP_SERVER:Ljava/lang/String; = "server"

.field private static final CODE:Ljava/lang/String; = "code"

.field private static final LOCATION_CONFIG:Ljava/lang/String; = "location"

.field private static final LOG_MONITOR:Ljava/lang/String; = "monitor"

.field private static final MEDIA_SERVER:Ljava/lang/String; = "uploadServer"

.field private static final NAVIGATION_PREFERENCE:Ljava/lang/String; = "RongNavigation"

.field private static final NAVI_TAG:Ljava/lang/String; = "navi"

.field private static final OPEN_MP:Ljava/lang/String; = "openMp"

.field private static final TAG:Ljava/lang/String; = "NavigationCacheHelper"

.field private static final TIME_OUT:J = 0x6ddd00L

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final VOIP_CALL_INFO:Ljava/lang/String; = "voipCallInfo"

.field private static final VOIP_SERVER:Ljava/lang/String; = "voipServer"

.field private static sCacheTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lio/rong/imlib/navigation/NavigationCacheHelper;->sCacheTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "appKey"
    .parameter "token"

    .prologue
    .line 143
    const-string v4, "RongNavigation"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    int-to-long v6, v6

    sub-long v2, v4, v6

    .line 146
    .local v2, gmtTimestamp:J
    const-string v4, "cached_time"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string v4, "appKey"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v4, "token"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 247
    .local v1, start:I
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, end:I
    if-ge v1, v0, :cond_0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v2, 0x0

    .line 251
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static decode2File(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 12
    .parameter "context"
    .parameter "data"
    .parameter "httpCode"

    .prologue
    .line 166
    const/16 v0, 0x7538

    .line 167
    .local v0, DATA_ERROR:I
    const/16 v2, 0x791c

    .line 168
    .local v2, TOKEN_ERROR:I
    const/16 v1, 0x7537

    .line 170
    .local v1, RESOURCE_ERROR:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 171
    const-string v9, "NavigationCacheHelper"

    const-string v10, "decode2File : navi data is empty."

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v9, 0x7538

    .line 242
    :goto_0
    return v9

    .line 175
    :cond_0
    const-string v9, "code"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 176
    const-string v9, "NavigationCacheHelper"

    const-string v10, "decode2File : code is empty."

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v9, 0x7538

    goto :goto_0

    .line 180
    :cond_1
    const-string v9, "code"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 181
    const-string v9, "RongNavigation"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 182
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 184
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "<code>"

    const-string v10, "</code>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    const-string v9, "NavigationCacheHelper"

    const-string v10, "decode2File : code is empty."

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v9, 0x7538

    goto :goto_0

    .line 190
    :cond_2
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, code:I
    const/16 v9, 0xc8

    if-eq v3, v9, :cond_6

    .line 192
    const-string v9, "NavigationCacheHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decode2File : code & httpCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/16 v9, 0x191

    if-ne v3, v9, :cond_3

    const/16 v9, 0x193

    if-eq p2, v9, :cond_4

    :cond_3
    const/16 v9, 0x193

    if-ne v3, v9, :cond_5

    const/16 v9, 0x191

    if-ne p2, v9, :cond_5

    .line 195
    :cond_4
    const/16 v9, 0x791c

    goto :goto_0

    .line 197
    :cond_5
    const/16 v9, 0x7537

    goto :goto_0

    .line 199
    .end local v3           #code:I
    :catch_0
    move-exception v4

    .line 200
    .local v4, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 201
    const-string v9, "NavigationCacheHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decode2File : NumberFormatException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v9, 0x7537

    goto/16 :goto_0

    .line 205
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #code:I
    :cond_6
    const-string v9, "<server>"

    const-string v10, "</server>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 207
    const-string v9, "NavigationCacheHelper"

    const-string v10, "decode2File : cmp is invalid"

    invoke-static {v9, v10}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v9, 0x7538

    goto/16 :goto_0

    .line 210
    :cond_7
    const-string v9, "server"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v9, "<uploadServer>"

    const-string v10, "</uploadServer>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 214
    const-string v9, "uploadServer"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    :cond_8
    const-string v9, "<location>"

    const-string v10, "</location>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 219
    const-string v9, "location"

    const-string v10, "&quot;"

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    :cond_9
    const-string v9, "<voipCallInfo>"

    const-string v10, "</voipCallInfo>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 224
    const-string v9, "voipCallInfo"

    const-string v10, "&quot;"

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    :cond_a
    const-string v9, "<openMp>"

    const-string v10, "</openMp>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    const/4 v6, 0x1

    .line 229
    .local v6, opened:Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 230
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v6, 0x1

    .line 232
    :cond_b
    :goto_1
    const-string v9, "openMp"

    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v9, "<monitor>"

    const-string v10, "</monitor>"

    invoke-static {p1, v9, v10}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 236
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p0, v9}, Lio/rong/common/RFLog;->setMode(Landroid/content/Context;I)V

    .line 239
    :cond_c
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 230
    :cond_d
    const/4 v6, 0x0

    goto :goto_1

    .line 242
    .end local v3           #code:I
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #opened:Z
    .end local v7           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v8           #value:Ljava/lang/String;
    :cond_e
    const/16 v9, 0x7538

    goto/16 :goto_0
.end method

.method public static decode2cmp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "data"
    .parameter "httpCode"

    .prologue
    const/16 v9, 0x193

    const/16 v8, 0x191

    const/4 v4, 0x0

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    const-string v5, "NavigationCacheHelper"

    const-string v6, "decode2cmp : navi data invalid"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 298
    :cond_0
    :goto_0
    return-object v3

    .line 260
    :cond_1
    const-string v5, "server"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "code"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 261
    :cond_2
    const-string v5, "NavigationCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode2cmp : data - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v5, "NavigationCacheHelper"

    const-string v6, "decode2cmp : cmp or code invalid"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    const-string v5, "code"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 267
    const-string v0, ""

    .line 268
    .local v0, cmp:Ljava/lang/String;
    const-string v5, "<code>"

    const-string v6, "</code>"

    invoke-static {p1, v5, v6}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    const-string v5, "NavigationCacheHelper"

    const-string v6, "decode2cmp : code invalid"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 271
    goto :goto_0

    .line 275
    :cond_4
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 276
    .local v1, code:I
    const/16 v5, 0xc8

    if-eq v1, v5, :cond_8

    .line 277
    const-string v5, "NavigationCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode2cmp : code & httpCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    if-ne v1, v8, :cond_5

    if-eq p2, v9, :cond_6

    :cond_5
    if-ne v1, v9, :cond_7

    if-ne p2, v8, :cond_7

    :cond_6
    move-object v3, v4

    .line 280
    goto/16 :goto_0

    :cond_7
    move-object v3, v4

    .line 282
    goto/16 :goto_0

    .line 284
    .end local v1           #code:I
    :catch_0
    move-exception v2

    .line 285
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 286
    const-string v5, "NavigationCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode2cmp : NumberFormatException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 287
    goto/16 :goto_0

    .line 290
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_8
    const-string v5, "<server>"

    const-string v6, "</server>"

    invoke-static {p1, v5, v6}, Lio/rong/imlib/navigation/NavigationCacheHelper;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    const-string v5, "NavigationCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode2cmp : data - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, "NavigationCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode2cmp : cmp invalid - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 294
    goto/16 :goto_0

    .end local v0           #cmp:Ljava/lang/String;
    .end local v1           #code:I
    .end local v3           #value:Ljava/lang/String;
    :cond_9
    move-object v3, v4

    .line 298
    goto/16 :goto_0
.end method

.method public static getCMPServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCachedTime()J
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Lio/rong/imlib/navigation/NavigationCacheHelper;->sCacheTime:J

    return-wide v0
.end method

.method public static getLocationConfig(Landroid/content/Context;)Lio/rong/imlib/navigation/LocationConfig;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 114
    const-string v9, "RongNavigation"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 115
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v9, "location"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 118
    :try_start_0
    new-instance v1, Lio/rong/imlib/navigation/LocationConfig;

    invoke-direct {v1}, Lio/rong/imlib/navigation/LocationConfig;-><init>()V

    .line 119
    .local v1, config:Lio/rong/imlib/navigation/LocationConfig;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v9, "configure"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v1, v9}, Lio/rong/imlib/navigation/LocationConfig;->setConfigure(Z)V

    .line 122
    const-string v9, "conversationTypes"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 123
    const-string v9, "conversationTypes"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 124
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v6, v9, [I

    .line 125
    .local v6, types:[I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 126
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v6, v3

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1, v6}, Lio/rong/imlib/navigation/LocationConfig;->setConversationTypes([I)V

    .line 131
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #j:I
    .end local v6           #types:[I
    :cond_1
    const-string v9, "maxParticipant"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lio/rong/imlib/navigation/LocationConfig;->setMaxParticipant(I)V

    .line 132
    const-string v9, "distanceFilter"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lio/rong/imlib/navigation/LocationConfig;->setDistanceFilter(I)V

    .line 133
    const-string v9, "refreshInterval"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lio/rong/imlib/navigation/LocationConfig;->setRefreshInterval(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #config:Lio/rong/imlib/navigation/LocationConfig;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    move-object v1, v8

    .line 139
    goto :goto_1
.end method

.method public static getMediaServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 109
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "uploadServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "voipServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoIPCallInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "voipCallInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isCacheTimeout(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 71
    const-string v6, "RongNavigation"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 72
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "cached_time"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 73
    .local v0, cachedTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    int-to-long v8, v8

    sub-long v2, v6, v8

    .line 74
    .local v2, currentTime:J
    sub-long v6, v2, v0

    const-wide/32 v8, 0x6ddd00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public static isCacheValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "appKey"
    .parameter "token"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 49
    const-string v5, "RongNavigation"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "appKey"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, cachedKey:Ljava/lang/String;
    const-string v5, "token"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, cachedToken:Ljava/lang/String;
    const-string v5, "server"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, cachedCMP:Ljava/lang/String;
    const-string v5, "cached_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lio/rong/imlib/navigation/NavigationCacheHelper;->sCacheTime:J

    .line 54
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public static isMPOpened(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    const-string v1, "RongNavigation"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "openMp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isValidCmp(Ljava/lang/String;)Z
    .locals 7
    .parameter "cmp"

    .prologue
    .line 154
    :try_start_0
    const-string v3, "(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])"

    .line 155
    .local v3, pattern:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 156
    .local v2, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 157
    .local v1, mat:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 161
    .end local v1           #mat:Ljava/util/regex/Matcher;
    .end local v2           #pat:Ljava/util/regex/Pattern;
    .end local v3           #pattern:Ljava/lang/String;
    :goto_0
    return v4

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v4, "NavigationCacheHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidCmp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 161
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static updateTime(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 92
    const-string v2, "RongNavigation"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cached_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method
