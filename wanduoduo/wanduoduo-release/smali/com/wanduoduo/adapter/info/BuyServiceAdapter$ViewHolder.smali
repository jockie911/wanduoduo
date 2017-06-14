.class Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BuyServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/BuyServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b8
        }
    .end annotation
.end field

.field itemRelPayOrDiscuss:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02bc
        }
    .end annotation
.end field

.field itemTvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ba
        }
    .end annotation
.end field

.field itemTvPayOrDiscuss:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02bd
        }
    .end annotation
.end field

.field itemTvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b9
        }
    .end annotation
.end field

.field itemTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0292
        }
    .end annotation
.end field

.field ivStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02bb
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    invoke-static {p0}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    .line 211
    .local v0, holder:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 213
    .restart local v0       #holder:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    :cond_0
    return-object v0
.end method
