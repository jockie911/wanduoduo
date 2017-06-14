.class public Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "PlayerEvaluationFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field btnAll:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0275
        }
    .end annotation
.end field

.field btnBad:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0278
        }
    .end annotation
.end field

.field btnOk:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0277
        }
    .end annotation
.end field

.field btnPrefect:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0276
        }
    .end annotation
.end field

.field private gift_tag_id:Ljava/lang/String;

.field private isAllEva:Z

.field numCount:[Ljava/lang/String;

.field private playerEvaluationDataFragment:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "gift_tag_id"
    .parameter "numCount"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->gift_tag_id:Ljava/lang/String;

    .line 55
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->isAllEva:Z

    .line 61
    iput-object p1, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->gift_tag_id:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isAllEva"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->gift_tag_id:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    .line 66
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->isAllEva:Z

    .line 67
    return-void
.end method

.method private btnClick(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->playerEvaluationDataFragment:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->setType(I)V

    .line 114
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->playerEvaluationDataFragment:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;->sendDataRequest()V

    .line 115
    return-void
.end method

.method private setBtnColor(Landroid/widget/Button;)V
    .locals 2
    .parameter "btn"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnAll:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setSingleBtn(Landroid/widget/Button;)V

    .line 119
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnPrefect:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setSingleBtn(Landroid/widget/Button;)V

    .line 120
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnOk:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setSingleBtn(Landroid/widget/Button;)V

    .line 121
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnBad:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setSingleBtn(Landroid/widget/Button;)V

    .line 122
    const v0, 0x7f02026d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    return-void
.end method

.method private setBtnNum()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnAll:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5168\u90e8("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnPrefect:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f88\u6ee1\u610f("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnOk:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ee1\u610f("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnBad:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u6ee1\u610f("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->numCount:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method

.method private setSingleBtn(Landroid/widget/Button;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 127
    const v0, 0x7f02026c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 71
    const v0, 0x7f040088

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    iget-boolean v1, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->isAllEva:Z

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->gift_tag_id:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->playerEvaluationDataFragment:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    .line 77
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    iget-object v2, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->playerEvaluationDataFragment:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    invoke-direct {p0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setBtnNum()V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0275,
            0x7f0e0276,
            0x7f0e0277,
            0x7f0e0278
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnClick(I)V

    .line 95
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnAll:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setBtnColor(Landroid/widget/Button;)V

    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnClick(I)V

    .line 99
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnPrefect:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setBtnColor(Landroid/widget/Button;)V

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnClick(I)V

    .line 103
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnOk:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setBtnColor(Landroid/widget/Button;)V

    goto :goto_0

    .line 106
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnClick(I)V

    .line 107
    iget-object v0, p0, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnBad:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->setBtnColor(Landroid/widget/Button;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x7f0e0275
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
