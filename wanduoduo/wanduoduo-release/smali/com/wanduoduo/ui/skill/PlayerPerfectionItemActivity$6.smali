.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$6;
.super Lcom/wanduoduo/widget/MyHandler;
.source "PlayerPerfectionItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$6;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    #calls: Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setCityPicker()V
    invoke-static {v0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->access$300(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
