.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoEditPersonCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoEditPersonAdapter"
.end annotation


# instance fields
.field itemData:[Ljava/lang/String;

.field mNineLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 761
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6635\u79f0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6027\u522b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5e74\u9f84"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u661f\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u8eab\u9ad8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u60c5\u611f\u72b6\u51b5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6240\u5728\u5730"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u804c\u4e1a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6536\u5165"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->itemData:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 771
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 781
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 786
    if-nez p2, :cond_0

    .line 787
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04009c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 788
    :cond_0
    const v3, 0x7f0e02a5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 789
    .local v2, vTop:Landroid/view/View;
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 790
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :goto_0
    const v3, 0x7f0e02a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 795
    .local v0, tvKey:Landroid/widget/TextView;
    const v3, 0x7f0e02a6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 796
    .local v1, tvValue:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->mNineLists:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 797
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->mNineLists:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    :cond_2
    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->itemData:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    return-object p2

    .line 792
    .end local v0           #tvKey:Landroid/widget/TextView;
    .end local v1           #tvValue:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public rePlaceData(Ljava/util/List;)V
    .locals 0
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
    .line 765
    .local p1, mNineLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->mNineLists:Ljava/util/List;

    .line 766
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$InfoEditPersonAdapter;->notifyDataSetChanged()V

    .line 767
    return-void
.end method
