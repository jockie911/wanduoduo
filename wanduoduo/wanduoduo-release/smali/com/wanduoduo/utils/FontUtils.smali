.class public Lcom/wanduoduo/utils/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeFonts(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "switchFont"
    .parameter "root"

    .prologue
    .line 29
    invoke-static {}, Lcom/wanduoduo/utils/FontUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 31
    .local v1, tf:Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 34
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 36
    check-cast v2, Landroid/widget/Button;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 37
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 38
    check-cast v2, Landroid/widget/EditText;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 39
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 40
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #v:Landroid/view/View;
    invoke-static {p0, v2}, Lcom/wanduoduo/utils/FontUtils;->changeFonts(Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 43
    :cond_4
    return-void
.end method

.method public static varargs changeFonts(Ljava/lang/String;[Landroid/view/View;)V
    .locals 5
    .parameter "switchFont"
    .parameter "views"

    .prologue
    .line 51
    invoke-static {}, Lcom/wanduoduo/utils/FontUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 53
    .local v0, tf:Landroid/graphics/Typeface;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, p1, v2

    .line 54
    .local v1, v:Landroid/view/View;
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 55
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    instance-of v4, v1, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 57
    check-cast v1, Landroid/widget/Button;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 58
    .restart local v1       #v:Landroid/view/View;
    :cond_2
    instance-of v4, v1, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 59
    check-cast v1, Landroid/widget/EditText;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 62
    :cond_3
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
