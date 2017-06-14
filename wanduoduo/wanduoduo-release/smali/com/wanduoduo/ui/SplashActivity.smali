.class public Lcom/wanduoduo/ui/SplashActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ivSplash:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01e3
        }
    .end annotation
.end field

.field mHandler:Lcom/wanduoduo/widget/MyHandler;

.field private updataBean:Lcom/wanduoduo/bean/UpdataBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/wanduoduo/ui/SplashActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/SplashActivity$2;-><init>(Lcom/wanduoduo/ui/SplashActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/SplashActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/SplashActivity;)Lcom/wanduoduo/bean/UpdataBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity;->updataBean:Lcom/wanduoduo/bean/UpdataBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/ui/SplashActivity;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .locals 9

    .prologue
    .line 102
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040070

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, view:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 105
    const v6, 0x7f0e01ee

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, tvTitle:Landroid/widget/TextView;
    const v6, 0x7f0e020d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, tvUpdataInfo:Landroid/widget/TextView;
    const-string v6, "\u66f4\u65b0\u901a\u77e5"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v6, p0, Lcom/wanduoduo/ui/SplashActivity;->updataBean:Lcom/wanduoduo/bean/UpdataBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/UpdataBean;->getData()Lcom/wanduoduo/bean/UpdataBean$DataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wanduoduo/bean/UpdataBean$DataBean;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v6, 0x7f0e020e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, tvUpdata:Landroid/widget/TextView;
    const v6, 0x7f0e020f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, tvExit:Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 116
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/wanduoduo/ui/SplashActivity;->isHaveTitleBar:Z

    .line 38
    iput-boolean v0, p0, Lcom/wanduoduo/ui/SplashActivity;->isSwipe:Z

    .line 39
    const v0, 0x7f040059

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 44
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 45
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 46
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 48
    iget-object v1, p0, Lcom/wanduoduo/ui/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    new-instance v1, Lcom/wanduoduo/ui/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/SplashActivity$1;-><init>(Lcom/wanduoduo/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e020e

    if-ne v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e020f

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/wanduoduo/ui/SplashActivity;->finish()V

    goto :goto_0
.end method

.method protected setStatusBar()V
    .locals 3

    .prologue
    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/wanduoduo/ui/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 125
    .local v0, window:Landroid/view/Window;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 126
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 128
    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 131
    .end local v0           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method
