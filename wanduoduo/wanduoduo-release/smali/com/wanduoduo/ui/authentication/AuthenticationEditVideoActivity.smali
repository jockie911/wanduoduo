.class public Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "AuthenticationEditVideoActivity.java"


# instance fields
.field private iscanEdit:Z

.field ivRightTitleBar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e2
        }
    .end annotation
.end field

.field videoView:Landroid/widget/VideoView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00db
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->alertDeleteVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->deleteVideoRequest()V

    return-void
.end method

.method private alertDeleteVideo()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5220\u9664\u89c6\u9891\u5c31\u65e0\u6cd5\u67e5\u770b\u5176\u5b83\u7528\u6237\u7684\u89c6\u9891\u54af\uff01\u4f60\u5982\u6b64\u7f8e\u597d\uff0c\u53ef\u4e0d\u80fd\u85cf\u592a\u6df1\u554a\uff0c\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$4;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$4;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$3;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$3;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 114
    return-void
.end method

.method private deleteVideoRequest()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "user_info"

    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$2;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 94
    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "video"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f040020

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u67e5\u770b\u89c6\u9891"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isCanEdit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->iscanEdit:Z

    .line 48
    iget-boolean v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->iscanEdit:Z

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    const v2, 0x7f020297

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 53
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 54
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e00e2

    if-ne v2, v3, :cond_0

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u66f4\u6539\u89c6\u9891"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u5220\u9664"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u53d6\u6d88"

    aput-object v3, v1, v2

    .line 62
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationEditVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 74
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #item:[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
