.class public Lcom/wanduoduo/page/PerfectPicVideoFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "PerfectPicVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private isVideo:Z

.field itemIvPhoto:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e02b8
        }
    .end annotation
.end field

.field itemIvPlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0291
        }
    .end annotation
.end field

.field private picUrlOrVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "picUrlOrVideoUrl"
    .parameter "isVideo"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->isVideo:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/page/PerfectPicVideoFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/page/PerfectPicVideoFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 50
    const v0, 0x7f0400aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->isVideo:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->itemIvPlay:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;

    const-string v2, "\\"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/page/PerfectPicVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/page/PerfectPicVideoFragment$1;-><init>(Lcom/wanduoduo/page/PerfectPicVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->itemIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->itemIvPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->itemIvPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/wanduoduo/page/PerfectPicVideoFragment$2;-><init>(Lcom/wanduoduo/page/PerfectPicVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/index/PicVPShwoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wanduoduo/page/PerfectPicVideoFragment;->picUrlOrVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v2, "piclist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/wanduoduo/page/PerfectPicVideoFragment;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
