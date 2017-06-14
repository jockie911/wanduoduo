.class Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$3;
.super Ljava/lang/Object;
.source "AppointmentItemDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->alertDialog()V
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
    .line 179
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$3;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 182
    if-nez p2, :cond_1

    .line 183
    const-string v0, "\u4e3e\u62a5\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$3;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    #calls: Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->deleteItemAppoint()V
    invoke-static {v0}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->access$200(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    goto :goto_0
.end method
