.class Lio/rong/imkit/tools/PhotoFragment$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PhotoFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 81
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 62
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 66
    const-string v1, "PhotoFragment"

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

    .line 67
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #setter for: Lio/rong/imkit/tools/PhotoFragment;->mCurrentIndex:I
    invoke-static {v1, p1}, Lio/rong/imkit/tools/PhotoFragment;->access$002(Lio/rong/imkit/tools/PhotoFragment;I)I

    .line 68
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;
    invoke-static {v1}, Lio/rong/imkit/tools/PhotoFragment;->access$100(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/widget/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/widget/HackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
    invoke-static {v1}, Lio/rong/imkit/tools/PhotoFragment;->access$300(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mDownloadListener:Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;
    invoke-static {v2}, Lio/rong/imkit/tools/PhotoFragment;->access$200(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;

    move-result-object v2

    #calls: Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->updatePhotoView(ILandroid/view/View;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V
    invoke-static {v1, p1, v0, v2}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->access$400(Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;ILandroid/view/View;Lio/rong/imkit/tools/PhotoFragment$PhotoDownloadListener;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
    invoke-static {v1}, Lio/rong/imkit/tools/PhotoFragment;->access$300(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 72
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
    invoke-static {v2}, Lio/rong/imkit/tools/PhotoFragment;->access$300(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->getItem(I)Lio/rong/imkit/tools/PhotoFragment$ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/tools/PhotoFragment$ImageInfo;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->BEHIND:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    #calls: Lio/rong/imkit/tools/PhotoFragment;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    invoke-static {v1, v2, v3}, Lio/rong/imkit/tools/PhotoFragment;->access$500(Lio/rong/imkit/tools/PhotoFragment;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    if-nez p1, :cond_1

    .line 74
    iget-object v1, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    iget-object v2, p0, Lio/rong/imkit/tools/PhotoFragment$1;->this$0:Lio/rong/imkit/tools/PhotoFragment;

    #getter for: Lio/rong/imkit/tools/PhotoFragment;->mImageAdapter:Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;
    invoke-static {v2}, Lio/rong/imkit/tools/PhotoFragment;->access$300(Lio/rong/imkit/tools/PhotoFragment;)Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/rong/imkit/tools/PhotoFragment$ImageAdapter;->getItem(I)Lio/rong/imkit/tools/PhotoFragment$ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/tools/PhotoFragment$ImageInfo;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    #calls: Lio/rong/imkit/tools/PhotoFragment;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    invoke-static {v1, v2, v3}, Lio/rong/imkit/tools/PhotoFragment;->access$500(Lio/rong/imkit/tools/PhotoFragment;ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    goto :goto_0
.end method
