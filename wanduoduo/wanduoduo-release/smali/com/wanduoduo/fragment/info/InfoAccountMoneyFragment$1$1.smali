.class Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;
.super Ljava/lang/Object;
.source "InfoAccountMoneyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->tvMoneyIn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_in:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$000(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->tvMonryDraw:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_draw:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$100(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->tvMonry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;->this$1:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$200(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
