.class Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InfoUserBillDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field tvDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0124
        }
    .end annotation
.end field

.field tvMoney:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f4
        }
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;

    .line 77
    .local v0, holder:Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    .restart local v0       #holder:Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-object v0
.end method
