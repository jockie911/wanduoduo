.class public Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnLinePopPubAppointAdapter.java"


# instance fields
.field private iconArray:[I

.field private iconNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x6

    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;->iconArray:[I

    .line 18
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u65c5\u884c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5403\u996d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7535\u5f71"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5531\u6b4c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5176\u4ed6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;->iconNames:[Ljava/lang/String;

    return-void

    .line 16
    :array_0
    .array-data 0x4
        0x41t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x3ft 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;->iconArray:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    :cond_0
    const v1, 0x7f0e0296

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, tvItem:Landroid/widget/TextView;
    const v1, 0x7f0d0020

    iget-object v2, p0, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;->iconArray:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableTop(Landroid/widget/TextView;II)V

    .line 40
    iget-object v1, p0, Lcom/wanduoduo/adapter/online/OnLinePopPubAppointAdapter;->iconNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-object p2
.end method
