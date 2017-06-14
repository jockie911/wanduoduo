.class Lio/rong/imkit/activity/PictureSelectorActivity$3;
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
    .line 125
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 128
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    .line 133
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mAllItemList:Ljava/util/List;
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$100(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    const-class v2, Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "sendOrigin"

    iget-object v2, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mSendOrigin:Z
    invoke-static {v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$300(Lio/rong/imkit/activity/PictureSelectorActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/rong/imkit/activity/PictureSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 136
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    sget-object v2, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$3;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
