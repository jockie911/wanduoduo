.class public Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/eventbus/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lio/rong/eventbus/EventBus;

.field private executionScope:Ljava/lang/Object;

.field protected finishAfterDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "executionScope"
    .parameter "finishAfterDialog"
    .parameter "argumentsForErrorDialog"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 147
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;

    .line 149
    .local v1, fragment:Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;
    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;

    .end local v1           #fragment:Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;
    invoke-direct {v1}, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;-><init>()V

    .line 151
    .restart local v1       #fragment:Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 152
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 154
    :cond_0
    iput-boolean p2, v1, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    .line 155
    iput-object p3, v1, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 156
    iput-object p1, v1, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    .line 157
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lio/rong/eventbus/util/ThrowableFailureEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 122
    iget-object v3, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    #calls: Lio/rong/eventbus/util/ErrorDialogManager;->isInExecutionScope(Ljava/lang/Object;Lio/rong/eventbus/util/ThrowableFailureEvent;)Z
    invoke-static {v3, p1}, Lio/rong/eventbus/util/ErrorDialogManager;->access$000(Ljava/lang/Object;Lio/rong/eventbus/util/ThrowableFailureEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {p1}, Lio/rong/eventbus/util/ErrorDialogManager;->checkLogException(Lio/rong/eventbus/util/ThrowableFailureEvent;)V

    .line 128
    invoke-virtual {p0}, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 129
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 131
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 133
    .local v1, existingFragment:Landroid/app/DialogFragment;
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 138
    :cond_2
    sget-object v3, Lio/rong/eventbus/util/ErrorDialogManager;->factory:Lio/rong/eventbus/util/ErrorDialogFragmentFactory;

    iget-boolean v4, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    iget-object v5, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    invoke-virtual {v3, p1, v4, v5}, Lio/rong/eventbus/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lio/rong/eventbus/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 140
    .local v0, errorFragment:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 141
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 111
    sget-object v0, Lio/rong/eventbus/util/ErrorDialogManager;->factory:Lio/rong/eventbus/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lio/rong/eventbus/util/ErrorDialogFragmentFactory;->config:Lio/rong/eventbus/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lio/rong/eventbus/util/ErrorDialogConfig;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lio/rong/eventbus/EventBus;

    .line 112
    iget-object v0, p0, Lio/rong/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
