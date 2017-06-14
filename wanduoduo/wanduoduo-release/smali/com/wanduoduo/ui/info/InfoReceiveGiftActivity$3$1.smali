.class Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3$1;
.super Ljava/lang/Object;
.source "InfoReceiveGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3$1;->this$1:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3$1;->this$1:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvRenqi:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3$1;->this$1:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvCharming:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-string v0, "\u63d0\u73b0\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 98
    return-void
.end method
