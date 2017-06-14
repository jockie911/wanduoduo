.class public Lio/rong/imlib/model/ChatRoomInfo;
.super Ljava/lang/Object;
.source "ChatRoomInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/ChatRoomInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatRoomId:Ljava/lang/String;

.field private memberInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/ChatRoomMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private order:Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;

.field private totalMemberCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lio/rong/imlib/model/ChatRoomInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/ChatRoomInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/ChatRoomInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->chatRoomId:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->totalMemberCount:I

    .line 59
    const-class v0, Lio/rong/imlib/model/ChatRoomMemberInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->memberInfo:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->chatRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/ChatRoomMemberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->memberInfo:Ljava/util/List;

    return-object v0
.end method

.method public getMemberOrder()Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->order:Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;

    return-object v0
.end method

.method public getTotalMemberCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->totalMemberCount:I

    return v0
.end method

.method public setChatRoomId(Ljava/lang/String;)V
    .locals 0
    .parameter "chatRoomId"

    .prologue
    .line 25
    iput-object p1, p0, Lio/rong/imlib/model/ChatRoomInfo;->chatRoomId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMemberInfo(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/ChatRoomMemberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, memberInfo:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/ChatRoomMemberInfo;>;"
    iput-object p1, p0, Lio/rong/imlib/model/ChatRoomInfo;->memberInfo:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setMemberOrder(Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 33
    iput-object p1, p0, Lio/rong/imlib/model/ChatRoomInfo;->order:Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;

    .line 34
    return-void
.end method

.method public setTotalMemberCount(I)V
    .locals 0
    .parameter "totalMemberCount"

    .prologue
    .line 41
    iput p1, p0, Lio/rong/imlib/model/ChatRoomInfo;->totalMemberCount:I

    .line 42
    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/ChatRoomMemberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/ChatRoomMemberInfo;>;"
    iput-object p1, p0, Lio/rong/imlib/model/ChatRoomInfo;->memberInfo:Ljava/util/List;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 69
    iget-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->chatRoomId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->totalMemberCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 71
    iget-object v0, p0, Lio/rong/imlib/model/ChatRoomInfo;->memberInfo:Ljava/util/List;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 72
    return-void
.end method
