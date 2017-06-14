.class Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$5;
.super Ljava/lang/Object;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->makeSureBackResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$5;->this$0:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 370
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 365
    return-void
.end method
