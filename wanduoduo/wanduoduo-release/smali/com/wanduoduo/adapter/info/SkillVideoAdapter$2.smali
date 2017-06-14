.class Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;
.super Ljava/lang/Object;
.source "SkillVideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/info/SkillVideoAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->this$0:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->this$0:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    #getter for: Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->onDeleteListen:Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;
    invoke-static {v0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->access$000(Lcom/wanduoduo/adapter/info/SkillVideoAdapter;)Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->val$i:I

    invoke-interface {v0, v1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;->onDelete(I)V

    .line 94
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->this$0:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->mUrlList:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter$2;->this$0:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
