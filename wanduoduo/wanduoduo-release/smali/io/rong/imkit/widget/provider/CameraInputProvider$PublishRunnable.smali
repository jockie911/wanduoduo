.class Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;
.super Ljava/lang/Object;
.source "CameraInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/CameraInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublishRunnable"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/CameraInputProvider;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/CameraInputProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 99
    iput-object p1, p0, Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;->this$0:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;->mUri:Landroid/net/Uri;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;->this$0:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/CameraInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 114
    .local v7, uri:Landroid/net/Uri;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    iget-object v0, p0, Lio/rong/imkit/widget/provider/CameraInputProvider$PublishRunnable;->this$0:Lio/rong/imkit/widget/provider/CameraInputProvider;

    #calls: Lio/rong/imkit/widget/provider/CameraInputProvider;->sendImage(Landroid/net/Uri;)V
    invoke-static {v0, v7}, Lio/rong/imkit/widget/provider/CameraInputProvider;->access$000(Lio/rong/imkit/widget/provider/CameraInputProvider;Landroid/net/Uri;)V

    goto :goto_0
.end method
