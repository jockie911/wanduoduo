.class Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$8;
.super Ljava/lang/Object;
.source "InfoVipChongZhiActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity$8;->this$0:Lcom/wanduoduo/ui/info/InfoVipChongZhiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 151
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 146
    return-void
.end method
