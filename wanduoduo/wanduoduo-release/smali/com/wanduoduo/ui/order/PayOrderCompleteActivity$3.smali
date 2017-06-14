.class Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$3;
.super Ljava/lang/Object;
.source "PayOrderCompleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->dialogMakeSureDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$3;->this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$3;->this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    #calls: Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->deleteOrder(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->access$100(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;Landroid/content/DialogInterface;)V

    .line 146
    return-void
.end method
