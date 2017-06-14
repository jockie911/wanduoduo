.class Lu/aly/ad$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ad;


# direct methods
.method constructor <init>(Lu/aly/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lu/aly/ad$1;->a:Lu/aly/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lu/aly/ad$1;->a:Lu/aly/ad;

    invoke-static {v0, p1}, Lu/aly/ad;->b(Lu/aly/ad;Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lu/aly/ad$1;->a:Lu/aly/ad;

    invoke-static {v0, p1}, Lu/aly/ad;->a(Lu/aly/ad;Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    return-void
.end method
