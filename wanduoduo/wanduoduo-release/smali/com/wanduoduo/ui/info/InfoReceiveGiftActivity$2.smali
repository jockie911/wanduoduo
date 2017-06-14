.class Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;
.super Ljava/lang/Object;
.source "InfoReceiveGiftActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->alertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 73
    const-string v0, "0"

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->tvCharming:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "\u60a8\u73b0\u5728\u4e0d\u53ef\u4ee5\u5151\u6362"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->makeSureTiXian()V
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->access$000(Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;)V

    goto :goto_0
.end method
