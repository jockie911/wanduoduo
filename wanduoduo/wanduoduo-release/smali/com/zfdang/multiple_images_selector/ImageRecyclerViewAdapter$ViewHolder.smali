.class public Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mChecked:Landroid/widget/ImageView;

.field public final mDrawee:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public mImageName:Landroid/widget/TextView;

.field public mItem:Lcom/zfdang/multiple_images_selector/models/ImageItem;

.field public final mMask:Landroid/view/View;

.field public final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .parameter "this$0"
    .parameter "view"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->this$0:Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter;

    .line 120
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 121
    iput-object p2, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 122
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->image_drawee:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mDrawee:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 123
    sget-boolean v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mDrawee:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->image_mask:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mMask:Landroid/view/View;

    .line 125
    sget-boolean v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mMask:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->image_checked:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    .line 127
    sget-boolean v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mChecked:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_2
    sget v0, Lcom/zfdang/multiple_images_selector/R$id;->image_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mImageName:Landroid/widget/TextView;

    .line 129
    sget-boolean v0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zfdang/multiple_images_selector/ImageRecyclerViewAdapter$ViewHolder;->mImageName:Landroid/widget/TextView;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
