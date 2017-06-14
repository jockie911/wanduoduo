.class public Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/bigkoo/pickerview/adapter/WheelAdapter;


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    .line 33
    iput p2, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->maxValue:I

    .line 34
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 38
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 39
    iget v1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    add-int v0, v1, p1

    .line 40
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 42
    .end local v0           #value:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    return v0
.end method
