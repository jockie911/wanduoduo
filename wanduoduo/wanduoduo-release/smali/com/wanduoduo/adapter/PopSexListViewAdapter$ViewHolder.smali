.class Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PopSexListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/PopSexListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field ivIsChecked:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0309
        }
    .end annotation
.end field

.field tvSexAll:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015d
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;

    .line 71
    .local v0, holder:Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    .restart local v0       #holder:Lcom/wanduoduo/adapter/PopSexListViewAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-object v0
.end method
