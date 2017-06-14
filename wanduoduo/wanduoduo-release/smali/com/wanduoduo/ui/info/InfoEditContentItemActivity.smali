.class public Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoEditContentItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;
    }
.end annotation


# instance fields
.field etNickname:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e010b
        }
    .end annotation
.end field

.field private isFromRun:Z

.field lvCareer:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e010d
        }
    .end annotation
.end field

.field relNickname:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00f9
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private makeSureBack()V
    .locals 3

    .prologue
    .line 89
    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setNickname()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f04002c

    return v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->type:I

    .line 43
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isFromRun"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->isFromRun:Z

    .line 44
    iget v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->type:I

    sparse-switch v3, :sswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 46
    :sswitch_0
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->relNickname:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 47
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v4, "\u4fee\u6539\u6635\u79f0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->setNickname()V

    goto :goto_0

    .line 52
    :sswitch_1
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->lvCareer:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->tvTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->isFromRun:Z

    if-eqz v3, :cond_0

    const-string v3, "\u8fd0\u52a8\u7c7b\u578b"

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, content:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->isFromRun:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0c0005

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, stringArray:[Ljava/lang/String;
    new-instance v0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;

    invoke-direct {v0, p0, v2, v1}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;-><init>(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, careerAdapter:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->lvCareer:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 53
    .end local v0           #careerAdapter:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #stringArray:[Ljava/lang/String;
    :cond_0
    const-string v3, "\u804c\u4e1a\u9009\u62e9"

    goto :goto_1

    .line 55
    .restart local v1       #content:Ljava/lang/String;
    :cond_1
    const v3, 0x7f0c0007

    goto :goto_2

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e010c
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 77
    :sswitch_0
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->makeSureBack()V

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;->etNickname:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x7f0e010c -> :sswitch_1
        0x7f0e01ef -> :sswitch_0
    .end sparse-switch
.end method
