.class Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationSkillOrCarActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 1
    .parameter "data"
    .parameter "function"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationSkillOrCarActivity;->finish()V

    .line 28
    return-void
.end method
