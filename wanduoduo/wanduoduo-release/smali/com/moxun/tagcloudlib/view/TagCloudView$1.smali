.class Lcom/moxun/tagcloudlib/view/TagCloudView$1;
.super Ljava/lang/Object;
.source "TagCloudView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moxun/tagcloudlib/view/TagCloudView;->initFromAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;


# direct methods
.method constructor <init>(Lcom/moxun/tagcloudlib/view/TagCloudView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 181
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v5}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    #setter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->centerX:F
    invoke-static {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$002(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F

    .line 182
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v5}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    #setter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->centerY:F
    invoke-static {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$102(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F

    .line 183
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->centerX:F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$000(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v4

    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F
    invoke-static {v5}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$300(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->centerY:F
    invoke-static {v5}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$100(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v5

    iget-object v6, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->radiusPercent:F
    invoke-static {v6}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$300(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    #setter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F
    invoke-static {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$202(Lcom/moxun/tagcloudlib/view/TagCloudView;F)F

    .line 184
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->radius:F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$200(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->setRadius(I)V

    .line 186
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->lightColor:[F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$500(Lcom/moxun/tagcloudlib/view/TagCloudView;)[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->setTagColorLight([F)V

    .line 187
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->darkColor:[F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$600(Lcom/moxun/tagcloudlib/view/TagCloudView;)[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->setTagColorDark([F)V

    .line 189
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/TagCloud;->clear()V

    .line 190
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->removeAllViews()V

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$700(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/TagsAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 193
    new-instance v1, Lcom/moxun/tagcloudlib/view/Tag;

    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$700(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagsAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/moxun/tagcloudlib/view/TagsAdapter;->getPopularity(I)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/moxun/tagcloudlib/view/Tag;-><init>(I)V

    .line 194
    .local v1, tag:Lcom/moxun/tagcloudlib/view/Tag;
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->tagsAdapter:Lcom/moxun/tagcloudlib/view/TagsAdapter;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$700(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v3, v4, v0, v5}, Lcom/moxun/tagcloudlib/view/TagsAdapter;->getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, view:Landroid/view/View;
    invoke-virtual {v1, v2}, Lcom/moxun/tagcloudlib/view/Tag;->setView(Landroid/view/View;)V

    .line 196
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/moxun/tagcloudlib/view/TagCloud;->add(Lcom/moxun/tagcloudlib/view/Tag;)V

    .line 197
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #calls: Lcom/moxun/tagcloudlib/view/TagCloudView;->addListener(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$800(Lcom/moxun/tagcloudlib/view/TagCloudView;Landroid/view/View;I)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1           #tag:Lcom/moxun/tagcloudlib/view/Tag;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->create(Z)V

    .line 200
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleX:F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$900(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleX(F)V

    .line 201
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    iget-object v4, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mAngleY:F
    invoke-static {v4}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$1000(Lcom/moxun/tagcloudlib/view/TagCloudView;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/moxun/tagcloudlib/view/TagCloud;->setAngleY(F)V

    .line 202
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #getter for: Lcom/moxun/tagcloudlib/view/TagCloudView;->mTagCloud:Lcom/moxun/tagcloudlib/view/TagCloud;
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$400(Lcom/moxun/tagcloudlib/view/TagCloudView;)Lcom/moxun/tagcloudlib/view/TagCloud;

    move-result-object v3

    invoke-virtual {v3}, Lcom/moxun/tagcloudlib/view/TagCloud;->update()V

    .line 204
    iget-object v3, p0, Lcom/moxun/tagcloudlib/view/TagCloudView$1;->this$0:Lcom/moxun/tagcloudlib/view/TagCloudView;

    #calls: Lcom/moxun/tagcloudlib/view/TagCloudView;->resetChildren()V
    invoke-static {v3}, Lcom/moxun/tagcloudlib/view/TagCloudView;->access$1100(Lcom/moxun/tagcloudlib/view/TagCloudView;)V

    .line 205
    return-void
.end method
