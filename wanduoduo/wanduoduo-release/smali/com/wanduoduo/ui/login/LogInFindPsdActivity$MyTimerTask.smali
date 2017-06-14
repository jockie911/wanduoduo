.class Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "LogInFindPsdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/login/LogInFindPsdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

.field private timell:J


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;J)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 156
    iput-wide p2, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->timell:J

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->timell:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    new-instance v1, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;-><init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method
