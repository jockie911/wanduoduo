.class Lcom/moxun/tagcloudlib/view/NOPTagsAdapter;
.super Lcom/moxun/tagcloudlib/view/TagsAdapter;
.source "NOPTagsAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopularity(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onThemeColorChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "themeColor"

    .prologue
    .line 35
    return-void
.end method
