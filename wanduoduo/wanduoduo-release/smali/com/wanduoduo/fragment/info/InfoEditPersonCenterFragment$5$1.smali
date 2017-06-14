.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5$1;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5$1;->this$1:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 249
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5$1;->this$1:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$5;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    #getter for: Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->myHandler:Lcom/wanduoduo/widget/MyHandler;
    invoke-static {v0}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->access$300(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)Lcom/wanduoduo/widget/MyHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 244
    return-void
.end method
