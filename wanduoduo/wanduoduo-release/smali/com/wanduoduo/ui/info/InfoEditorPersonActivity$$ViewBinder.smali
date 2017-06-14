.class public Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Ljava/lang/Object;)V
    .locals 8
    .parameter "finder"
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;,"TT;"
    const v7, 0x7f0e0122

    const v6, 0x7f0e0104

    const v5, 0x7f0e0103

    const v4, 0x7f0e00f0

    const v3, 0x7f0e00e2

    .line 11
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'ivRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 25
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f0e0194

    const-string v2, "field \'tvPersonCenter\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0194

    const-string v2, "field \'tvPersonCenter\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvPersonCenter:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0e0195

    const-string v2, "field \'vPersonCenter\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vPersonCenter:Landroid/view/View;

    .line 37
    const v1, 0x7f0e0199

    const-string v2, "field \'tvSkill\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0199

    const-string v2, "field \'tvSkill\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvSkill:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e019a

    const-string v2, "field \'vSkill\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vSkill:Landroid/view/View;

    .line 41
    const v1, 0x7f0e019c

    const-string v2, "field \'relManageSkill\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e019c

    const-string v2, "field \'relManageSkill\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    .line 43
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0e0192

    const-string v2, "field \'ivChangeCover\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0192

    const-string v2, "field \'ivChangeCover\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivChangeCover:Landroid/widget/ImageView;

    .line 53
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e019d

    const-string v2, "field \'llChattingLove\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e019d

    const-string v2, "field \'llChattingLove\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    .line 63
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 64
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 65
    const-string v1, "field \'relLove\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relLove\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relLove:Landroid/widget/RelativeLayout;

    .line 67
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v1, "field \'tvLove\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 76
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvLove\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0e0191

    const-string v2, "field \'ivCover\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 78
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0191

    const-string v2, "field \'ivCover\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivCover:Landroid/widget/ImageView;

    .line 79
    const v1, 0x7f0e014a

    const-string v2, "field \'tvActivi\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 80
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e014a

    const-string v2, "field \'tvActivi\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvActivi:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0e0197

    const-string v2, "field \'vActivi\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 82
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vActivi:Landroid/view/View;

    .line 83
    const v1, 0x7f0e019b

    const-string v2, "field \'fmSc\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 84
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e019b

    const-string v2, "field \'fmSc\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->fmSc:Landroid/widget/FrameLayout;

    .line 85
    const-string v1, "field \'contentContainer\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 86
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'contentContainer\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->contentContainer:Landroid/widget/FrameLayout;

    .line 87
    const v1, 0x7f0e0193

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 88
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0e0198

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 97
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0e00d9

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0e019e

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 115
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$9;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f0e0196

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 124
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder$10;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;,"TT;"
    const/4 v0, 0x0

    .line 135
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 136
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 137
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 138
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvPersonCenter:Landroid/widget/TextView;

    .line 139
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vPersonCenter:Landroid/view/View;

    .line 140
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvSkill:Landroid/widget/TextView;

    .line 141
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vSkill:Landroid/view/View;

    .line 142
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relManageSkill:Landroid/widget/RelativeLayout;

    .line 143
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivChangeCover:Landroid/widget/ImageView;

    .line 144
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->llChattingLove:Landroid/widget/LinearLayout;

    .line 145
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 146
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->relLove:Landroid/widget/RelativeLayout;

    .line 147
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvLove:Landroid/widget/TextView;

    .line 148
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->ivCover:Landroid/widget/ImageView;

    .line 149
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->tvActivi:Landroid/widget/TextView;

    .line 150
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->vActivi:Landroid/view/View;

    .line 151
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->fmSc:Landroid/widget/FrameLayout;

    .line 152
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->contentContainer:Landroid/widget/FrameLayout;

    .line 153
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    return-void
.end method
