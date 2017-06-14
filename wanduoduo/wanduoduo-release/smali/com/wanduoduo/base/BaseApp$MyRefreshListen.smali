.class Lcom/wanduoduo/base/BaseApp$MyRefreshListen;
.super Ljava/lang/Object;
.source "BaseApp.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRefreshListen"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/wanduoduo/base/BaseApp;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/base/BaseApp;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wanduoduo/base/BaseApp$MyRefreshListen;->this$0:Lcom/wanduoduo/base/BaseApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lcom/wanduoduo/base/BaseApp$MyRefreshListen;->position:I

    .line 215
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 229
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 219
    iget v0, p0, Lcom/wanduoduo/base/BaseApp$MyRefreshListen;->position:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const-string v0, "city_select"

    invoke-static {v0, p1}, Lcom/wanduoduo/utils/SPUtils;->savaStringData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
