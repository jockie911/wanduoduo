.class Lcom/wanduoduo/ui/info/CouponsActivity$1$2;
.super Ljava/lang/Object;
.source "CouponsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/CouponsActivity$1;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/CouponsActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$2;->this$1:Lcom/wanduoduo/ui/info/CouponsActivity$1;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$2;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wanduoduo/ui/info/CouponsActivity$1$2;->val$errMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 101
    return-void
.end method
