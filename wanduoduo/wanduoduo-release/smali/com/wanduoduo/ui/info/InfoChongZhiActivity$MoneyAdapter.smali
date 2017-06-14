.class Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoChongZhiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoChongZhiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoneyAdapter"
.end annotation


# instance fields
.field mData:[Ljava/lang/String;

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 158
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;->mData:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Lcom/wanduoduo/ui/info/InfoChongZhiActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 176
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, textView:Landroid/widget/TextView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4220

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 178
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MoneyAdapter;->mData:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-object v1
.end method
