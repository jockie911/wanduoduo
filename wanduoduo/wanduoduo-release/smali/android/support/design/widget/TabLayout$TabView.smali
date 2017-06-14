.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5
    .parameter "this$0"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 1506
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1507
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1504
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1508
    #getter for: Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    #getter for: Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1509
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1512
    :cond_0
    #getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    #getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    .line 1513
    #getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    #getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    .line 1512
    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1514
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1515
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1516
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1517
    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout$TabView;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1495
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout$TabView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1495
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .parameter "layout"
    .parameter "line"
    .parameter "textSize"

    .prologue
    .line 1795
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1639
    return-void
.end method

.method private setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .parameter "tab"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1631
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1632
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1634
    :cond_0
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "textView"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "iconView"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1706
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1707
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1708
    .local v5, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1710
    .local v1, contentDesc:Ljava/lang/CharSequence;
    :goto_2
    if-eqz p2, :cond_0

    .line 1711
    if-eqz v3, :cond_7

    .line 1712
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1713
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1714
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1719
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1722
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v2, 0x1

    .line 1723
    .local v2, hasText:Z
    :goto_4
    if-eqz p1, :cond_1

    .line 1724
    if-eqz v2, :cond_9

    .line 1725
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1732
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1735
    :cond_1
    if-eqz p2, :cond_3

    .line 1736
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1737
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 1738
    .local v0, bottomMargin:I
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1740
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #calls: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v8, v9}, Landroid/support/design/widget/TabLayout;->access$2200(Landroid/support/design/widget/TabLayout;I)I

    move-result v0

    .line 1742
    :cond_2
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v8, :cond_3

    .line 1743
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1744
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1748
    .end local v0           #bottomMargin:I
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    if-nez v2, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1749
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1754
    :goto_6
    return-void

    .end local v1           #contentDesc:Ljava/lang/CharSequence;
    .end local v2           #hasText:Z
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #text:Ljava/lang/CharSequence;
    :cond_4
    move-object v3, v6

    .line 1706
    goto :goto_0

    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v5, v6

    .line 1707
    goto :goto_1

    .restart local v5       #text:Ljava/lang/CharSequence;
    :cond_6
    move-object v1, v6

    .line 1708
    goto :goto_2

    .line 1716
    .restart local v1       #contentDesc:Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1717
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    move v2, v7

    .line 1722
    goto :goto_4

    .line 1729
    .restart local v2       #hasText:Z
    :cond_9
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1730
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1751
    :cond_a
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1752
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_6
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1550
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1552
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1553
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1558
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1560
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1561
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1758
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 1759
    .local v6, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1760
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1761
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1763
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1764
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v8

    .line 1765
    .local v8, width:I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v3

    .line 1766
    .local v3, height:I
    aget v9, v6, v12

    div-int/lit8 v10, v3, 0x2

    add-int v4, v9, v10

    .line 1767
    .local v4, midy:I
    aget v9, v6, v11

    div-int/lit8 v10, v8, 0x2

    add-int v5, v9, v10

    .line 1768
    .local v5, referenceX:I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_0

    .line 1769
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1770
    .local v7, screenWidth:I
    sub-int v5, v7, v5

    .line 1773
    .end local v7           #screenWidth:I
    :cond_0
    iget-object v9, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1775
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 1777
    const v9, 0x800035

    aget v10, v6, v12

    add-int/2addr v10, v3

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v9, v5, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 1783
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1784
    return v12

    .line 1781
    :cond_1
    const/16 v9, 0x51

    invoke-virtual {v0, v9, v11, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 17
    .parameter "origWidthMeasureSpec"
    .parameter "origHeightMeasureSpec"

    .prologue
    .line 1565
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1566
    .local v10, specWidthSize:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1567
    .local v9, specWidthMode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #calls: Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I
    invoke-static {v14}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    .line 1570
    .local v7, maxWidth:I
    move/from16 v4, p2

    .line 1572
    .local v4, heightMeasureSpec:I
    if-lez v7, :cond_6

    if-eqz v9, :cond_0

    if-le v10, v7, :cond_6

    .line 1576
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I
    invoke-static {v14}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)I

    move-result v14

    const/high16 v15, -0x8000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1583
    .local v13, widthMeasureSpec:I
    :goto_0
    move-object/from16 v0, p0

    invoke-super {v0, v13, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_5

    .line 1587
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1588
    .local v8, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabTextSize:F
    invoke-static {v14}, Landroid/support/design/widget/TabLayout;->access$1700(Landroid/support/design/widget/TabLayout;)F

    move-result v11

    .line 1589
    .local v11, textSize:F
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1591
    .local v6, maxLines:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getVisibility()I

    move-result v14

    if-nez v14, :cond_7

    .line 1593
    const/4 v6, 0x1

    .line 1599
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 1600
    .local v3, curTextSize:F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 1601
    .local v1, curLineCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v2

    .line 1603
    .local v2, curMaxLines:I
    cmpl-float v14, v11, v3

    if-nez v14, :cond_2

    if-ltz v2, :cond_5

    if-eq v6, v2, :cond_5

    .line 1605
    :cond_2
    const/4 v12, 0x1

    .line 1607
    .local v12, updateTextView:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mMode:I
    invoke-static {v14}, Landroid/support/design/widget/TabLayout;->access$1900(Landroid/support/design/widget/TabLayout;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    cmpl-float v14, v11, v3

    if-lez v14, :cond_4

    const/4 v14, 0x1

    if-ne v1, v14, :cond_4

    .line 1613
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1614
    .local v5, layout:Landroid/text/Layout;
    if-eqz v5, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v11}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v14

    .line 1615
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 1616
    :cond_3
    const/4 v12, 0x0

    .line 1620
    .end local v5           #layout:Landroid/text/Layout;
    :cond_4
    if-eqz v12, :cond_5

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1623
    move-object/from16 v0, p0

    invoke-super {v0, v13, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1627
    .end local v1           #curLineCount:I
    .end local v2           #curMaxLines:I
    .end local v3           #curTextSize:F
    .end local v6           #maxLines:I
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v11           #textSize:F
    .end local v12           #updateTextView:Z
    :cond_5
    return-void

    .line 1579
    .end local v13           #widthMeasureSpec:I
    :cond_6
    move/from16 v13, p1

    .restart local v13       #widthMeasureSpec:I
    goto/16 :goto_0

    .line 1594
    .restart local v6       #maxLines:I
    .restart local v8       #res:Landroid/content/res/Resources;
    .restart local v11       #textSize:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLineCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    .line 1596
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F
    invoke-static {v14}, Landroid/support/design/widget/TabLayout;->access$1800(Landroid/support/design/widget/TabLayout;)F

    move-result v11

    goto/16 :goto_1
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 1521
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1523
    .local v0, value:Z
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 1525
    const/4 v0, 0x1

    .line 1527
    .end local v0           #value:Z
    :cond_0
    return v0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 1533
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1534
    .local v0, changed:Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1535
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1536
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1538
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1539
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1541
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1545
    :cond_1
    return-void

    .line 1533
    .end local v0           #changed:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1642
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1643
    .local v3, tab:Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1644
    .local v0, custom:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_a

    .line 1645
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1646
    .local v1, customParent:Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 1647
    if-eqz v1, :cond_0

    .line 1648
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #customParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1650
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1652
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1653
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 1654
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1656
    :cond_2
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 1657
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1658
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1661
    :cond_3
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1662
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1663
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1665
    :cond_4
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1676
    :goto_1
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_c

    .line 1678
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    .line 1679
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 1680
    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1681
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v7}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1682
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1684
    .end local v2           #iconView:Landroid/widget/ImageView;
    :cond_5
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    .line 1685
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 1686
    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1687
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1688
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1689
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1691
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I
    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$2000(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1692
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$2100(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1693
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    #getter for: Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$2100(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1695
    :cond_7
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1702
    :cond_8
    :goto_2
    return-void

    .end local v0           #custom:Landroid/view/View;
    :cond_9
    move-object v0, v5

    .line 1643
    goto/16 :goto_0

    .line 1668
    .restart local v0       #custom:Landroid/view/View;
    :cond_a
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v6, :cond_b

    .line 1669
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1670
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1672
    :cond_b
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1673
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 1698
    :cond_c
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 1699
    :cond_d
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2
.end method
