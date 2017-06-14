.class public Lcom/wanduoduo/ui/activi/ActiviWatchActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ActiviWatchActivity.java"


# instance fields
.field cbFirst:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00c8
        }
    .end annotation
.end field

.field cbLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field cbSecond:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ca
        }
    .end annotation
.end field

.field cbThird:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00cc
        }
    .end annotation
.end field

.field private position:I

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->position:I

    return-void
.end method

.method private setCBSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iput p1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->position:I

    .line 74
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 77
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f04001d

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u8c01\u53ef\u4ee5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbFirst:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbSecond:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbLists:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbThird:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "watchposition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->position:I

    .line 46
    iget v0, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->position:I

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->setCBSelected(I)V

    .line 47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00c7,
            0x7f0e00c9,
            0x7f0e00cb,
            0x7f0e01ef
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 53
    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->setCBSelected(I)V

    goto :goto_0

    .line 56
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->setCBSelected(I)V

    goto :goto_0

    .line 59
    :sswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->setCBSelected(I)V

    goto :goto_0

    .line 62
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "watchposition"

    iget v2, p0, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->finish()V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c7 -> :sswitch_0
        0x7f0e00c9 -> :sswitch_1
        0x7f0e00cb -> :sswitch_2
        0x7f0e01ef -> :sswitch_3
    .end sparse-switch
.end method
