.class public Lio/rong/imkit/utils/RongDateUtils;
.super Ljava/lang/Object;
.source "RongDateUtils.java"


# static fields
.field private static final OTHER:I = 0x7de

.field private static final TODAY:I = 0x6

.field private static final YESTERDAY:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "fromat"

    .prologue
    .line 255
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getConversationFormatDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "dateMillis"
    .parameter "context"

    .prologue
    .line 222
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, p2}, Lio/rong/imkit/utils/RongDateUtils;->getDateTimeString(JZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, formatDate:Ljava/lang/String;
    return-object v0
.end method

.method public static getConversationListFormatDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "dateMillis"
    .parameter "context"

    .prologue
    .line 217
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Lio/rong/imkit/utils/RongDateUtils;->getDateTimeString(JZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, formatDate:Ljava/lang/String;
    return-object v0
.end method

.method private static getDateTimeString(JZLandroid/content/Context;)Ljava/lang/String;
    .locals 22
    .parameter "dateMillis"
    .parameter "showTime"
    .parameter "context"

    .prologue
    .line 148
    const-wide/16 v18, 0x0

    cmp-long v18, p0, v18

    if-gtz v18, :cond_1

    .line 149
    const-string v7, ""

    .line 212
    :cond_0
    :goto_0
    return-object v7

    .line 152
    :cond_1
    const/4 v7, 0x0

    .line 154
    .local v7, formatDate:Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 155
    .local v6, date:Ljava/util/Date;
    invoke-static {v6}, Lio/rong/imkit/utils/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v11

    .line 156
    .local v11, type:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 157
    .local v12, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 158
    .local v4, calendarCur:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 159
    .local v5, calendardate:Ljava/util/Calendar;
    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 162
    .local v9, month:I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 163
    .local v16, year:I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 164
    .local v14, weekInMonth:I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 165
    .local v10, monthCur:I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 166
    .local v17, yearCur:I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 168
    .local v15, weekInMonthCur:I
    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 170
    :sswitch_0
    move-wide/from16 v0, p0

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imkit/utils/RongDateUtils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 171
    goto :goto_0

    .line 174
    :sswitch_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_yesterday_format:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, formatString:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 176
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-wide/from16 v0, p0

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imkit/utils/RongDateUtils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 178
    :cond_2
    move-object v7, v8

    .line 180
    goto/16 :goto_0

    .line 183
    .end local v8           #formatString:Ljava/lang/String;
    :sswitch_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 184
    if-ne v9, v10, :cond_3

    if-ne v14, v15, :cond_3

    .line 185
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lio/rong/imkit/utils/RongDateUtils;->getWeekDay(I)Ljava/lang/String;

    move-result-object v7

    .line 204
    :goto_1
    if-eqz p2, :cond_0

    .line 205
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-wide/from16 v0, p0

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imkit/utils/RongDateUtils;->getTimeString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 187
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "CN"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 188
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "M"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$string;->rc_month_format:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$string;->rc_day_format:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lio/rong/imkit/utils/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 191
    :cond_4
    const-string v18, "M/d"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lio/rong/imkit/utils/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 195
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "CN"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 196
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "yyyy"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$string;->rc_year_format:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "M"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$string;->rc_month_format:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$string;->rc_day_format:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lio/rong/imkit/utils/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 200
    :cond_6
    const-string v18, "M/d/yy"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lio/rong/imkit/utils/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xf -> :sswitch_1
        0x7de -> :sswitch_2
    .end sparse-switch
.end method

.method private static getTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "dateMillis"
    .parameter "context"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xa

    const/4 v10, 0x6

    .line 98
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gtz v7, :cond_0

    .line 99
    const-string v2, ""

    .line 144
    :goto_0
    return-object v2

    .line 102
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 103
    .local v1, date:Ljava/util/Date;
    const/4 v2, 0x0

    .line 104
    .local v2, formatTime:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lio/rong/imkit/utils/RongDateUtils;->isTime24Hour(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    const-string v7, "H:mm"

    invoke-static {v1, v7}, Lio/rong/imkit/utils/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, calendarTime:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 110
    .local v3, hour:I
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_6

    .line 111
    if-ge v3, v10, :cond_5

    .line 112
    if-nez v3, :cond_2

    .line 113
    const/16 v3, 0xc

    .line 115
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_daybreak_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_3
    :goto_1
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 131
    .local v4, minuteInt:I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, minuteStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, timeStr:Ljava/lang/String;
    if-ge v4, v11, :cond_4

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 116
    .end local v4           #minuteInt:I
    .end local v5           #minuteStr:Ljava/lang/String;
    .end local v6           #timeStr:Ljava/lang/String;
    :cond_5
    if-lt v3, v10, :cond_3

    if-ge v3, v12, :cond_3

    .line 117
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_morning_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 120
    :cond_6
    if-nez v3, :cond_7

    .line 121
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_noon_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    const/16 v3, 0xc

    goto/16 :goto_1

    .line 123
    :cond_7
    const/4 v7, 0x1

    if-lt v3, v7, :cond_8

    const/4 v7, 0x5

    if-gt v3, v7, :cond_8

    .line 124
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_afternoon_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 125
    :cond_8
    if-lt v3, v10, :cond_3

    const/16 v7, 0xb

    if-gt v3, v7, :cond_3

    .line 126
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_night_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 141
    .restart local v4       #minuteInt:I
    .restart local v5       #minuteStr:Ljava/lang/String;
    .restart local v6       #timeStr:Ljava/lang/String;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static getWeekDay(I)Ljava/lang/String;
    .locals 3
    .parameter "dayInWeek"

    .prologue
    .line 56
    const-string v0, ""

    .line 57
    .local v0, weekDay:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 82
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_sunsay_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_monday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_tuesday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_wednesday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    goto :goto_0

    .line 71
    :pswitch_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_thuresday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 74
    :pswitch_5
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_friday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 77
    :pswitch_6
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_saturday_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isShowChatTime(JJI)Z
    .locals 8
    .parameter "currentTime"
    .parameter "preTime"
    .parameter "interval"

    .prologue
    const/4 v2, 0x1

    .line 234
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lio/rong/imkit/utils/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v0

    .line 235
    .local v0, typeCurrent:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lio/rong/imkit/utils/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v1

    .line 237
    .local v1, typePre:I
    if-ne v0, v1, :cond_0

    .line 239
    sub-long v4, p0, p2

    mul-int/lit16 v3, p4, 0x3e8

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTime24Hour(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, timeFormat:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static judgeDate(Ljava/util/Date;)I
    .locals 11
    .parameter "date"

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 21
    .local v1, calendarToday:Ljava/util/Calendar;
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 22
    invoke-virtual {v1, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 23
    invoke-virtual {v1, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 24
    invoke-virtual {v1, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 27
    .local v3, calendarYesterday:Ljava/util/Calendar;
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 28
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 29
    invoke-virtual {v3, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 30
    invoke-virtual {v3, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 31
    invoke-virtual {v3, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 34
    .local v2, calendarTomorrow:Ljava/util/Calendar;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 35
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 36
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 37
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 38
    invoke-virtual {v2, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, calendarTarget:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const/16 v4, 0x7de

    .line 51
    :goto_0
    return v4

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const/16 v4, 0xf

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const/4 v4, 0x6

    goto :goto_0

    .line 51
    :cond_2
    const/16 v4, 0x7de

    goto :goto_0
.end method
