.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field private isFollow:I

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;I)V
    .locals 0
    .parameter
    .parameter "isFollow"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p2, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->isFollow:I

    .line 465
    return-void
.end method

.method static synthetic access$1500(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->isFollow:I

    return v0
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 490
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$MyOnRefreshListen;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method
