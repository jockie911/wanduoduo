.class public Lcom/wanduoduo/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sortMapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 49
    new-instance p0, Ljava/util/HashMap;

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, "t"

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v2, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v1, mList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Lcom/wanduoduo/utils/MD5Utils$1;

    invoke-direct {v4}, Lcom/wanduoduo/utils/MD5Utils$1;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    const-string v4, "wanduoduo123321"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static string2MD5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    new-array v1, v9, [B

    .line 25
    .local v1, bytesOfMessage:[B
    invoke-static {p0, p1}, Lcom/wanduoduo/utils/MD5Utils;->sortMapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, sortValue:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 28
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    sput-object v9, Lcom/wanduoduo/utils/MD5Utils;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 33
    .local v2, charArray:[C
    array-length v9, v2

    new-array v0, v9, [B

    .line 34
    .local v0, byteArray:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_0

    .line 35
    aget-char v9, v2, v5

    int-to-byte v9, v9

    aput-byte v9, v0, v5

    .line 34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 29
    .end local v0           #byteArray:[B
    .end local v2           #charArray:[C
    .end local v5           #i:I
    :catch_0
    move-exception v3

    .line 30
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #byteArray:[B
    .restart local v2       #charArray:[C
    .restart local v5       #i:I
    :cond_0
    sget-object v9, Lcom/wanduoduo/utils/MD5Utils;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v9, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 37
    .local v6, md5Bytes:[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v4, hexValue:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    :goto_2
    array-length v9, v6

    if-ge v5, v9, :cond_2

    .line 39
    aget-byte v9, v6, v5

    and-int/lit16 v8, v9, 0xff

    .line 40
    .local v8, val:I
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    .line 41
    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 44
    .end local v8           #val:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
