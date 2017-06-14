.class Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;
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
    .line 133
    iput-object p1, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->this$0:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->val$itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->val$itemData:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getDate_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "piclist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 140
    const-string v2, "position"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
