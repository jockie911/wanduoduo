.class public Lcom/wanduoduo/ui/info/MsgActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "MsgActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f040040

    return v0
.end method

.method protected initData()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/wanduoduo/ui/info/MsgActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/info/MsgActivity$1;-><init>(Lcom/wanduoduo/ui/info/MsgActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 27
    return-void
.end method
