.class Lcom/wanduoduo/ui/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/SplashActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/SplashActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 58
    const-string v0, "token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    const-class v3, Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/SplashActivity;->finish()V

    .line 64
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/SplashActivity$1;->this$0:Lcom/wanduoduo/ui/SplashActivity;

    const-class v3, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 54
    return-void
.end method
