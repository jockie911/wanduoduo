.class Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->build()Lcom/facebook/cache/disk/DiskCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cache/disk/DiskCacheConfig$Builder;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;->this$0:Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;->this$0:Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    #getter for: Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
