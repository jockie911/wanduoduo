.class Lio/rong/imkit/widget/RongPluginPager$1;
.super Ljava/lang/Object;
.source "RongPluginPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/RongPluginPager;->initView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RongPluginPager;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RongPluginPager;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lio/rong/imkit/widget/RongPluginPager$1;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 63
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 52
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lio/rong/imkit/widget/RongPluginPager$1;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager$1;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    #getter for: Lio/rong/imkit/widget/RongPluginPager;->mSelectedPage:I
    invoke-static {v1}, Lio/rong/imkit/widget/RongPluginPager;->access$100(Lio/rong/imkit/widget/RongPluginPager;)I

    move-result v1

    #calls: Lio/rong/imkit/widget/RongPluginPager;->onIndicatorChanged(II)V
    invoke-static {v0, v1, p1}, Lio/rong/imkit/widget/RongPluginPager;->access$200(Lio/rong/imkit/widget/RongPluginPager;II)V

    .line 57
    iget-object v0, p0, Lio/rong/imkit/widget/RongPluginPager$1;->this$0:Lio/rong/imkit/widget/RongPluginPager;

    #setter for: Lio/rong/imkit/widget/RongPluginPager;->mSelectedPage:I
    invoke-static {v0, p1}, Lio/rong/imkit/widget/RongPluginPager;->access$102(Lio/rong/imkit/widget/RongPluginPager;I)I

    .line 58
    return-void
.end method
