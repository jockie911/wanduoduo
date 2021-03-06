.class public Lcom/bumptech/glide/DrawableTypeRequest;
.super Lcom/bumptech/glide/DrawableRequestBuilder;
.source "DrawableTypeRequest.java"

# interfaces
.implements Lcom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/DrawableRequestBuilder",
        "<TModelType;>;",
        "Lcom/bumptech/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "context"
    .parameter "glide"
    .parameter "requestTracker"
    .parameter "lifecycle"
    .parameter "optionsApplier"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    .local p1, modelClass:Ljava/lang/Class;,"Ljava/lang/Class<TModelType;>;"
    .local p2, streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;,"Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    .local p3, fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;,"Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;"
    const-class v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/DrawableTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/DrawableRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 62
    iput-object p3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 63
    iput-object p8, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 64
    return-void
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
    .locals 3
    .parameter "glide"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/provider/FixedLoadProvider",
            "<TA;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;,"Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    .local p2, fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;,"Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;"
    .local p3, resourceClass:Ljava/lang/Class;,"Ljava/lang/Class<TZ;>;"
    .local p4, transcodedClass:Ljava/lang/Class;,"Ljava/lang/Class<TR;>;"
    .local p5, transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;,"Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 51
    :goto_0
    return-object v2

    .line 44
    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p5

    .line 47
    :cond_1
    const-class v2, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, v2, p3}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 49
    .local v0, dataLoadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;,"Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;TZ;>;"
    new-instance v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 51
    .local v1, modelLoader:Lcom/bumptech/glide/load/model/ImageVideoModelLoader;,"Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    new-instance v2, Lcom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v2, v1, p5, v0}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    goto :goto_0
.end method

.method private getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericTranscodeRequest",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v7, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v0, Lcom/bumptech/glide/GenericTranscodeRequest;

    const-class v1, Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    const-class v4, Ljava/io/InputStream;

    const-class v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/GenericTranscodeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericTranscodeRequest;

    return-object v0
.end method


# virtual methods
.method public asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapTypeRequest",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/bumptech/glide/BitmapTypeRequest;

    iget-object v2, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v4, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bumptech/glide/BitmapTypeRequest;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/BitmapTypeRequest;

    return-object v0
.end method

.method public asGif()Lcom/bumptech/glide/GifTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifTypeRequest",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/bumptech/glide/GifTypeRequest;

    iget-object v2, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v1, p0, v2, v3}, Lcom/bumptech/glide/GifTypeRequest;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GifTypeRequest;

    return-object v0
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/bumptech/glide/DrawableTypeRequest;,"Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    .local p1, target:Lcom/bumptech/glide/request/target/Target;,"TY;"
    invoke-direct {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method
