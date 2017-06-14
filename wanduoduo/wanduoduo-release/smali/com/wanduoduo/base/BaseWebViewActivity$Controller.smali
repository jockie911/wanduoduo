.class Lcom/wanduoduo/base/BaseWebViewActivity$Controller;
.super Ljava/lang/Object;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Controller"
.end annotation


# static fields
.field static final FILE_SELECTED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseWebViewActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/wanduoduo/base/BaseWebViewActivity$Controller;->this$0:Lcom/wanduoduo/base/BaseWebViewActivity;

    return-object v0
.end method
