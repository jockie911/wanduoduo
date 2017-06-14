.class abstract Landroid/support/v4/app/BaseFragmentActivityEclair;
.super Landroid/support/v4/app/BaseFragmentActivityDonut;
.source "BaseFragmentActivityEclair.java"


# instance fields
.field mStartedIntentSenderFromFragment:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;-><init>()V

    return-void
.end method

.method static checkForValidRequestCode(I)V
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 63
    const/high16 v0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method onBackPressedNotHandled()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->onBackPressed()V

    .line 56
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .parameter "intent"
    .end parameter
    .parameter "requestCode"
    .end parameter
    .parameter "fillInIntent"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "flagsMask"
    .end parameter
    .parameter "flagsValues"
    .end parameter
    .parameter "extraFlags"
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityEclair;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 45
    invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityEclair;->checkForValidRequestCode(I)V

    .line 48
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityDonut;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 50
    return-void
.end method
