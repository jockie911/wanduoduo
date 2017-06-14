.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4$1;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->positiviButtom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 378
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4$1;->this$1:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$4;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 373
    return-void
.end method
