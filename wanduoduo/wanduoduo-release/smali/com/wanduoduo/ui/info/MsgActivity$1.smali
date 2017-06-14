.class Lcom/wanduoduo/ui/info/MsgActivity$1;
.super Ljava/lang/Object;
.source "MsgActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/MsgActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/MsgActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/MsgActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wanduoduo/ui/info/MsgActivity$1;->this$0:Lcom/wanduoduo/ui/info/MsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSuccess(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 25
    return-void
.end method
