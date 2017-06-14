.class Lio/rong/imkit/activity/PicturePagerActivity$1;
.super Ljava/lang/Object;
.source "PicturePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/activity/PicturePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PicturePagerActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 78
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 59
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 63
    const-string v1, "PicturePagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected. position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #setter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I
    invoke-static {v1, p1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$002(Lio/rong/imkit/activity/PicturePagerActivity;I)I

    .line 65
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$100(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/widget/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/widget/HackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v1

    #calls: Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->updatePhotoView(ILandroid/view/View;)V
    invoke-static {v1, p1, v0}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->access$300(Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;ILandroid/view/View;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v1}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 69
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->getItem(I)Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->BEHIND:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    #calls: Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    invoke-static {v1, v2, v3}, Lio/rong/imkit/activity/PicturePagerActivity;->access$400(Lio/rong/imkit/activity/PicturePagerActivity;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    if-nez p1, :cond_1

    .line 71
    iget-object v1, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    iget-object v2, p0, Lio/rong/imkit/activity/PicturePagerActivity$1;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v2}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->getItem(I)Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    #calls: Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    invoke-static {v1, v2, v3}, Lio/rong/imkit/activity/PicturePagerActivity;->access$400(Lio/rong/imkit/activity/PicturePagerActivity;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    goto :goto_0
.end method
