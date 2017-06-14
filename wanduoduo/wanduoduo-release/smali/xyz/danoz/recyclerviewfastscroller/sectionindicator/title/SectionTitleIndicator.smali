.class public abstract Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;
.super Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;
.source "SectionTitleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = 0x1060000

.field private static final DEFAULT_TEXT_COLOR:I = 0x106000b

.field private static final DEFAULT_TITLE_INDICATOR_LAYOUT:I

.field private static final STYLEABLE:[I


# instance fields
.field private final mIndicatorBackground:Landroid/view/View;

.field private final mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->SectionTitleIndicator:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->STYLEABLE:[I

    .line 20
    sget v0, Lxyz/danoz/recyclerviewfastscroller/R$layout;->section_indicator_with_title:I

    sput v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->DEFAULT_TITLE_INDICATOR_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget v3, Lxyz/danoz/recyclerviewfastscroller/R$id;->section_title_popup:I

    invoke-virtual {p0, v3}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mIndicatorBackground:Landroid/view/View;

    .line 38
    sget v3, Lxyz/danoz/recyclerviewfastscroller/R$id;->section_indicator_text:I

    invoke-virtual {p0, v3}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mTitleText:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->STYLEABLE:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, attributes:Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->SectionTitleIndicator_rfs_backgroundColor:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getDefaultBackgroundColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 44
    .local v1, customBackgroundColor:I
    invoke-virtual {p0, v1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->applyCustomBackgroundColorAttribute(I)V

    .line 46
    sget v3, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->SectionTitleIndicator_rfs_textColor:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->getDefaultBackgroundColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 48
    .local v2, customTextColor:I
    invoke-virtual {p0, v2}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->applyCustomTextColorAttribute(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void

    .line 50
    .end local v1           #customBackgroundColor:I
    .end local v2           #customTextColor:I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method


# virtual methods
.method protected applyCustomBackgroundColorAttribute(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 78
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    invoke-virtual {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->setIndicatorBackgroundColor(I)V

    .line 79
    return-void
.end method

.method protected applyCustomTextColorAttribute(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 103
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    invoke-virtual {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->setIndicatorTextColor(I)V

    .line 104
    return-void
.end method

.method protected getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    const/high16 v0, 0x106

    return v0
.end method

.method protected getDefaultLayoutId()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    sget v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->DEFAULT_TITLE_INDICATOR_LAYOUT:I

    return v0
.end method

.method protected getDefaultTextColor()I
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    const v0, 0x106000b

    return v0
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 87
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mIndicatorBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 90
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 91
    .local v1, backgroundShape:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 95
    .end local v1           #backgroundShape:Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mIndicatorBackground:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setIndicatorTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 111
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    .local p0, this:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;,"Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator<TT;>;"
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/title/SectionTitleIndicator;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
