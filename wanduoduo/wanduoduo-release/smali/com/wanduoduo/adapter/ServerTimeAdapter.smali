.class public Lcom/wanduoduo/adapter/ServerTimeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ServerTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mTimeSlectedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTimes:[Ljava/lang/String;

.field private serverTimeActivity:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

.field public witchClickPostiton:I


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V
    .locals 3
    .parameter "serverTimeActivity"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "08:00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "09:00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10:00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "11:00"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "12:00"

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimes:[Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->serverTimeActivity:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/ServerTimeAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->getCurrentHousr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/adapter/ServerTimeAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->setCleckWeatherFull(I)V

    return-void
.end method

.method private getCurrentHousr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, df:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setCleckWeatherFull(I)V
    .locals 3
    .parameter "fullSize"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->serverTimeActivity:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    iget v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->setCheckFullOrNot(IZ)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->serverTimeActivity:Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    iget v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->setCheckFullOrNot(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public addData(ILjava/util/List;)V
    .locals 1
    .parameter "witchClickPostiton"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput p1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    .line 40
    iget-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const v5, 0x7f0d001b

    .line 63
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    #calls: Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    move-result-object v0

    .line 66
    .local v0, holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimes:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->getCurrentHousr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, hourTime:I
    iget v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    if-nez v2, :cond_3

    .line 70
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 71
    add-int/lit8 v2, v1, -0x8

    if-gt p1, v2, :cond_2

    .line 72
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimes:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const v3, 0x7f020290

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :goto_1
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    new-instance v3, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;-><init>(Lcom/wanduoduo/adapter/ServerTimeAdapter;ILcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-object p2

    .line 74
    :cond_2
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v2, v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1
.end method
