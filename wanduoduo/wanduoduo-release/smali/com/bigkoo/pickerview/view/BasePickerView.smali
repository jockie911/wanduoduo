.class public Lcom/bigkoo/pickerview/view/BasePickerView;
.super Ljava/lang/Object;
.source "BasePickerView.java"


# instance fields
.field protected contentContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private decorView:Landroid/view/ViewGroup;

.field private dismissing:Z

.field private gravity:I

.field private inAnim:Landroid/view/animation/Animation;

.field private final onCancelableTouchListener:Landroid/view/View$OnTouchListener;

.field private onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

.field private outAnim:Landroid/view/animation/Animation;

.field private final params:Landroid/widget/FrameLayout$LayoutParams;

.field private rootView:Landroid/view/ViewGroup;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x50

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iput v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->gravity:I

    .line 157
    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$2;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$2;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onCancelableTouchListener:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->initViews()V

    .line 44
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->init()V

    .line 45
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->initEvents()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->showing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

    return-object v0
.end method

.method private onAttached(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->showing:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$1;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$1;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 129
    iget v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->gravity:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bigkoo/pickerview/utils/PickerViewAnimateUtil;->getAnimationResource(IZ)I

    move-result v0

    .line 130
    .local v0, res:I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 134
    iget v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->gravity:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bigkoo/pickerview/utils/PickerViewAnimateUtil;->getAnimationResource(IZ)I

    move-result v0

    .line 135
    .local v0, res:I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->inAnim:Landroid/view/animation/Animation;

    .line 61
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    .line 62
    return-void
.end method

.method protected initEvents()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected initViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 49
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;

    .line 51
    sget v1, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    .line 52
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/R$id;->content_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    .line 56
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->decorView:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/R$id;->outmost_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->showing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCancelable(Z)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 3
    .parameter "isCancelable"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/R$id;->outmost_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, view:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onCancelableTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    :goto_0
    return-object p0

    .line 150
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/bigkoo/pickerview/listener/OnDismissListener;)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

    .line 140
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->showing:Z

    .line 82
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->onAttached(Landroid/view/View;)V

    goto :goto_0
.end method
