.class public Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnLineAppointPubTagAdapter.java"


# instance fields
.field private isTvClick:Z

.field private mData:[Ljava/lang/String;

.field private selectedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;[Z)V
    .locals 1
    .parameter "resource"
    .parameter "isCanClick"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->isTvClick:Z

    .line 29
    iput-object p1, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->mData:[Ljava/lang/String;

    .line 30
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    iput-boolean v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->isTvClick:Z

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->mData:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const-string v2, ""

    .line 94
    :goto_0
    return-object v2

    .line 90
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 91
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->selectedTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 94
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 52
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, textView:Landroid/widget/TextView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f0

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v2, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->mData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const v2, 0x7f020289

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->isTvClick:Z

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;

    invoke-direct {v2, p0, v1, p3}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter$1;-><init>(Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-object v1
.end method
