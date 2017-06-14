.class Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$1;
.super Ljava/lang/Object;
.source "AppointmentItemDetailActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/UserInfoUtils$OnResquestSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->initData()V
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
    .line 114
    iput-object p1, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$1;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/wanduoduo/bean/InfoBean;)V
    .locals 2
    .parameter "infoBean"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$1;->this$0:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBean;->getData()Lcom/wanduoduo/bean/InfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean;->getIs_system()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->isSystem:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->access$002(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    return-void
.end method
