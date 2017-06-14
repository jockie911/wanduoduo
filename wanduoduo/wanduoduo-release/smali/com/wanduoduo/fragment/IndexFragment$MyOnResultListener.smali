.class Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/fragment/IndexFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private requestCode:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "requestCode"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;->requestCode:I

    .line 413
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 427
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 417
    iget v0, p0, Lcom/wanduoduo/fragment/IndexFragment$MyOnResultListener;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 419
    :pswitch_0
    const-class v0, Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean;

    invoke-static {v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$1502(Lcom/wanduoduo/bean/IndexTagListBean;)Lcom/wanduoduo/bean/IndexTagListBean;

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
