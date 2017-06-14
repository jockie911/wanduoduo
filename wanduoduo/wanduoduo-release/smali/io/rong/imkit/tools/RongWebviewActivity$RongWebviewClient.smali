.class Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;
.super Landroid/webkit/WebViewClient;
.source "RongWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/RongWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RongWebviewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/RongWebviewActivity;


# direct methods
.method private constructor <init>(Lio/rong/imkit/tools/RongWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/tools/RongWebviewActivity;Lio/rong/imkit/tools/RongWebviewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;-><init>(Lio/rong/imkit/tools/RongWebviewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #getter for: Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;
    invoke-static {v4}, Lio/rong/imkit/tools/RongWebviewActivity;->access$200(Lio/rong/imkit/tools/RongWebviewActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 59
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #getter for: Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;
    invoke-static {v4}, Lio/rong/imkit/tools/RongWebviewActivity;->access$200(Lio/rong/imkit/tools/RongWebviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, content_url:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    :try_start_0
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-virtual {v4, v2}, Lio/rong/imkit/tools/RongWebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #content_url:Landroid/net/Uri;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 68
    .restart local v0       #content_url:Landroid/net/Uri;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RongWebviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not apps install for this intent ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0           #content_url:Landroid/net/Uri;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #setter for: Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;
    invoke-static {v4, p2}, Lio/rong/imkit/tools/RongWebviewActivity;->access$202(Lio/rong/imkit/tools/RongWebviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #getter for: Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;
    invoke-static {v4}, Lio/rong/imkit/tools/RongWebviewActivity;->access$300(Lio/rong/imkit/tools/RongWebviewActivity;)Lio/rong/common/RongWebView;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #setter for: Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;
    invoke-static {v4, p2}, Lio/rong/imkit/tools/RongWebviewActivity;->access$202(Lio/rong/imkit/tools/RongWebviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    #getter for: Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;
    invoke-static {v4}, Lio/rong/imkit/tools/RongWebviewActivity;->access$300(Lio/rong/imkit/tools/RongWebviewActivity;)Lio/rong/common/RongWebView;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
