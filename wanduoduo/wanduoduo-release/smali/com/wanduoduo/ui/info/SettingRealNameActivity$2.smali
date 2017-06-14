.class Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;
.super Ljava/lang/Object;
.source "SettingRealNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingRealNameActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingRealNameActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 94
    if-nez p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    invoke-static {v0}, Lcom/wanduoduo/utils/PhotoPicUtils;->openCamera(Landroid/app/Activity;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingRealNameActivity$2;->this$0:Lcom/wanduoduo/ui/info/SettingRealNameActivity;

    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/PhotoPicUtils;->openPic(Landroid/app/Activity;I)V

    goto :goto_0
.end method
