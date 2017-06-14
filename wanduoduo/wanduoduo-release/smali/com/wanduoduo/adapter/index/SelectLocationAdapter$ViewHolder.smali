.class Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/index/SelectLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field tvItemHead:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ce
        }
    .end annotation
.end field

.field tvPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0106
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 172
    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;

    .line 163
    .local v0, holder:Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    .restart local v0       #holder:Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-object v0
.end method
