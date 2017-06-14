.class public Lcom/zfdang/multiple_images_selector/utilities/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastPathSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 8
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    :cond_0
    const-string v1, ""

    .line 15
    :goto_0
    return-object v1

    .line 11
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, segments:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 13
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0

    .line 15
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method
