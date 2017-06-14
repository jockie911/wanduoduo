.class Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;
.super Ljava/lang/Object;
.source "PayOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 242
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->minTime:I
    invoke-static {v0}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$100(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 243
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime1:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->minTime:I
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$100(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I
    invoke-static {v0}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$200(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 250
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime3:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime4:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$200(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_1
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime1:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->minTime:I
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$100(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$200(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime4:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->secondTime:I
    invoke-static {v2}, Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;->access$200(Lcom/wanduoduo/ui/order/PayOrderActivity$MyTimerTask;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
