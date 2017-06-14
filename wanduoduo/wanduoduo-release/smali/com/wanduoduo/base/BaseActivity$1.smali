.class Lcom/wanduoduo/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/base/BaseActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/base/BaseActivity$1;->this$0:Lcom/wanduoduo/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wanduoduo/base/BaseActivity$1;->this$0:Lcom/wanduoduo/base/BaseActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/base/BaseActivity;->finish()V

    .line 74
    return-void
.end method
