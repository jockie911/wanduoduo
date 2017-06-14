.class Lcom/wanduoduo/fragment/InfoFragment$3$1;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/fragment/InfoFragment$3;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment$3;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$3$1;->this$1:Lcom/wanduoduo/fragment/InfoFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    .line 287
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    if-nez p2, :cond_1

    .line 289
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$3$1;->this$1:Lcom/wanduoduo/fragment/InfoFragment$3;

    iget-object v0, v0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/support/v4/app/Fragment;)V

    .line 293
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 294
    return-void

    .line 290
    :cond_1
    if-ne p2, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$3$1;->this$1:Lcom/wanduoduo/fragment/InfoFragment$3;

    iget-object v0, v0, Lcom/wanduoduo/fragment/InfoFragment$3;->this$0:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method
