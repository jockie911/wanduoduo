.class public Lio/rong/imlib/model/RongListWrap;
.super Ljava/lang/Object;
.source "RongListWrap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/RongListWrap;",
            ">;"
        }
    .end annotation
.end field

.field public static mClass:Ljava/lang/Class;


# instance fields
.field private mList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lio/rong/imlib/model/RongListWrap$1;

    invoke-direct {v0}, Lio/rong/imlib/model/RongListWrap$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/RongListWrap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 34
    const-class v0, Lio/rong/imlib/model/Message;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .parameter "list"
    .parameter "cls"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 30
    sput-object p2, Lio/rong/imlib/model/RongListWrap;->mClass:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method public static obtain(Ljava/util/List;Ljava/lang/Class;)Lio/rong/imlib/model/RongListWrap;
    .locals 1
    .parameter "list"
    .parameter "cls"

    .prologue
    .line 25
    new-instance v0, Lio/rong/imlib/model/RongListWrap;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/model/RongListWrap;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 64
    iput-object p1, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    iget-object v0, p0, Lio/rong/imlib/model/RongListWrap;->mList:Ljava/util/List;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 57
    return-void
.end method
