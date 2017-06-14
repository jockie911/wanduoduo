.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$6;
.super Landroid/os/Handler;
.source "ActiviAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$6;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$6;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method
