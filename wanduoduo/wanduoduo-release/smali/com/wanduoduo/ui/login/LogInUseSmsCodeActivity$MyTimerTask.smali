.class Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "LogInUseSmsCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

.field private timell:J


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;J)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 127
    iput-wide p2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;->timell:J

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;->timell:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    new-instance v1, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask$1;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
