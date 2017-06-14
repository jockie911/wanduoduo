.class Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;
.super Ljava/lang/Object;
.source "InfoLikeTheyFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefreshListen"
.end annotation


# instance fields
.field private isFollow:I

.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;II)V
    .locals 0
    .parameter
    .parameter "isFollow"
    .parameter "position"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->this$0:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->isFollow:I

    .line 140
    iput p3, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->position:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->isFollow:I

    return v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->position:I

    return v0
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 161
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;->this$0:Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen$1;-><init>(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
