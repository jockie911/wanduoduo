.class Lcom/wanduoduo/fragment/InfoFragment$6;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment;->skillAuthenticationAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/InfoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$6;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$6;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #calls: Lcom/wanduoduo/fragment/InfoFragment;->skillAuthentication()V
    invoke-static {v0}, Lcom/wanduoduo/fragment/InfoFragment;->access$600(Lcom/wanduoduo/fragment/InfoFragment;)V

    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 342
    return-void
.end method
