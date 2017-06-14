.class public Lio/rong/imkit/widget/LoadingDialogFragment;
.super Lio/rong/imkit/widget/BaseDialogFragment;
.source "LoadingDialogFragment.java"


# static fields
.field private static final ARGS_MESSAGE:Ljava/lang/String; = "args_message"

.field private static final ARGS_TITLE:Ljava/lang/String; = "args_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/rong/imkit/widget/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/widget/LoadingDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 23
    new-instance v1, Lio/rong/imkit/widget/LoadingDialogFragment;

    invoke-direct {v1}, Lio/rong/imkit/widget/LoadingDialogFragment;-><init>()V

    .line 24
    .local v1, dialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "args_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "args_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lio/rong/imkit/widget/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lio/rong/imkit/widget/LoadingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lio/rong/imkit/widget/LoadingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/widget/LoadingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    return-object v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 58
    const-string v0, "LoadingDialogFragment"

    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    return-void
.end method
