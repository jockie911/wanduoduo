.class public Lio/rong/imkit/widget/AlterDialogFragment;
.super Lio/rong/imkit/widget/BaseDialogFragment;
.source "AlterDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;
    }
.end annotation


# static fields
.field private static final ARGS_CANCEL_BTN_TXT:Ljava/lang/String; = "args_cancel_button_text"

.field private static final ARGS_MESSAGE:Ljava/lang/String; = "args_message"

.field private static final ARGS_OK_BTN_TXT:Ljava/lang/String; = "args_ok_button_text"

.field private static final ARGS_TITLE:Ljava/lang/String; = "args_title"


# instance fields
.field private mAlterDialogBtnListener:Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lio/rong/imkit/widget/BaseDialogFragment;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/AlterDialogFragment;)Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lio/rong/imkit/widget/AlterDialogFragment;->mAlterDialogBtnListener:Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/widget/AlterDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "cancelBtnText"
    .parameter "okBtnText"

    .prologue
    .line 27
    new-instance v1, Lio/rong/imkit/widget/AlterDialogFragment;

    invoke-direct {v1}, Lio/rong/imkit/widget/AlterDialogFragment;-><init>()V

    .line 28
    .local v1, dialogFragment:Lio/rong/imkit/widget/AlterDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "args_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "args_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "args_cancel_button_text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "args_ok_button_text"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/AlterDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lio/rong/imkit/widget/AlterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/widget/AlterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/widget/AlterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_cancel_button_text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, cancelBtnText:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/widget/AlterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_ok_button_text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, okBtnText:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/widget/AlterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    new-instance v5, Lio/rong/imkit/widget/AlterDialogFragment$1;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/AlterDialogFragment$1;-><init>(Lio/rong/imkit/widget/AlterDialogFragment;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 69
    new-instance v5, Lio/rong/imkit/widget/AlterDialogFragment$2;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/AlterDialogFragment$2;-><init>(Lio/rong/imkit/widget/AlterDialogFragment;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setOnAlterDialogBtnListener(Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;)V
    .locals 0
    .parameter "alterDialogListener"

    .prologue
    .line 94
    iput-object p1, p0, Lio/rong/imkit/widget/AlterDialogFragment;->mAlterDialogBtnListener:Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;

    .line 95
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 89
    const-string v0, "AlterDialogFragment"

    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/widget/AlterDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method
