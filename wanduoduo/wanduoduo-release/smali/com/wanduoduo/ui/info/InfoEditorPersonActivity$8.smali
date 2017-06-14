.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->setRelationShip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

.field final synthetic val$relation_status:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iput p2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;->val$relation_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;->val$relation_status:I

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$8;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->user_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1300(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->follow(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1400(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;ILjava/lang/String;)V

    .line 436
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void
.end method
