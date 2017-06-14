.class public Lcom/wanduoduo/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/utils/DialogUtils$DialogIF;,
        Lcom/wanduoduo/utils/DialogUtils$DialogInterface;
    }
.end annotation


# static fields
.field private static builder:Landroid/support/v7/app/AlertDialog;

.field private static dialogUtils:Lcom/wanduoduo/utils/DialogUtils;


# instance fields
.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstence()Lcom/wanduoduo/utils/DialogUtils;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wanduoduo/utils/DialogUtils;->dialogUtils:Lcom/wanduoduo/utils/DialogUtils;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/wanduoduo/utils/DialogUtils;

    invoke-direct {v0}, Lcom/wanduoduo/utils/DialogUtils;-><init>()V

    sput-object v0, Lcom/wanduoduo/utils/DialogUtils;->dialogUtils:Lcom/wanduoduo/utils/DialogUtils;

    .line 31
    :cond_0
    sget-object v0, Lcom/wanduoduo/utils/DialogUtils;->dialogUtils:Lcom/wanduoduo/utils/DialogUtils;

    return-object v0
.end method

.method public static varargs loading(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 107
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    .line 108
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, inflate:Landroid/view/View;
    sget-object v2, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 110
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 111
    const v2, 0x7f0e020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, tvContent:Landroid/widget/TextView;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v1           #tvContent:Landroid/widget/TextView;
    :cond_0
    sget-object v2, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 121
    return-void
.end method

.method public static loadingDismiss()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/wanduoduo/utils/DialogUtils;->builder:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 125
    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/wanduoduo/utils/DialogUtils$DialogIF;)V
    .locals 4
    .parameter "context"
    .parameter "message"
    .parameter "df"

    .prologue
    .line 128
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/utils/DialogUtils$2;

    invoke-direct {v2, p2}, Lcom/wanduoduo/utils/DialogUtils$2;-><init>(Lcom/wanduoduo/utils/DialogUtils$DialogIF;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/utils/DialogUtils$1;

    invoke-direct {v3}, Lcom/wanduoduo/utils/DialogUtils$1;-><init>()V

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 142
    return-void
.end method


# virtual methods
.method public dialogDismiss()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method

.method public getAlertDialog(Landroid/content/Context;I)Landroid/support/v7/app/AlertDialog;
    .locals 3
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 76
    iget-object v1, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v1
.end method

.method public getAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wanduoduo/utils/DialogUtils$DialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 8
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "leftTvContent"
    .parameter "rightTvContent"
    .parameter "dialogInterface"

    .prologue
    .line 45
    iget-object v5, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v5, :cond_0

    .line 46
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 47
    :cond_0
    iput-object p6, p0, Lcom/wanduoduo/utils/DialogUtils;->dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040071

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 50
    iget-object v5, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 51
    const v5, 0x7f0e01ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    .local v3, tvTitle:Landroid/widget/TextView;
    const v5, 0x7f0e0144

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, tvMsg:Landroid/widget/TextView;
    const v5, 0x7f0e0210

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, tvLefrContent:Landroid/widget/TextView;
    const v5, 0x7f0e0211

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, tvRightContent:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v5, p0, Lcom/wanduoduo/utils/DialogUtils;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;

    invoke-interface {v0}, Lcom/wanduoduo/utils/DialogUtils$DialogInterface;->leftTvClick()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/utils/DialogUtils;->dialogDismiss()V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/wanduoduo/utils/DialogUtils;->dialogInterface:Lcom/wanduoduo/utils/DialogUtils$DialogInterface;

    invoke-interface {v0}, Lcom/wanduoduo/utils/DialogUtils$DialogInterface;->rightTvClick()V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/wanduoduo/utils/DialogUtils;->dialogDismiss()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f0e0210
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
