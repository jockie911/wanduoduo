.class Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PersonSkillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/index/PersonSkillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field rciv:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02c8
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

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ee
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private static getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
    .locals 1
    .parameter "convertView"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;

    .line 75
    .local v0, holder:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;

    .end local v0           #holder:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    .restart local v0       #holder:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-object v0
.end method
