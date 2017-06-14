.class Lio/rong/imkit/activity/PictureSelectorActivity$8;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PictureSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x8

    .line 205
    if-nez p3, :cond_0

    .line 206
    const-string v0, ""

    .line 210
    .local v0, catalog:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogView:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$400(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_1
    return-void

    .line 208
    .end local v0           #catalog:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogList:Ljava/util/List;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$500(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #catalog:Ljava/lang/String;
    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #setter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v2, v0}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$002(Lio/rong/imkit/activity/PictureSelectorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    sget v2, Lio/rong/imkit/R$id;->name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mPicType:Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$600(Lio/rong/imkit/activity/PictureSelectorActivity;)Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/activity/PictureSelectorActivity$PicTypeBtn;->setText(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogView:Landroid/view/View;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$400(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogListView:Landroid/widget/ListView;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$700(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->notifyDataSetChanged()V

    .line 220
    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$8;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$800(Lio/rong/imkit/activity/PictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
