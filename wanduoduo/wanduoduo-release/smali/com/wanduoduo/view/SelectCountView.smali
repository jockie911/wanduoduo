.class public Lcom/wanduoduo/view/SelectCountView;
.super Ljava/lang/Object;
.source "SelectCountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cover_pic:Ljava/lang/String;

.field private etCount:Landroid/widget/EditText;

.field private fee:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ivAdd:Landroid/widget/ImageView;

.field private ivReduce:Landroid/widget/ImageView;

.field private playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

.field private title:Ljava/lang/String;

.field private tvShowTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCount(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "\u8bf7\u8f93\u5165\u9884\u7ea6\u6570\u91cf"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, count:I
    if-ne p1, v2, :cond_2

    .line 91
    if-ne v0, v2, :cond_1

    .line 92
    const-string v1, "\u81f3\u5c11\u9009\u62e91"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initData(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    const v1, 0x7f0e030b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->ivReduce:Landroid/widget/ImageView;

    .line 43
    const v1, 0x7f0e030d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->ivAdd:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f0e030c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    .line 45
    const v1, 0x7f0e030e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->tvShowTime:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0e01ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, tvMakeSuerOrder:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->ivReduce:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c9

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wanduoduo/view/SelectCountView;->initData(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 64
    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wanduoduo/view/SelectCountView;->addCount(I)V

    goto :goto_0

    .line 67
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/wanduoduo/view/SelectCountView;->addCount(I)V

    goto :goto_0

    .line 70
    :sswitch_2
    iget-object v1, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "\u8bf7\u8f93\u5165\u9884\u7ea6\u6570\u91cf"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-string v1, "playerinfobean"

    iget-object v2, p0, Lcom/wanduoduo/view/SelectCountView;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "count"

    iget-object v2, p0, Lcom/wanduoduo/view/SelectCountView;->etCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e01ea -> :sswitch_2
        0x7f0e030b -> :sswitch_0
        0x7f0e030d -> :sswitch_1
    .end sparse-switch
.end method

.method public setData(Lcom/wanduoduo/bean/PlayerInfoBean;)V
    .locals 0
    .parameter "playerInfoBean"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wanduoduo/view/SelectCountView;->playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 103
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "cover_pic"
    .parameter "title"
    .parameter "fee"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wanduoduo/view/SelectCountView;->id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/wanduoduo/view/SelectCountView;->cover_pic:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/wanduoduo/view/SelectCountView;->title:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/wanduoduo/view/SelectCountView;->fee:Ljava/lang/String;

    .line 58
    return-void
.end method
