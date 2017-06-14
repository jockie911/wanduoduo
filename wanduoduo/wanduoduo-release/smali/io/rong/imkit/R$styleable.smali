.class public final Lio/rong/imkit/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AsyncImageView:[I = null

.field public static final AsyncImageView_RCCornerRadius:I = 0x1

.field public static final AsyncImageView_RCDefDrawable:I = 0x4

.field public static final AsyncImageView_RCMask:I = 0x2

.field public static final AsyncImageView_RCMinShortSideSize:I = 0x0

.field public static final AsyncImageView_RCShape:I = 0x3

.field public static final InputView:[I

.field public static final InputView_RCStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 947
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/rong/imkit/R$styleable;->AsyncImageView:[I

    .line 953
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010105

    aput v2, v0, v1

    sput-object v0, Lio/rong/imkit/R$styleable;->InputView:[I

    return-void

    .line 947
    :array_0
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x7ft
        0xa8t 0x0t 0x1t 0x7ft
        0xa9t 0x0t 0x1t 0x7ft
        0xaat 0x0t 0x1t 0x7ft
        0xabt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
