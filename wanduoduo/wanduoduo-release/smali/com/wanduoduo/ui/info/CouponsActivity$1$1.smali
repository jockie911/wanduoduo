.class Lcom/wanduoduo/ui/info/CouponsActivity$1$1;
.super Ljava/lang/Object;
.source "CouponsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/CouponsActivity$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/CouponsActivity$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$1;->this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$1;->this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/CouponsActivity$1;->this$0:Lcom/wanduoduo/ui/info/CouponsActivity;

    #getter for: Lcom/wanduoduo/ui/info/CouponsActivity;->infoCouponsFragment:Lcom/wanduoduo/fragment/info/InfoCouponsFragment;
    invoke-static {v0}, Lcom/wanduoduo/ui/info/CouponsActivity;->access$000(Lcom/wanduoduo/ui/info/CouponsActivity;)Lcom/wanduoduo/fragment/info/InfoCouponsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->onRefreshing()V

    .line 89
    const-string v0, "\u5151\u6362\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$1;->this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/CouponsActivity$1;->this$0:Lcom/wanduoduo/ui/info/CouponsActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/CouponsActivity;->etCouponsSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
