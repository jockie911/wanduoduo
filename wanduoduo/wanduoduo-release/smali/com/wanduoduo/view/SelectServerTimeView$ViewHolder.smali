.class Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
.super Ljava/lang/Object;
.source "SelectServerTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/view/SelectServerTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemServerTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e029b
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 433
    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 420
    invoke-static {p0}, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    .line 425
    .local v0, holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 427
    .restart local v0       #holder:Lcom/wanduoduo/view/SelectServerTimeView$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    :cond_0
    return-object v0
.end method
