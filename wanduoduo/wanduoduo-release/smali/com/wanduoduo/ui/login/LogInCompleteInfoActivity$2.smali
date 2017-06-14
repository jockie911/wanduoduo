.class Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;
.super Ljava/lang/Object;
.source "LogInCompleteInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->selectPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

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

    .line 140
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    if-nez p2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/app/Activity;)V

    .line 146
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 147
    return-void

    .line 143
    :cond_1
    if-ne p2, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/app/Activity;I)V

    goto :goto_0
.end method
