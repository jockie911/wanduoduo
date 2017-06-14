.class public Lcom/wanduoduo/ui/skill/ServerTimeActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ServerTimeActivity.java"


# instance fields
.field cbAll:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03ad
        }
    .end annotation
.end field

.field cbIsCheckedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field cbIsrepeat:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01d4
        }
    .end annotation
.end field

.field private currentCBPosition:I

.field final dayNames:[Ljava/lang/String;

.field gvTime:Landroid/widget/GridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03ac
        }
    .end annotation
.end field

.field public mMapSelected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mTimes:[Ljava/lang/String;

.field rootLlTime:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01d2
        }
    .end annotation
.end field

.field private serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

.field private server_end_time:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field tvTime1:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017a
        }
    .end annotation
.end field

.field tvTime2:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017b
        }
    .end annotation
.end field

.field tvTime3:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017c
        }
    .end annotation
.end field

.field tvTime4:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e017d
        }
    .end annotation
.end field

.field tvTime5:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a9
        }
    .end annotation
.end field

.field tvTime6:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03aa
        }
    .end annotation
.end field

.field tvTime7:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03ab
        }
    .end annotation
.end field

.field tvWeek2:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a3
        }
    .end annotation
.end field

.field tvWeek3:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a4
        }
    .end annotation
.end field

.field tvWeek4:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a5
        }
    .end annotation
.end field

.field tvWeek5:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a6
        }
    .end annotation
.end field

.field tvWeek6:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a7
        }
    .end annotation
.end field

.field tvWeek7:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e03a8
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "08:00"

    aput-object v1, v0, v3

    const-string v1, "09:00"

    aput-object v1, v0, v4

    const-string v1, "10:00"

    aput-object v1, v0, v5

    const-string v1, "11:00"

    aput-object v1, v0, v6

    const-string v1, "12:00"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "13:00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "14:00"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15:00"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "16:00"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "17:00"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "18:00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "19:00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "20:00"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "21:00"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "22:00"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "23:00"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mTimes:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5468\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u5468\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u5468\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u5468\u56db"

    aput-object v1, v0, v6

    const-string v1, "\u5468\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5468\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5468\u65e5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_time:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->makeSureBack()V

    return-void
.end method

.method private doWithServerTime()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    new-instance v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;

    invoke-direct {v1, p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    .line 149
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->gvTime:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iput v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    .line 158
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initCBStatus()V

    .line 159
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initTvTimeStatus(Landroid/widget/TextView;)V

    .line 160
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v4, v1}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->addData(ILjava/util/List;)V

    .line 161
    return-void
.end method

.method private getCurrentHour()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, df:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDataTime(I)Ljava/lang/String;
    .locals 4
    .parameter "laterDate"

    .prologue
    .line 126
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 127
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 130
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getFirstPassListSelected()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getCurrentHour()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, hourTime:I
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v1, v0, -0x7

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mTimes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mTimes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getFullDataSelected()Ljava/util/List;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private getFullDataSelected()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, fullLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mTimes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mTimes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-object v0
.end method

.method private initCBStatus()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private initDate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    .line 103
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private initTvTimeStatus(Landroid/widget/TextView;)V
    .locals 4
    .parameter "tv"

    .prologue
    const v3, 0x7f0d0029

    const v2, 0x7f0d000d

    .line 340
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 341
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 342
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 343
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 344
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 345
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 346
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 347
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    const v0, 0x7f020291

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    return-void
.end method

.method private initWeek()V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getWeekOfIndex()I

    move-result v0

    .line 117
    .local v0, weekOfIndex:I
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek5:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek6:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek7:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x5

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->dayNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method private makeSureBack()V
    .locals 19

    .prologue
    .line 247
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    .local v13, sortMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;>;"
    new-instance v15, Lcom/wanduoduo/ui/skill/ServerTimeActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$3;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 256
    .local v7, jsonObject:Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 257
    .local v9, mp:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    .line 258
    .local v6, jArray:Lcom/google/gson/JsonArray;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_1

    .line 259
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 260
    .local v10, s:Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_1

    .line 263
    .end local v10           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    if-eqz v15, :cond_0

    .line 264
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 266
    .end local v6           #jArray:Lcom/google/gson/JsonArray;
    .end local v9           #mp:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_time:Ljava/lang/String;

    .line 267
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v5, intent:Landroid/content/Intent;
    const/4 v4, 0x6

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 271
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_4

    .line 272
    new-instance v15, Lcom/wanduoduo/ui/skill/ServerTimeActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$4;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-static {v8, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, substring:Ljava/lang/String;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyyMMddhh"

    invoke-direct {v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 281
    .local v11, sdf1:Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    .local v12, sdf2:Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 284
    .local v2, date:Ljava/util/Date;
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getDataTime(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 285
    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_end_time:Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v2           #date:Ljava/util/Date;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #sdf1:Ljava/text/SimpleDateFormat;
    .end local v12           #sdf2:Ljava/text/SimpleDateFormat;
    .end local v14           #substring:Ljava/lang/String;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_time:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 293
    const-string v15, "server_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_time:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v15, "server_end_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_end_time:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :goto_4
    const-string v15, "isrepeat"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->setResult(ILandroid/content/Intent;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->server_time:Ljava/lang/String;

    invoke-static {v15}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->finish()V

    .line 302
    return-void

    .line 286
    .restart local v2       #date:Ljava/util/Date;
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #sdf1:Ljava/text/SimpleDateFormat;
    .restart local v12       #sdf2:Ljava/text/SimpleDateFormat;
    .restart local v14       #substring:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 287
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 269
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #e:Ljava/text/ParseException;
    .end local v11           #sdf1:Ljava/text/SimpleDateFormat;
    .end local v12           #sdf2:Ljava/text/SimpleDateFormat;
    .end local v14           #substring:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    .line 296
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v15, "server_time"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method private tvTimeClick(ILandroid/widget/TextView;)V
    .locals 4
    .parameter "position"
    .parameter "tv"

    .prologue
    .line 309
    iput p1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    .line 310
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initCBStatus()V

    .line 311
    invoke-direct {p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initTvTimeStatus(Landroid/widget/TextView;)V

    .line 312
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v3, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->addData(ILjava/util/List;)V

    .line 313
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    const v0, 0x7f040053

    return v0
.end method

.method public getWeekOfIndex()I
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 136
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 137
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 138
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 139
    .local v2, dayOfWeek:I
    add-int/lit8 v3, v2, -0x1

    return v3
.end method

.method public helloEventBus(Lcom/wanduoduo/eventclass/ServerTimeEventClass;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lde/greenrobot/event/Subscribe;
        threadMode = .enum Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget v2, v2, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u65f6\u95f4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initWeek()V

    .line 95
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->initDate()V

    .line 96
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->doWithServerTime()V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e1,
            0x7f0e01ef,
            0x7f0e03ad,
            0x7f0e017a,
            0x7f0e017b,
            0x7f0e017c,
            0x7f0e017d,
            0x7f0e03a9,
            0x7f0e03aa,
            0x7f0e03ab,
            0x7f0e01d4
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 175
    :sswitch_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u662f\u5426\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 177
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/skill/ServerTimeActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$2;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/skill/ServerTimeActivity$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$1;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 192
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    :sswitch_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->makeSureBack()V

    goto :goto_0

    .line 196
    :sswitch_2
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getFirstPassListSelected()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->serverTimeAdapter:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget v3, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v4, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->addData(ILjava/util/List;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->getFullDataSelected()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->mMapSelected:Ljava/util/Map;

    iget v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->currentCBPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    :sswitch_3
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 213
    :sswitch_4
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 216
    :sswitch_5
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 219
    :sswitch_6
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 222
    :sswitch_7
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 225
    :sswitch_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 228
    :sswitch_9
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTimeClick(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 231
    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x7f0e00e1 -> :sswitch_0
        0x7f0e017a -> :sswitch_3
        0x7f0e017b -> :sswitch_4
        0x7f0e017c -> :sswitch_5
        0x7f0e017d -> :sswitch_6
        0x7f0e01d4 -> :sswitch_a
        0x7f0e01ef -> :sswitch_1
        0x7f0e03a9 -> :sswitch_7
        0x7f0e03aa -> :sswitch_8
        0x7f0e03ab -> :sswitch_9
        0x7f0e03ad -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 394
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onDestroy()V

    .line 395
    return-void
.end method

.method public setCheckFullOrNot(IZ)V
    .locals 4
    .parameter "currentCBPosition"
    .parameter "isFull"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    if-eqz p2, :cond_0

    .line 383
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsCheckedLists:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
