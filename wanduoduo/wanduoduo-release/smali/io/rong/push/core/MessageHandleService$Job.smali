.class public Lio/rong/push/core/MessageHandleService$Job;
.super Ljava/lang/Object;
.source "MessageHandleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/MessageHandleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Job"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private receiver:Lio/rong/push/notification/PushMessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lio/rong/push/notification/PushMessageReceiver;)V
    .locals 0
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lio/rong/push/core/MessageHandleService$Job;->receiver:Lio/rong/push/notification/PushMessageReceiver;

    .line 284
    iput-object p1, p0, Lio/rong/push/core/MessageHandleService$Job;->intent:Landroid/content/Intent;

    .line 285
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lio/rong/push/core/MessageHandleService$Job;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getReceiver()Lio/rong/push/notification/PushMessageReceiver;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lio/rong/push/core/MessageHandleService$Job;->receiver:Lio/rong/push/notification/PushMessageReceiver;

    return-object v0
.end method
