.class Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AppointmentFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/online/AppointmentFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/online/AppointmentFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;Lcom/wanduoduo/fragment/online/AppointmentFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 14
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 18
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->onClick(Landroid/view/View;)V

    .line 19
    return-void
.end method
