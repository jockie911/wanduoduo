.class Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;
.super Ljava/lang/Object;
.source "InfoEditTagActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditTagActivity;->makeSurePosTag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 192
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
