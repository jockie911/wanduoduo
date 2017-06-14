.class Lio/rong/imkit/RongIM$37;
.super Ljava/lang/Object;
.source "RongIM.java"

# interfaces
.implements Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->downloadMedia(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3115
    iput-object p1, p0, Lio/rong/imkit/RongIM$37;->this$0:Lio/rong/imkit/RongIM;

    iput-object p2, p0, Lio/rong/imkit/RongIM$37;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V
    .locals 2
    .parameter "imageUri"
    .parameter "view"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 3118
    iget-object v0, p0, Lio/rong/imkit/RongIM$37;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Lio/rong/imkit/RongIM$37;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    mul-int/lit8 v1, p3, 0x64

    div-int/2addr v1, p4

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onProgress(I)V

    .line 3121
    :cond_0
    return-void
.end method
