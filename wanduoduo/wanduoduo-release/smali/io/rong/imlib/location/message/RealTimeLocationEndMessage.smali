.class public Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RealTimeLocationEndMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:RLEnd"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/location/message/RealTimeLocationEndMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private extra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage$1;

    invoke-direct {v0}, Lio/rong/imlib/location/message/RealTimeLocationEndMessage$1;-><init>()V

    sput-object v0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 31
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->extra:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 18
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->extra:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 22
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->extra:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
    .locals 1
    .parameter "content"

    .prologue
    .line 27
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    invoke-direct {v0, p0}, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, model:Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 42
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
