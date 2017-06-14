.class Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;
.super Ljava/lang/Object;
.source "SelectLocationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

.field final synthetic val$tvLocation:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->this$0:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->val$tvLocation:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->this$0:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->selectLocationActivity:Lcom/wanduoduo/ui/index/SelectLocationActivity;
    invoke-static {v0}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->access$000(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;)Lcom/wanduoduo/ui/index/SelectLocationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->val$tvLocation:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->val$tvLocation:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/AreaNameUtils;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;->val$tvLocation:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wanduoduo/utils/AreaNameUtils;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->setDataResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method
