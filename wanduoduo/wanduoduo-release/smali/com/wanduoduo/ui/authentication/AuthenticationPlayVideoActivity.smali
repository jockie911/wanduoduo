.class public Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "AuthenticationPlayVideoActivity.java"


# instance fields
.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private path:Ljava/lang/String;

.field private srceenShort:Ljava/lang/String;

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
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
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->srceenShort:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$2;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;

    return-object v0
.end method

.method private getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter "videoUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "token"

    const-string v4, "token"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "video_url"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v3, "video_back"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f040023

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u4f20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 62
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 64
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_screenshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->srceenShort:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 70
    const-string v0, "video_upload"

    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;->path:Ljava/lang/String;

    new-instance v2, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostVideo(Ljava/lang/String;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 98
    return-void
.end method
