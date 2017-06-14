.class public Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "OnLinePublishAppointmentActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;,"TT;"
    const v7, 0x7f0e0105

    const v6, 0x7f0e00e5

    const v5, 0x7f0e00d4

    const v4, 0x7f0e00bf

    const v3, 0x7f0e00be

    .line 11
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etContent:Landroid/widget/EditText;

    .line 23
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 25
    const v1, 0x7f0e01f3

    const-string v2, "field \'tvContentSize\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f3

    const-string v2, "field \'tvContentSize\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvContentSize:Landroid/widget/TextView;

    .line 27
    const-string v1, "field \'mgvTag\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvTag\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    .line 29
    const v1, 0x7f0e015d

    const-string v2, "field \'tvSexAll\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015d

    const-string v2, "field \'tvSexAll\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSexAll:Landroid/widget/TextView;

    .line 31
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e015f

    const-string v2, "field \'relFemale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015f

    const-string v2, "field \'relFemale\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relFemale:Landroid/widget/RelativeLayout;

    .line 41
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0e015e

    const-string v2, "field \'relMale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015e

    const-string v2, "field \'relMale\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relMale:Landroid/widget/RelativeLayout;

    .line 51
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0e01f0

    const-string v2, "field \'tvBuyAA\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f0

    const-string v2, "field \'tvBuyAA\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyAA:Landroid/widget/TextView;

    .line 61
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0e01f1

    const-string v2, "field \'tvBuyMe\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 70
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f1

    const-string v2, "field \'tvBuyMe\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyMe:Landroid/widget/TextView;

    .line 71
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0e01f2

    const-string v2, "field \'tvBuyThey\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 80
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f2

    const-string v2, "field \'tvBuyThey\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyThey:Landroid/widget/TextView;

    .line 81
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0e0167

    const-string v2, "field \'relTitle\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 90
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0167

    const-string v2, "field \'relTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relTitle:Landroid/widget/RelativeLayout;

    .line 91
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f0e016b

    const-string v2, "field \'llTitleTraval\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 100
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e016b

    const-string v2, "field \'llTitleTraval\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->llTitleTraval:Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f0e0168

    const-string v2, "field \'tvSubTitle\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 102
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0168

    const-string v2, "field \'tvSubTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0e0169

    const-string v2, "field \'tvRightJt\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 104
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0169

    const-string v2, "field \'tvRightJt\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightJt:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0e016a

    const-string v2, "field \'etTitle\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e016a

    const-string v2, "field \'etTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    .line 107
    const v1, 0x7f0e016d

    const-string v2, "field \'etStartPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e016d

    const-string v2, "field \'etStartPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etStartPlace:Landroid/widget/EditText;

    .line 109
    const v1, 0x7f0e016f

    const-string v2, "field \'etEndPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 110
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e016f

    const-string v2, "field \'etEndPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etEndPlace:Landroid/widget/EditText;

    .line 111
    const v1, 0x7f0e0174

    const-string v2, "field \'ivNumReduce\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 112
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0174

    const-string v2, "field \'ivNumReduce\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumReduce:Landroid/widget/ImageView;

    .line 113
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$9;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v1, 0x7f0e0176

    const-string v2, "field \'ivNumAdd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 122
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0176

    const-string v2, "field \'ivNumAdd\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumAdd:Landroid/widget/ImageView;

    .line 123
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$10;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f0e0175

    const-string v2, "field \'tvNumDay\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 132
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0175

    const-string v2, "field \'tvNumDay\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvNumDay:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0e0173

    const-string v2, "field \'relDays\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 134
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0173

    const-string v2, "field \'relDays\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relDays:Landroid/widget/RelativeLayout;

    .line 135
    const-string v1, "field \'relPlace\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 136
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relPlace\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relPlace:Landroid/widget/RelativeLayout;

    .line 137
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 138
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvTime:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f0e0170

    const-string v2, "field \'etPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 140
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0170

    const-string v2, "field \'etPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etPlace:Landroid/widget/EditText;

    .line 141
    const v1, 0x7f0e0172

    const-string v2, "field \'tvItemSelectTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 142
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0172

    const-string v2, "field \'tvItemSelectTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvItemSelectTime:Landroid/widget/TextView;

    .line 143
    const v1, 0x7f0e0171

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 144
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder$11;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;,"TT;"
    const/4 v0, 0x0

    .line 155
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 156
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etContent:Landroid/widget/EditText;

    .line 157
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 158
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvContentSize:Landroid/widget/TextView;

    .line 159
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    .line 160
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSexAll:Landroid/widget/TextView;

    .line 161
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relFemale:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relMale:Landroid/widget/RelativeLayout;

    .line 163
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyAA:Landroid/widget/TextView;

    .line 164
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyMe:Landroid/widget/TextView;

    .line 165
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyThey:Landroid/widget/TextView;

    .line 166
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relTitle:Landroid/widget/RelativeLayout;

    .line 167
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->llTitleTraval:Landroid/widget/LinearLayout;

    .line 168
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 169
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightJt:Landroid/widget/TextView;

    .line 170
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    .line 171
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etStartPlace:Landroid/widget/EditText;

    .line 172
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etEndPlace:Landroid/widget/EditText;

    .line 173
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumReduce:Landroid/widget/ImageView;

    .line 174
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumAdd:Landroid/widget/ImageView;

    .line 175
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvNumDay:Landroid/widget/TextView;

    .line 176
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relDays:Landroid/widget/RelativeLayout;

    .line 177
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relPlace:Landroid/widget/RelativeLayout;

    .line 178
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvTime:Landroid/widget/TextView;

    .line 179
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etPlace:Landroid/widget/EditText;

    .line 180
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvItemSelectTime:Landroid/widget/TextView;

    .line 181
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    return-void
.end method
