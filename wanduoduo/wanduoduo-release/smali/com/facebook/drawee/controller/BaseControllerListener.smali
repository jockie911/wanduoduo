.class public Lcom/facebook/drawee/controller/BaseControllerListener;
.super Ljava/lang/Object;
.source "BaseControllerListener.java"

# interfaces
.implements Lcom/facebook/drawee/controller/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/controller/ControllerListener",
        "<TINFO;>;"
    }
.end annotation


# static fields
.field private static final NO_OP_LISTENER:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/drawee/controller/BaseControllerListener;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/BaseControllerListener;->NO_OP_LISTENER:Lcom/facebook/drawee/controller/ControllerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoOpListener()Lcom/facebook/drawee/controller/ControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/drawee/controller/BaseControllerListener;->NO_OP_LISTENER:Lcom/facebook/drawee/controller/ControllerListener;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "id"
    .parameter "throwable"

    .prologue
    .line 51
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .parameter "id"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "animatable"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    .local p2, imageInfo:Ljava/lang/Object;,"TINFO;"
    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "id"
    .parameter "throwable"

    .prologue
    .line 47
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "id"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    .local p2, imageInfo:Ljava/lang/Object;,"TINFO;"
    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 55
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "id"
    .parameter "callerContext"

    .prologue
    .line 32
    .local p0, this:Lcom/facebook/drawee/controller/BaseControllerListener;,"Lcom/facebook/drawee/controller/BaseControllerListener<TINFO;>;"
    return-void
.end method
