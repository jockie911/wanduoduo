.class Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/rong/imkit/activity/PictureSelectorActivity;


# direct methods
.method public constructor <init>(Lio/rong/imkit/activity/PictureSelectorActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 414
    invoke-virtual {p1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 415
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    .line 419
    const/4 v2, 0x1

    .line 420
    .local v2, sum:I
    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 423
    goto :goto_0

    .line 425
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v4}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 427
    :cond_1
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 437
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_picsel_grid_camera:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 445
    .local v12, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->camera_mask:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 446
    .local v11, mask:Landroid/widget/ImageButton;
    new-instance v1, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$1;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    .end local v11           #mask:Landroid/widget/ImageButton;
    :goto_0
    return-object v12

    .line 476
    .end local v12           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mAllItemList:Ljava/util/List;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$100(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    .line 482
    .local v10, item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    :goto_1
    move-object/from16 v12, p2

    .line 484
    .restart local v12       #view:Landroid/view/View;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 485
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_picsel_grid_item:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 486
    new-instance v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;Lio/rong/imkit/activity/PictureSelectorActivity$1;)V

    .line 487
    .local v9, holder:Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;
    sget v1, Lio/rong/imkit/R$id;->image:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 488
    sget v1, Lio/rong/imkit/R$id;->mask:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->mask:Landroid/view/View;

    .line 489
    sget v1, Lio/rong/imkit/R$id;->checkbox:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->checkBox:Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;

    .line 490
    invoke-virtual {v12, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 495
    :goto_2
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    .local v2, path:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->removePathFromShowlist(Ljava/lang/String;)V

    .line 500
    .end local v2           #path:Ljava/lang/String;
    :cond_2
    iget-object v2, v10, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    .line 501
    .restart local v2       #path:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->addPathToShowlist(Ljava/lang/String;)V

    .line 502
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 503
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v3

    iget-object v4, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v4}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v4

    new-instance v5, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$2;

    invoke-direct {v5, p0}, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$2;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v13

    invoke-virtual/range {v1 .. v6}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 515
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 516
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 517
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_3
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->checkBox:Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;

    iget-boolean v3, v10, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    invoke-virtual {v1, v3}, Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;->setChecked(Z)V

    .line 523
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->checkBox:Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;

    new-instance v3, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$3;

    invoke-direct {v3, p0, v9, v10}, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$3;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;)V

    invoke-virtual {v1, v3}, Lio/rong/imkit/activity/PictureSelectorActivity$SelectBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-boolean v1, v10, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->selected:Z

    if-eqz v1, :cond_6

    .line 542
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->mask:Landroid/view/View;

    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$color;->rc_picsel_grid_mask_pressed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 479
    .end local v2           #path:Ljava/lang/String;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #holder:Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;
    .end local v10           #item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    .end local v12           #view:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    #calls: Lio/rong/imkit/activity/PictureSelectorActivity;->getItemAt(Ljava/lang/String;I)Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    invoke-static {v1, v3, v4}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1000(Lio/rong/imkit/activity/PictureSelectorActivity;Ljava/lang/String;I)Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    move-result-object v10

    .restart local v10       #item:Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;
    goto/16 :goto_1

    .line 492
    .restart local v12       #view:Landroid/view/View;
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;

    .restart local v9       #holder:Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;
    goto/16 :goto_2

    .line 519
    .restart local v2       #path:Ljava/lang/String;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v3, Lio/rong/imkit/R$drawable;->rc_grid_image_default:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 544
    :cond_6
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter$ViewHolder;->mask:Landroid/view/View;

    iget-object v3, p0, Lio/rong/imkit/activity/PictureSelectorActivity$GridViewAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$drawable;->rc_sp_grid_mask:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
