.class Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;
.super Ljava/lang/Object;
.source "AppointmentItemDetailActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->deleteItemAppoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 208
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 198
    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-static {v1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    iget-object v2, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    #getter for: Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->position:I
    invoke-static {v2}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->access$300(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    iget-object v1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$4;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-virtual {v1}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->finish()V

    .line 203
    return-void
.end method
