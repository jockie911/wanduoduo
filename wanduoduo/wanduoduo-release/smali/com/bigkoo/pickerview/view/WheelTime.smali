.class public Lcom/bigkoo/pickerview/view/WheelTime;
.super Ljava/lang/Object;
.source "WheelTime.java"


# static fields
.field public static final DEFULT_END_YEAR:I = 0x834

.field public static final DEFULT_START_YEAR:I = 0x7c6

.field public static dateFormat:Ljava/text/DateFormat;


# instance fields
.field private endYear:I

.field private startYear:I

.field private type:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field private view:Landroid/view/View;

.field private wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_year:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x7c6

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 31
    const/16 v0, 0x834

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 37
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 38
    sget-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:Lcom/bigkoo/pickerview/TimePickerView$Type;

    .line 39
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/bigkoo/pickerview/TimePickerView$Type;)V
    .locals 1
    .parameter "view"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x7c6

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 31
    const/16 v0, 0x834

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 43
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 44
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:Lcom/bigkoo/pickerview/TimePickerView$Type;

    .line 45
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return v0
.end method

.method public getStartYear()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 214
    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 215
    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 216
    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 217
    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    return-object v0
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 206
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 207
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 208
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 209
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 210
    return-void
.end method

.method public setEndYear(I)V
    .locals 0
    .parameter "endYear"

    .prologue
    .line 242
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 243
    return-void
.end method

.method public setPicker(III)V
    .locals 6
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v4, 0x0

    .line 48
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIII)V

    .line 49
    return-void
.end method

.method public setPicker(IIIII)V
    .locals 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "h"
    .parameter "m"

    .prologue
    .line 53
    const/4 v9, 0x7

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "3"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "5"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "7"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "8"

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const-string v10, "10"

    aput-object v10, v4, v9

    const/4 v9, 0x6

    const-string v10, "12"

    aput-object v10, v4, v9

    .line 54
    .local v4, months_big:[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "6"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "9"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v5, v9

    .line 56
    .local v5, months_little:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, list_big:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 59
    .local v3, list_little:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    .local v1, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v10, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 62
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v11, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v12, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 63
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    sget v10, Lcom/bigkoo/pickerview/R$string;->pickerview_year:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 64
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v10, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    sub-int v10, p1, v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 67
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v10, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 68
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x1

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 69
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    sget v10, Lcom/bigkoo/pickerview/R$string;->pickerview_month:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 70
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v9, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 73
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v10, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 75
    add-int/lit8 v9, p2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x1

    const/16 v12, 0x1f

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 86
    :goto_0
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    sget v10, Lcom/bigkoo/pickerview/R$string;->pickerview_day:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 87
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    add-int/lit8 v10, p3, -0x1

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 90
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v10, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 91
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x0

    const/16 v12, 0x17

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 92
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    sget v10, Lcom/bigkoo/pickerview/R$string;->pickerview_hours:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 93
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 95
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v10, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 96
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x0

    const/16 v12, 0x3b

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 97
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    sget v10, Lcom/bigkoo/pickerview/R$string;->pickerview_minutes:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 98
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 101
    new-instance v8, Lcom/bigkoo/pickerview/view/WheelTime$1;

    invoke-direct {v8, p0, v2, v3}, Lcom/bigkoo/pickerview/view/WheelTime$1;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    .line 132
    .local v8, wheelListener_year:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    new-instance v7, Lcom/bigkoo/pickerview/view/WheelTime$2;

    invoke-direct {v7, p0, v2, v3}, Lcom/bigkoo/pickerview/view/WheelTime$2;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    .line 162
    .local v7, wheelListener_month:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v9, v8}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;)V

    .line 163
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v9, v7}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;)V

    .line 166
    const/4 v6, 0x6

    .line 167
    .local v6, textSize:I
    sget-object v9, Lcom/bigkoo/pickerview/view/WheelTime$3;->$SwitchMap$com$bigkoo$pickerview$TimePickerView$Type:[I

    iget-object v10, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-virtual {v10}, Lcom/bigkoo/pickerview/TimePickerView$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 192
    :goto_1
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 193
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 194
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 195
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 196
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 198
    return-void

    .line 77
    .end local v6           #textSize:I
    .end local v7           #wheelListener_month:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    .end local v8           #wheelListener_year:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    :cond_0
    add-int/lit8 v9, p2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x1

    const/16 v12, 0x1e

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    goto/16 :goto_0

    .line 81
    :cond_1
    rem-int/lit8 v9, p1, 0x4

    if-nez v9, :cond_2

    rem-int/lit8 v9, p1, 0x64

    if-nez v9, :cond_3

    :cond_2
    rem-int/lit16 v9, p1, 0x190

    if-nez v9, :cond_4

    .line 82
    :cond_3
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x1

    const/16 v12, 0x1d

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v10, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v11, 0x1

    const/16 v12, 0x1c

    invoke-direct {v10, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    goto/16 :goto_0

    .line 169
    .restart local v6       #textSize:I
    .restart local v7       #wheelListener_month:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    .restart local v8       #wheelListener_year:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    :pswitch_0
    mul-int/lit8 v6, v6, 0x3

    .line 170
    goto :goto_1

    .line 172
    :pswitch_1
    mul-int/lit8 v6, v6, 0x4

    .line 173
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 174
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto :goto_1

    .line 177
    :pswitch_2
    mul-int/lit8 v6, v6, 0x4

    .line 178
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 179
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 180
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    :pswitch_3
    mul-int/lit8 v6, v6, 0x3

    .line 184
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto/16 :goto_1

    .line 187
    :pswitch_4
    mul-int/lit8 v6, v6, 0x4

    .line 188
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 189
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 190
    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_mins:Lcom/bigkoo/pickerview/lib/WheelView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    goto/16 :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setStartYear(I)V
    .locals 0
    .parameter "startYear"

    .prologue
    .line 234
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 235
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 227
    return-void
.end method
