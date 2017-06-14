.class Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;
.super Ljava/lang/Object;
.source "AppointmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

.field final synthetic val$itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;Landroid/view/ViewGroup;Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->this$0:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->val$itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->val$itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
