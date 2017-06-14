.class Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$1;
.super Ljava/lang/Object;
.source "PayOrderCompleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->dialogDeleteOrder()V
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
    .line 122
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$1;->this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 125
    if-nez p2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$1;->this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    #calls: Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->dialogMakeSureDelete()V
    invoke-static {v0}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->access$000(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
