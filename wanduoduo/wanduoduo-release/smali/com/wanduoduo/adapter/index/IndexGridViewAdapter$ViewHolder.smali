.class Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IndexGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field itemIvPic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e028f
        }
    .end annotation
.end field

.field itemIvPlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0291
        }
    .end annotation
.end field

.field itemTvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0293
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

.field ivSexBg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0290
        }
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0113
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;

    .line 96
    .local v0, holder:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    .restart local v0       #holder:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-object v0
.end method
