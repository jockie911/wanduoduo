.class public final Lcom/moxun/tagcloudlib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moxun/tagcloudlib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TagCloudView:[I = null

.field public static final TagCloudView_autoScrollMode:I = 0x0

.field public static final TagCloudView_darkColor:I = 0x4

.field public static final TagCloudView_lightColor:I = 0x3

.field public static final TagCloudView_radiusPercent:I = 0x1

.field public static final TagCloudView_scrollSpeed:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/moxun/tagcloudlib/R$styleable;->TagCloudView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5bt 0x1t 0x1t 0x7ft
        0x5ct 0x1t 0x1t 0x7ft
        0x5dt 0x1t 0x1t 0x7ft
        0x5et 0x1t 0x1t 0x7ft
        0x5ft 0x1t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
