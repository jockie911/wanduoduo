.class Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$3;
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
    .line 108
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$3;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    return-void
.end method
