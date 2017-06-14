.class Lcom/wanduoduo/fragment/online/AppointmentFragment$1;
.super Ljava/lang/Object;
.source "AppointmentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/online/AppointmentFragment;->setHzlv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

.field final synthetic val$onLineAppointmentHZLVAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/online/AppointmentFragment;Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    iput-object p2, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->val$onLineAppointmentHZLVAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->val$onLineAppointmentHZLVAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;

    invoke-virtual {v0, p3}, Lcom/wanduoduo/adapter/online/OnLineAppointmentHZLVAdapter;->setSelectedPostion(I)V

    .line 86
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    #getter for: Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I
    invoke-static {v1}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->access$100(Lcom/wanduoduo/fragment/online/AppointmentFragment;)I

    move-result v1

    #setter for: Lcom/wanduoduo/fragment/online/AppointmentFragment;->beforeSelectedPosition:I
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->access$002(Lcom/wanduoduo/fragment/online/AppointmentFragment;I)I

    .line 87
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    #setter for: Lcom/wanduoduo/fragment/online/AppointmentFragment;->currentSelectedPosition:I
    invoke-static {v0, p3}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->access$202(Lcom/wanduoduo/fragment/online/AppointmentFragment;I)I

    .line 88
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentFragment$1;->this$0:Lcom/wanduoduo/fragment/online/AppointmentFragment;

    #calls: Lcom/wanduoduo/fragment/online/AppointmentFragment;->dealWithFragment()V
    invoke-static {v0}, Lcom/wanduoduo/fragment/online/AppointmentFragment;->access$300(Lcom/wanduoduo/fragment/online/AppointmentFragment;)V

    .line 89
    return-void
.end method
