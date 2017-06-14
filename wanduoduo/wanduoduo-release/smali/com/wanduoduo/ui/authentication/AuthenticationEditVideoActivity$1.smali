.class Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationEditVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 65
    if-nez p2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    const-class v3, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->alertDeleteVideo()V
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    goto :goto_0
.end method
