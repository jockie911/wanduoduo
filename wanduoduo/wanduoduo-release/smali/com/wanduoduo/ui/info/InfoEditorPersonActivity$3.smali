.class Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$3;
.super Ljava/lang/Object;
.source "InfoEditorPersonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity$3;->this$0:Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->jumpToChargeCoin()V
    invoke-static {v0}, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;->access$1000(Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;)V

    .line 311
    return-void
.end method
