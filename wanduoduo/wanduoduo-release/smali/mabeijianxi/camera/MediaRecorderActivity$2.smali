.class Lmabeijianxi/camera/MediaRecorderActivity$2;
.super Ljava/lang/Object;
.source "MediaRecorderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmabeijianxi/camera/MediaRecorderActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderActivity;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/MediaRecorderActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 376
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderActivity$2;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 381
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$2;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject;->delete()V

    .line 382
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$2;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->finish()V

    .line 383
    return-void
.end method
