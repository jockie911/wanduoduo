.class public Lcom/zfdang/multiple_images_selector/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final DIVIDER_HEIGHT:I = 0x6

.field private static final DIVIDER_WIDTH:I = 0x6

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field public final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "orientation"
    .parameter "dividerDrawableRes"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010214

    aput v2, v1, v3

    iput-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->ATTRS:[I

    .line 30
    if-nez p3, :cond_0

    .line 31
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mHeight:I

    .line 35
    iget-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mWidth:I

    .line 41
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->setOrientation(I)V

    .line 42
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 38
    iput v4, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mHeight:I

    .line 39
    iput v4, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    .line 78
    .local v7, top:I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 80
    .local v0, bottom:I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 81
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 82
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 85
    .local v5, params:Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v4, v8, v9

    .line 86
    .local v4, left:I
    iget v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mHeight:I

    add-int v6, v4, v8

    .line 87
    .local v6, right:I
    iget-object v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v1           #child:Landroid/view/View;
    .end local v4           #left:I
    .end local v5           #params:Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6           #right:I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 62
    .local v4, left:I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 64
    .local v6, right:I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 65
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 66
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 69
    .local v5, params:Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v8, v9

    .line 70
    .local v7, top:I
    iget v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mHeight:I

    add-int v0, v7, v8

    .line 71
    .local v0, bottom:I
    iget-object v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iget-object v8, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    .end local v5           #params:Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v7           #top:I
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .parameter "outRect"
    .parameter "view"
    .parameter "parent"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget v0, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mHeight:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mWidth:I

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .parameter "c"
    .parameter "parent"
    .parameter "state"

    .prologue
    .line 53
    iget v0, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput p1, p0, Lcom/zfdang/multiple_images_selector/DividerItemDecoration;->mOrientation:I

    .line 49
    return-void
.end method
