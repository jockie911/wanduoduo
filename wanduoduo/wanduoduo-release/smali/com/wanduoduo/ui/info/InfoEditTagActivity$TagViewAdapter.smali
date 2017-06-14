.class Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;
.super Lcom/moxun/tagcloudlib/view/TagsAdapter;
.source "InfoEditTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagViewAdapter"
.end annotation


# instance fields
.field private allTags:[Ljava/lang/String;

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "allTags"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagsAdapter;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    .line 224
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPopularity(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    rem-int/lit8 v0, p1, 0x5

    return v0
.end method

.method public getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 233
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->allTags:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditTagActivity;

    #calls: Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getStringColor(Landroid/widget/TextView;)V
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->access$000(Lcom/wanduoduo/ui/info/InfoEditTagActivity;Landroid/widget/TextView;)V

    .line 243
    :goto_0
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;Landroid/widget/TextView;ILandroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-object v0

    .line 241
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onThemeColorChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "themeColor"

    .prologue
    .line 277
    return-void
.end method
