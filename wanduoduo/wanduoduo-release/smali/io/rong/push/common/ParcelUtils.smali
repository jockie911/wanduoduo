.class public Lio/rong/push/common/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field public static final EXIST_SEPARATOR:I = 0x1

.field public static final NON_SEPARATOR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static bytesToParcelable([BLjava/lang/Class;)Landroid/os/Parcelable;
    .locals 4
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 168
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, in:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 172
    invoke-static {v0, p1}, Lio/rong/push/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v1

    .line 173
    .local v1, t:Landroid/os/Parcelable;,"TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    .end local v0           #in:Landroid/os/Parcel;
    .end local v1           #t:Landroid/os/Parcelable;,"TT;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static bytesToParcelableList([BLjava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 191
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, in:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 194
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 195
    invoke-static {v0, p1}, Lio/rong/push/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 196
    .local v1, t:Ljava/util/ArrayList;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    .end local v0           #in:Landroid/os/Parcel;
    .end local v1           #t:Ljava/util/ArrayList;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parcelableListToByte(Ljava/util/List;)[B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+Landroid/os/Parcelable;>;"
    if-nez p0, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    .line 207
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, parcel:Landroid/os/Parcel;
    invoke-static {v0, p0}, Lio/rong/push/common/ParcelUtils;->writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static parcelableToByte(Landroid/os/Parcelable;)[B
    .locals 2
    .parameter "model"

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    .line 184
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, parcel:Landroid/os/Parcel;
    invoke-static {v0, p0}, Lio/rong/push/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static readDateFromParcel(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4
    .parameter "in"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readDoubleFromParcel(Landroid/os/Parcel;)Ljava/lang/Double;
    .locals 4
    .parameter "in"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFloatFromParcel(Landroid/os/Parcel;)Ljava/lang/Float;
    .locals 2
    .parameter "in"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 3
    .parameter "in"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, flag:I
    const/4 v1, 0x0

    .line 127
    .local v1, t:Landroid/os/Parcelable;,"TT;"
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 129
    :cond_0
    return-object v1
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .parameter "in"

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;
    .locals 2
    .parameter "in"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2
    .parameter "in"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;
    .locals 4
    .parameter "in"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 2
    .parameter "in"

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, collection:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 2
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p1, model:Landroid/os/Parcelable;,"TT;"
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Double;)V
    .locals 2
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Float;)V
    .locals 1
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V
    .locals 1
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V
    .locals 2
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List",
            "<*>;>(",
            "Landroid/os/Parcel;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, model:Ljava/util/List;,"TT;"
    if-eqz p1, :cond_0

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter "obj"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
