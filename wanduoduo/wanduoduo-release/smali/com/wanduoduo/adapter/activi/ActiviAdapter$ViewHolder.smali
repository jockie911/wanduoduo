.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field flPic:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ae
        }
    .end annotation
.end field

.field ivAvctor:Lcom/wanduoduo/widget/CircleImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f7
        }
    .end annotation
.end field

.field ivItemTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d5
        }
    .end annotation
.end field

.field ivJianTou:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fd
        }
    .end annotation
.end field

.field ivPic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e5
        }
    .end annotation
.end field

.field ivVipLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fb
        }
    .end annotation
.end field

.field llMapLocation:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02af
        }
    .end annotation
.end field

.field mgvPic:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d0
        }
    .end annotation
.end field

.field relItemTop:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ac
        }
    .end annotation
.end field

.field relPersonInfo:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f6
        }
    .end annotation
.end field

.field tvActiviTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fa
        }
    .end annotation
.end field

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e020c
        }
    .end annotation
.end field

.field tvDiscuss:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0225
        }
    .end annotation
.end field

.field tvItemTop:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02ad
        }
    .end annotation
.end field

.field tvLocationPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b0
        }
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f9
        }
    .end annotation
.end field

.field tvReadCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b1
        }
    .end annotation
.end field

.field tvZan:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b2
        }
    .end annotation
.end field

.field vBottomLine:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01fe
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 311
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    invoke-static {p0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    .line 314
    .local v0, holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 316
    .restart local v0       #holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 318
    :cond_0
    return-object v0
.end method
