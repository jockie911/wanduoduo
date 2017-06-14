.class Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;
.super Ljava/lang/Object;
.source "LogInFindPsdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    .local v0, l:J
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    #getter for: Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->timell:J
    invoke-static {v3}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->access$000(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 166
    .local v2, t:I
    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 169
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    #getter for: Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->timer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->access$100(Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask$1;->this$1:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$MyTimerTask;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->tvGetSmsCode:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5269\u4f59"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rsub-int/lit8 v5, v2, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
