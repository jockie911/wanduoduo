.class public Lcom/wanduoduo/view/SelectServerTimeView;
.super Ljava/lang/Object;
.source "SelectServerTimeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;,
        Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;
    }
.end annotation


# instance fields
.field private gvAdapter:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

.field gvTime:Landroid/widget/GridView;

.field ivClose:Landroid/widget/ImageView;

.field private listList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

.field private selectedTime:Ljava/lang/String;

.field private serverTime:Ljava/lang/String;

.field private serverTimeLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private switchPosition:I

.field private timeLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tvShowTime:Landroid/widget/TextView;

.field tvTime1:Landroid/widget/TextView;

.field tvTime2:Landroid/widget/TextView;

.field tvTime3:Landroid/widget/TextView;

.field tvTime4:Landroid/widget/TextView;

.field tvTime5:Landroid/widget/TextView;

.field tvTime6:Landroid/widget/TextView;

.field tvTime7:Landroid/widget/TextView;

.field tvWeek1:Landroid/widget/TextView;

.field tvWeek2:Landroid/widget/TextView;

.field tvWeek3:Landroid/widget/TextView;

.field tvWeek4:Landroid/widget/TextView;

.field tvWeek5:Landroid/widget/TextView;

.field tvWeek6:Landroid/widget/TextView;

.field tvWeek7:Landroid/widget/TextView;

.field private weekLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serverTime"
    .parameter "selectedTime"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->timeLists:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->switchPosition:I

    .line 69
    iput-object p1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTime:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->selectedTime:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/view/SelectServerTimeView;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/wanduoduo/view/SelectServerTimeView;->getTimeSdf(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    return-object v0
.end method

.method private addToTimeList()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 133
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 134
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime3:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 135
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime4:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 136
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime5:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 137
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime6:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 138
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime7:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setDefault(Landroid/widget/TextView;)V

    .line 139
    return-void
.end method

.method private addToWeekList()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek6:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->weekLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek7:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private fbc(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 86
    const v2, 0x7f0e03a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek1:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0e03a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek2:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0e03a4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek3:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0e03a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek4:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0e03a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek5:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0e03a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek6:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0e03a8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek7:Landroid/widget/TextView;

    .line 93
    invoke-direct {p0}, Lcom/wanduoduo/view/SelectServerTimeView;->addToWeekList()V

    .line 94
    const v2, 0x7f0e017a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0e017b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime2:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0e017c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime3:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0e017d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime4:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0e03a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime5:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0e03aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime6:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0e03ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime7:Landroid/widget/TextView;

    .line 101
    invoke-direct {p0}, Lcom/wanduoduo/view/SelectServerTimeView;->addToTimeList()V

    .line 102
    const v2, 0x7f0e01d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 103
    .local v0, relCB:Landroid/widget/RelativeLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    const v2, 0x7f0e030e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvShowTime:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0e01ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, tvMakeSureOrder:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f0e03ac

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->gvTime:Landroid/widget/GridView;

    .line 110
    const v2, 0x7f0e0311

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->ivClose:Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime2:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime3:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime4:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime5:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime6:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime7:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private getStartEndTime(Z)Ljava/lang/String;
    .locals 9
    .parameter "max"

    .prologue
    const/4 v7, 0x0

    .line 240
    const-string v4, ""

    .line 241
    .local v4, t:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    iget-object v7, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddhh"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, sdf1:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, sdf2:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 252
    .local v0, date:Ljava/util/Date;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTime:Ljava/lang/String;

    invoke-static {v5}, Lcom/wanduoduo/utils/String2ListUtlis;->String2Lists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/wanduoduo/view/SelectServerTimeView;->switchPosition:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 253
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 257
    :goto_1
    return-object v5

    .line 244
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #sdf1:Ljava/text/SimpleDateFormat;
    .end local v3           #sdf2:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 254
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #sdf1:Ljava/text/SimpleDateFormat;
    .restart local v3       #sdf2:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 257
    const-string v5, ""

    goto :goto_1
.end method

.method private getTimeSdf(Ljava/lang/String;)J
    .locals 6
    .parameter "hh"

    .prologue
    .line 411
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/wanduoduo/utils/String2ListUtlis;->String2Lists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/wanduoduo/view/SelectServerTimeView;->switchPosition:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 417
    :goto_0
    return-wide v2

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 417
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvWeek1:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->listList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->listList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    .local v1, itemList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->timeLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->timeLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x7

    const/16 v5, 0x9

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v1           #itemList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;-><init>(Lcom/wanduoduo/view/SelectServerTimeView;Lcom/wanduoduo/view/SelectServerTimeView$1;)V

    iput-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->gvAdapter:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    .line 159
    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView;->gvTime:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/wanduoduo/view/SelectServerTimeView;->gvAdapter:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-direct {p0, v6}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    .line 161
    return-void
.end method

.method private initData(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/wanduoduo/utils/String2ListUtlis;->String2Lists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->listList:Ljava/util/List;

    .line 81
    invoke-direct {p0, p1}, Lcom/wanduoduo/view/SelectServerTimeView;->fbc(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lcom/wanduoduo/view/SelectServerTimeView;->initData()V

    .line 83
    return-void
.end method

.method private initTvTimeStatus(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 263
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 264
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime3:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 265
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime4:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 266
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime5:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 267
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime6:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 268
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime7:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewBgColor(Landroid/widget/TextView;)V

    .line 269
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime1:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 270
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 271
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime3:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 272
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime4:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 273
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime5:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 274
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime6:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 275
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->tvTime7:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->setTextViewTvColor(Landroid/widget/TextView;)V

    .line 276
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    const v0, 0x7f020291

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 278
    return-void
.end method

.method private setDefault(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tvTime"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->timeLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private setGvData(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->timeLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->initTvTimeStatus(Landroid/widget/TextView;)V

    .line 290
    iput p1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->switchPosition:I

    .line 291
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->gvAdapter:Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;

    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView;->listList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->addData(Ljava/util/List;)V

    .line 293
    return-void
.end method

.method private setTextViewBgColor(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tvTime"

    .prologue
    .line 285
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 286
    return-void
.end method

.method private setTextViewTvColor(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tvTime"

    .prologue
    .line 281
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectServerTimeView;->initData(Landroid/view/View;)V

    .line 76
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 237
    :goto_0
    :sswitch_0
    return-void

    .line 167
    :sswitch_1
    invoke-direct {p0, v8}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 170
    :sswitch_2
    invoke-direct {p0, v9}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 173
    :sswitch_3
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 176
    :sswitch_4
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 179
    :sswitch_5
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 182
    :sswitch_6
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 185
    :sswitch_7
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->setGvData(I)V

    goto :goto_0

    .line 194
    :sswitch_8
    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 195
    const-string v5, "\u8bf7\u9009\u62e9\u9884\u7ea6\u65f6\u95f4"

    invoke-static {v5}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    new-instance v6, Lcom/wanduoduo/view/SelectServerTimeView$1;

    invoke-direct {v6, p0}, Lcom/wanduoduo/view/SelectServerTimeView$1;-><init>(Lcom/wanduoduo/view/SelectServerTimeView;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    const-string v5, "playerinfobean"

    iget-object v6, p0, Lcom/wanduoduo/view/SelectServerTimeView;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v2, jsonArray:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 220
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTime:Ljava/lang/String;

    invoke-static {v5}, Lcom/wanduoduo/utils/String2ListUtlis;->String2Lists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/wanduoduo/view/SelectServerTimeView;->switchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v5, "time"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_2
    const-string v5, "server_start_time"

    invoke-direct {p0, v8}, Lcom/wanduoduo/view/SelectServerTimeView;->getStartEndTime(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v5, "server_end_time"

    invoke-direct {p0, v9}, Lcom/wanduoduo/view/SelectServerTimeView;->getStartEndTime(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v5, "count"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v5, "type"

    const-string v6, "2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x7f0e017a -> :sswitch_1
        0x7f0e017b -> :sswitch_2
        0x7f0e017c -> :sswitch_3
        0x7f0e017d -> :sswitch_4
        0x7f0e01ea -> :sswitch_8
        0x7f0e0311 -> :sswitch_0
        0x7f0e03a9 -> :sswitch_5
        0x7f0e03aa -> :sswitch_6
        0x7f0e03ab -> :sswitch_7
        0x7f0e03ad -> :sswitch_0
    .end sparse-switch
.end method

.method public setData(Lcom/wanduoduo/bean/PlayerInfoBean;)V
    .locals 0
    .parameter "playerInfoBean"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/wanduoduo/view/SelectServerTimeView;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 297
    return-void
.end method
