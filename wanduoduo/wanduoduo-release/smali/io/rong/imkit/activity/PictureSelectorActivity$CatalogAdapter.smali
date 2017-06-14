.class Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CatalogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;
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
    .line 561
    iput-object p1, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 562
    invoke-virtual {p1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 563
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v0}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 577
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 583
    move-object/from16 v13, p2

    .line 584
    .local v13, view:Landroid/view/View;
    if-nez v13, :cond_1

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_picsel_catalog_listview:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 586
    new-instance v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1}, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;Lio/rong/imkit/activity/PictureSelectorActivity$1;)V

    .line 587
    .local v9, holder:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;
    sget v1, Lio/rong/imkit/R$id;->image:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 588
    sget v1, Lio/rong/imkit/R$id;->name:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 589
    sget v1, Lio/rong/imkit/R$id;->number:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 590
    sget v1, Lio/rong/imkit/R$id;->selected:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->selected:Landroid/widget/ImageView;

    .line 591
    invoke-virtual {v13, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 596
    :goto_0
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 598
    .local v2, path:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->removePathFromShowlist(Ljava/lang/String;)V

    .line 603
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 604
    .local v11, num:I
    const/4 v12, 0x0

    .line 605
    .local v12, showSelected:Z
    if-nez p1, :cond_4

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 607
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v3, Lio/rong/imkit/R$drawable;->rc_picsel_empty_pic:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lio/rong/imkit/R$string;->rc_picsel_catalog_allpic:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, name:Ljava/lang/String;
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    .line 666
    :goto_2
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->number:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_picsel_catalog_number:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v3, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->selected:Landroid/widget/ImageView;

    if-eqz v12, :cond_6

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    return-object v13

    .line 593
    .end local v9           #holder:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #num:I
    .end local v12           #showSelected:Z
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;

    .restart local v9       #holder:Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;
    goto/16 :goto_0

    .line 609
    .restart local v11       #num:I
    .restart local v12       #showSelected:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogList:Ljava/util/List;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$500(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-object v2, v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    .line 610
    .restart local v2       #path:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->addPathToShowlist(Ljava/lang/String;)V

    .line 611
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 612
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v4}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v4

    new-instance v5, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$1;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v14

    invoke-virtual/range {v1 .. v6}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 626
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 627
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 628
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 630
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v3, Lio/rong/imkit/R$drawable;->rc_grid_image_default:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 637
    .end local v2           #path:Ljava/lang/String;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogList:Ljava/util/List;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$500(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;

    iget-object v2, v1, Lio/rong/imkit/activity/PictureSelectorActivity$PicItem;->uri:Ljava/lang/String;

    .line 638
    .restart local v2       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogList:Ljava/util/List;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$500(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 639
    .restart local v10       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mItemMap:Ljava/util/Map;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$200(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCatalogList:Ljava/util/List;
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$500(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 640
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->mCurrentCatalog:Ljava/lang/String;
    invoke-static {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$000(Lio/rong/imkit/activity/PictureSelectorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 643
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->addPathToShowlist(Ljava/lang/String;)V

    .line 644
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 645
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v3}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    #getter for: Lio/rong/imkit/activity/PictureSelectorActivity;->perWidth:I
    invoke-static {v4}, Lio/rong/imkit/activity/PictureSelectorActivity;->access$1200(Lio/rong/imkit/activity/PictureSelectorActivity;)I

    move-result v4

    new-instance v5, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$2;-><init>(Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v14

    invoke-virtual/range {v1 .. v6}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 659
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 660
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter;->this$0:Lio/rong/imkit/activity/PictureSelectorActivity;

    invoke-virtual {v1}, Lio/rong/imkit/activity/PictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 661
    .restart local v7       #bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 663
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    iget-object v1, v9, Lio/rong/imkit/activity/PictureSelectorActivity$CatalogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v3, Lio/rong/imkit/R$drawable;->rc_grid_image_default:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 668
    .end local v2           #path:Ljava/lang/String;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    const/4 v1, 0x4

    goto/16 :goto_3
.end method
