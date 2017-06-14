.class Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhotoPicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/PhotoPicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c3
        }
    .end annotation
.end field

.field ivDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c4
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "convertView"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;

    .line 184
    .local v0, holder:Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    .restart local v0       #holder:Lcom/wanduoduo/adapter/PhotoPicAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-object v0
.end method
