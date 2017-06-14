.class Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectServerTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/view/SelectServerTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GvAdapter"
.end annotation


# instance fields
.field mListSected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTime:[Ljava/lang/String;

.field mTimes:[Ljava/lang/String;

.field final synthetic this$0:Lcom/wanduoduo/view/SelectServerTimeView;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/view/SelectServerTimeView;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iput-object p1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
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

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mTimes:[Ljava/lang/String;

    .line 306
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "08"

    aput-object v1, v0, v3

    const-string v1, "09"

    aput-object v1, v0, v4

    const-string v1, "10"

    aput-object v1, v0, v5

    const-string v1, "11"

    aput-object v1, v0, v6

    const-string v1, "12"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "13"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "14"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "23"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mTime:[Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/view/SelectServerTimeView;Lcom/wanduoduo/view/SelectServerTimeView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;-><init>(Lcom/wanduoduo/view/SelectServerTimeView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->isExist(I)Z

    move-result v0

    return v0
.end method

.method private isExist(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 400
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v2}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 406
    :goto_0
    return v1

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v2}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_0

    .line 406
    .end local v0           #s:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMaxOrMin(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v1}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    iget-object v0, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-virtual {p0}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x10

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 326
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const v10, 0x7f0d002b

    const v9, 0x7f0d001b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0d000d

    .line 331
    if-nez p2, :cond_0

    .line 332
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 333
    :cond_0
    #calls: Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->access$100(Landroid/view/View;)Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    move-result-object v0

    .line 334
    .local v0, holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mTimes:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    iget-object v5, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mTimes:[Ljava/lang/String;

    aget-object v5, v5, p1

    #calls: Lcom/wanduoduo/view/SelectServerTimeView;->getTimeSdf(Ljava/lang/String;)J
    invoke-static {v4, v5}, Lcom/wanduoduo/view/SelectServerTimeView;->access$200(Lcom/wanduoduo/view/SelectServerTimeView;Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 337
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 339
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 389
    :goto_0
    return-object p2

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mTime:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    const-string v3, "8"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->mListSected:Ljava/util/List;

    const-string v3, "9"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 342
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 344
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 365
    :cond_2
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    new-instance v3, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;

    invoke-direct {v3, p0, v0, p3, p1}, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter$1;-><init>(Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 347
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 349
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 351
    iget-object v2, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 352
    iget-object v2, p0, Lcom/wanduoduo/view/SelectServerTimeView$GvAdapter;->this$0:Lcom/wanduoduo/view/SelectServerTimeView;

    #getter for: Lcom/wanduoduo/view/SelectServerTimeView;->serverTimeLists:Ljava/util/List;
    invoke-static {v2}, Lcom/wanduoduo/view/SelectServerTimeView;->access$300(Lcom/wanduoduo/view/SelectServerTimeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_4

    .line 354
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 356
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const v4, 0x7f020290

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 358
    :cond_4
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v3, v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1
.end method
