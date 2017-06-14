.class Lio/rong/imkit/widget/RongEmojiPager$2;
.super Ljava/lang/Object;
.source "RongEmojiPager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RongEmojiPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RongEmojiPager;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RongEmojiPager;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 67
    .local v5, key:Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I
    invoke-static {v6}, Lio/rong/imkit/widget/RongEmojiPager;->access$100(Lio/rong/imkit/widget/RongEmojiPager;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x14

    add-int v4, p3, v6

    .line 68
    .local v4, index:I
    const/16 v6, 0x14

    if-ne p3, v6, :cond_2

    .line 69
    const-string v5, "/DEL"

    .line 85
    :cond_0
    :goto_0
    iget-object v6, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->clickListener:Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;
    invoke-static {v6}, Lio/rong/imkit/widget/RongEmojiPager;->access$400(Lio/rong/imkit/widget/RongEmojiPager;)Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->clickListener:Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;
    invoke-static {v6}, Lio/rong/imkit/widget/RongEmojiPager;->access$400(Lio/rong/imkit/widget/RongEmojiPager;)Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;->onEmojiClick(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void

    .line 71
    :cond_2
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, emojis:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/Emoji;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 73
    iget-object v6, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I
    invoke-static {v6}, Lio/rong/imkit/widget/RongEmojiPager;->access$100(Lio/rong/imkit/widget/RongEmojiPager;)I

    move-result v6

    iget-object v7, p0, Lio/rong/imkit/widget/RongEmojiPager$2;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->mPageCount:I
    invoke-static {v7}, Lio/rong/imkit/widget/RongEmojiPager;->access$300(Lio/rong/imkit/widget/RongEmojiPager;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 74
    const-string v5, "/DEL"

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v6}, Lio/rong/imkit/model/Emoji;->getCode()I

    move-result v1

    .line 78
    .local v1, code:I
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 79
    .local v0, chars:[C
    const/4 v6, 0x0

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 80
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-char v7, v0, v3

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
