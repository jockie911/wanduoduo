.class Lcom/wanduoduo/ui/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/MainActivity$1;->onLocationSuccess(Lcom/baidu/location/BDLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/MainActivity$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/ui/MainActivity$1$1;->this$1:Lcom/wanduoduo/ui/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 185
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 180
    return-void
.end method
