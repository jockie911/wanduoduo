.class public final Lcom/android/liuzhuang/rcimageview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/liuzhuang/rcimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final CircleImageView_radius:I

.field public static final RoundCornerImageView:[I

.field public static final RoundCornerImageView_rciv_radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/liuzhuang/rcimageview/R$styleable;->CircleImageView:[I

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01012d

    aput v2, v0, v1

    sput-object v0, Lcom/android/liuzhuang/rcimageview/R$styleable;->RoundCornerImageView:[I

    return-void

    .line 18
    :array_0
    .array-data 0x4
        0xb0t 0x0t 0x1t 0x7ft
        0xb1t 0x0t 0x1t 0x7ft
        0xb2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
