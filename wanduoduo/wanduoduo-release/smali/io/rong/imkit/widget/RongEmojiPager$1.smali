.class Lio/rong/imkit/widget/RongEmojiPager$1;
.super Ljava/lang/Object;
.source "RongEmojiPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/RongEmojiPager;-><init>(Landroid/view/ViewGroup;)V
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
    .line 39
    iput-object p1, p0, Lio/rong/imkit/widget/RongEmojiPager$1;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 54
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 43
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager$1;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager$1;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #getter for: Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I
    invoke-static {v1}, Lio/rong/imkit/widget/RongEmojiPager;->access$100(Lio/rong/imkit/widget/RongEmojiPager;)I

    move-result v1

    #calls: Lio/rong/imkit/widget/RongEmojiPager;->onIndicatorChanged(II)V
    invoke-static {v0, v1, p1}, Lio/rong/imkit/widget/RongEmojiPager;->access$200(Lio/rong/imkit/widget/RongEmojiPager;II)V

    .line 48
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager$1;->this$0:Lio/rong/imkit/widget/RongEmojiPager;

    #setter for: Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I
    invoke-static {v0, p1}, Lio/rong/imkit/widget/RongEmojiPager;->access$102(Lio/rong/imkit/widget/RongEmojiPager;I)I

    .line 49
    return-void
.end method
