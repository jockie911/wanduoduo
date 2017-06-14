.class Lcom/wanduoduo/fragment/InfoFragment$5;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment;->clickToAuthVideoDialog()V
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
    .line 313
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$5;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$5;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/InfoFragment$5;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    #getter for: Lcom/wanduoduo/fragment/InfoFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wanduoduo/fragment/InfoFragment;->access$500(Lcom/wanduoduo/fragment/InfoFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/fragment/InfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 318
    return-void
.end method
