.class public Lcom/zfdang/multiple_images_selector/SelectorSettings;
.super Ljava/lang/Object;
.source "SelectorSettings.java"


# static fields
.field public static final CAMERA_ITEM_PATH:Ljava/lang/String; = "/CAMERA/CAMERA"

.field public static final SELECTOR_INITIAL_SELECTED_LIST:Ljava/lang/String; = "selector_initial_selected_list"

.field public static final SELECTOR_MAX_IMAGE_NUMBER:Ljava/lang/String; = "selector_max_image_number"

.field public static final SELECTOR_MIN_IMAGE_SIZE:Ljava/lang/String; = "selector_min_image_size"

.field public static final SELECTOR_RESULTS:Ljava/lang/String; = "selector_results"

.field public static final SELECTOR_SHOW_CAMERA:Ljava/lang/String; = "selector_show_camera"

.field public static isShowCamera:Z

.field public static mMaxImageNumber:I

.field public static mMinImageSize:I

.field public static resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x9

    sput v0, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMaxImageNumber:I

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zfdang/multiple_images_selector/SelectorSettings;->isShowCamera:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zfdang/multiple_images_selector/SelectorSettings;->resultList:Ljava/util/ArrayList;

    .line 32
    const v0, 0xc350

    sput v0, Lcom/zfdang/multiple_images_selector/SelectorSettings;->mMinImageSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
