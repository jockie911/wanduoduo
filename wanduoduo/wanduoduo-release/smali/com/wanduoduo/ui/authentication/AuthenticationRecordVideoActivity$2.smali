.class Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$2;
.super Lcom/wanduoduo/widget/MyHandler;
.source "AuthenticationRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$2;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-direct {p0, p2}, Lcom/wanduoduo/widget/MyHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/wanduoduo/widget/MyHandler;->handleMessage(Landroid/os/Message;)V

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 350
    :cond_0
    return-void
.end method
