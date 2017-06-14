.class public Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RealTimeLocationQuitMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:RLQuit"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;",
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
    .line 54
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage$1;

    invoke-direct {v0}, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage$1;-><init>()V

    sput-object v0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->extra:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 19
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->extra:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 23
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->extra:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;
    .locals 1
    .parameter "content"

    .prologue
    .line 28
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;

    invoke-direct {v0, p0}, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, model:Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
