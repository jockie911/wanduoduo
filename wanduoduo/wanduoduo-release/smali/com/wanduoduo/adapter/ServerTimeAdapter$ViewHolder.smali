.class Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ServerTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/ServerTimeAdapter;
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
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    .line 135
    .local v0, holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    .restart local v0       #holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :cond_0
    return-object v0
.end method
