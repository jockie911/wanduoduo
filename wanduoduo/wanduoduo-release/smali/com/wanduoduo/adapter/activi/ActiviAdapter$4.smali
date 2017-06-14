.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;->val$i:I

    #calls: Lcom/wanduoduo/adapter/activi/ActiviAdapter;->alertEditViewType(I)V
    invoke-static {v0, v1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->access$200(Lcom/wanduoduo/adapter/activi/ActiviAdapter;I)V

    .line 209
    return-void
.end method
