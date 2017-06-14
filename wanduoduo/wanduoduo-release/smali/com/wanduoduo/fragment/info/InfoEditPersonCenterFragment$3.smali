.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 201
    if-nez p2, :cond_1

    .line 202
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/support/v4/app/Fragment;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$3;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xc

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method
