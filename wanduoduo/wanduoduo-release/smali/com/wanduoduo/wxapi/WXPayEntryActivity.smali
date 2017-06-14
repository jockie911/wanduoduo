.class public Lcom/wanduoduo/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .parameter "baseReq"

    .prologue
    .line 19
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .parameter "resp"

    .prologue
    .line 23
    const-string v0, ""

    .line 25
    .local v0, msg:Ljava/lang/String;
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v1, :cond_2

    .line 26
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 36
    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 38
    :cond_1
    return-void

    .line 28
    :cond_2
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 29
    const-string v0, "\u5df2\u53d6\u6d88\u652f\u4ed8"

    goto :goto_0

    .line 31
    :cond_3
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 32
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0
.end method
