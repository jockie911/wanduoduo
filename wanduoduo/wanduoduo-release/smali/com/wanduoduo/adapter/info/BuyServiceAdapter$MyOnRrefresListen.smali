.class Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;
.super Ljava/lang/Object;
.source "BuyServiceAdapter.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/adapter/info/BuyServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRrefresListen"
.end annotation


# instance fields
.field private position:I

.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->requestCode:I

    .line 296
    return-void
.end method

.method public constructor <init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V
    .locals 0
    .parameter
    .parameter "requestCode"
    .parameter "position"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->requestCode:I

    .line 300
    iput p3, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->position:I

    .line 301
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 318
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 305
    iget v1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->requestCode:I

    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 308
    .local v0, obtain:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    iget v1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;->this$0:Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
