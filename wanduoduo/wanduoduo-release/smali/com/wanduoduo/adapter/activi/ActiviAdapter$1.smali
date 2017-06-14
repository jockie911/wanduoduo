.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;
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

.field final synthetic val$holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->val$holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    iput p3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->val$holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    iget v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;->val$i:I

    #calls: Lcom/wanduoduo/adapter/activi/ActiviAdapter;->zan(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->access$100(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V

    .line 166
    return-void
.end method
