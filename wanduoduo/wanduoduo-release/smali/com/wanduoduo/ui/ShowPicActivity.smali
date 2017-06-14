.class public Lcom/wanduoduo/ui/ShowPicActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ShowPicActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;
    }
.end annotation


# instance fields
.field private bimp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kind:I

.field private picflist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private showPicAdapter:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

.field tvPicLocation:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e2
        }
    .end annotation
.end field

.field viewPager:Lcom/wanduoduo/widget/ViewPagerFixed;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0181
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/ShowPicActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    return v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/ShowPicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->isHaveTitleBar:Z

    .line 46
    const v0, 0x7f040058

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    .line 52
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->position:I

    .line 54
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "piclist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    .line 56
    :cond_0
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bimp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    .line 58
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "piclist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0}, Lcom/wanduoduo/ui/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bimp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->viewPager:Lcom/wanduoduo/widget/ViewPagerFixed;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/ViewPagerFixed;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 64
    new-instance v0, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;-><init>(Lcom/wanduoduo/ui/ShowPicActivity;Lcom/wanduoduo/ui/ShowPicActivity$1;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->showPicAdapter:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

    .line 65
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->viewPager:Lcom/wanduoduo/widget/ViewPagerFixed;

    iget-object v1, p0, Lcom/wanduoduo/ui/ShowPicActivity;->showPicAdapter:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/ViewPagerFixed;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->viewPager:Lcom/wanduoduo/widget/ViewPagerFixed;

    iget v1, p0, Lcom/wanduoduo/ui/ShowPicActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/ViewPagerFixed;->setCurrentItem(I)V

    .line 67
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->showPicAdapter:Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/ShowPicActivity$ShowPicAdapter;->notifyDataSetChanged()V

    .line 68
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->position:I

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/ShowPicActivity;->onPageSelected(I)V

    .line 69
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 89
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 74
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 78
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->tvPicLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->tvPicLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/ui/ShowPicActivity;->tvPicLocation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/ShowPicActivity;->picflist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/wanduoduo/ui/ShowPicActivity;->bimp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    return-void
.end method
