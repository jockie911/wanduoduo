.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->changePicCoverDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const-class v2, Lcom/wanduoduo/ui/info/InfoVipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "coin"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myCoin:I
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1200(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$6;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 412
    return-void
.end method
