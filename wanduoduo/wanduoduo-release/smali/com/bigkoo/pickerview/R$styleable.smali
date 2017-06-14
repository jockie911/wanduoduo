.class public final Lcom/bigkoo/pickerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final pickerview:[I = null

.field public static final pickerview_pickerview_dividerColor:I = 0x4

.field public static final pickerview_pickerview_gravity:I = 0x0

.field public static final pickerview_pickerview_textColorCenter:I = 0x3

.field public static final pickerview_pickerview_textColorOut:I = 0x2

.field public static final pickerview_pickerview_textSize:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigkoo/pickerview/R$styleable;->pickerview:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7ft 0x1t 0x1t 0x7ft
        0x80t 0x1t 0x1t 0x7ft
        0x81t 0x1t 0x1t 0x7ft
        0x82t 0x1t 0x1t 0x7ft
        0x83t 0x1t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
