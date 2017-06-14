.class public Lcom/wanduoduo/adapter/SelectPalceAllAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectPalceAllAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/SelectPalceAllAdapter;->notifyDataSetChanged()V

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0xa

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 33
    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    :cond_0
    return-object p2
.end method
