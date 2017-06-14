.class public Lio/rong/imkit/widget/ArraysDialogFragment;
.super Lio/rong/imkit/widget/BaseDialogFragment;
.source "ArraysDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;
    }
.end annotation


# static fields
.field private static final ARGS_ARRAYS:Ljava/lang/String; = "args_arrays"

.field private static final ARGS_TITLE:Ljava/lang/String; = "args_title"


# instance fields
.field private count:I

.field private mItemListener:Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lio/rong/imkit/widget/BaseDialogFragment;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/ArraysDialogFragment;)Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lio/rong/imkit/widget/ArraysDialogFragment;->mItemListener:Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "arrays"

    .prologue
    .line 24
    new-instance v1, Lio/rong/imkit/widget/ArraysDialogFragment;

    invoke-direct {v1}, Lio/rong/imkit/widget/ArraysDialogFragment;-><init>()V

    .line 25
    .local v1, dialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "args_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "args_arrays"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lio/rong/imkit/widget/ArraysDialogFragment;->count:I

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lio/rong/imkit/widget/ArraysDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/widget/ArraysDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_arrays"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, arrays:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/widget/ArraysDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    .line 42
    array-length v3, v0

    invoke-virtual {p0, v3}, Lio/rong/imkit/widget/ArraysDialogFragment;->setCount(I)V

    .line 44
    new-instance v3, Lio/rong/imkit/widget/ArraysDialogFragment$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/widget/ArraysDialogFragment$1;-><init>(Lio/rong/imkit/widget/ArraysDialogFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;
    .locals 0
    .parameter "mItemListener"

    .prologue
    .line 66
    iput-object p1, p0, Lio/rong/imkit/widget/ArraysDialogFragment;->mItemListener:Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;

    .line 67
    return-object p0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 62
    iput p1, p0, Lio/rong/imkit/widget/ArraysDialogFragment;->count:I

    .line 63
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 76
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const-string v1, "ArraysDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    return-void
.end method
