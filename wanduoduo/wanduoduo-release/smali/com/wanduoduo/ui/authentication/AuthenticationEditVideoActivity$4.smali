.class Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$4;
.super Ljava/lang/Object;
.source "AuthenticationEditVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->alertDeleteVideo()V
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
    .line 102
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$4;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$4;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->deleteVideoRequest()V
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->access$100(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 107
    return-void
.end method
