.class Lio/rong/imkit/activity/PictureSelectorActivity$6;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 173
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 176
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    .line 177
    iget-object v5, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v5}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    .local v4, key:Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v5}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    .line 179
    .local v3, item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    iget-boolean v5, v3, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    if-eqz v5, :cond_1

    .line 180
    sget-object v5, Lio/rong/imkit/activity/PictureSelectorActivity$PicItemHolder;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    const-class v6, Lio/rong/imkit/activity/PicturePreviewActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "sendOrigin"

    iget-object v6, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mSendOrigin:Z
    invoke-static {v6}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$300(Lio/rong/imkit/activity/PictureSelectorActivity;)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v5, p0, Lio/rong/imkit/activity/PictureSelectorActivity$6;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lio/rong/imkit/activity/PictureSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method
