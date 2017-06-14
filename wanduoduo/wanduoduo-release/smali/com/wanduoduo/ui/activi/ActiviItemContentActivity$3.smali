.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sortDiscuss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    add-int/lit8 v1, p2, 0x1

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->order:I
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$202(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I

    .line 170
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$3;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    return-void
.end method
