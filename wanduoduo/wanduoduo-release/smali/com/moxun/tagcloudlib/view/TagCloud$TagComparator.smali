.class Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;
.super Ljava/lang/Object;
.source "TagCloud.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moxun/tagcloudlib/view/TagCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/moxun/tagcloudlib/view/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moxun/tagcloudlib/view/TagCloud$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/moxun/tagcloudlib/view/Tag;Lcom/moxun/tagcloudlib/view/Tag;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/moxun/tagcloudlib/view/Tag;->getScale()F

    move-result v0

    invoke-virtual {p2}, Lcom/moxun/tagcloudlib/view/Tag;->getScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    check-cast p1, Lcom/moxun/tagcloudlib/view/Tag;

    check-cast p2, Lcom/moxun/tagcloudlib/view/Tag;

    invoke-virtual {p0, p1, p2}, Lcom/moxun/tagcloudlib/view/TagCloud$TagComparator;->compare(Lcom/moxun/tagcloudlib/view/Tag;Lcom/moxun/tagcloudlib/view/Tag;)I

    move-result v0

    return v0
.end method
