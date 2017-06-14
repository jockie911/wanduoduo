.class public Lcom/wanduoduo/bean/PlayerInfoBean;
.super Ljava/lang/Object;
.source "PlayerInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/PlayerInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private fee:Ljava/lang/String;

.field private gender:I

.field private id:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private order_ispay:Ljava/lang/String;

.field private order_status:Ljava/lang/String;

.field private place:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalFee:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/wanduoduo/bean/PlayerInfoBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/PlayerInfoBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/PlayerInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->id:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->cover_pic:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->title:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->fee:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->gender:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->nickname:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->avatar:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->age:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->user_id:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->time:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_status:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_ispay:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->totalFee:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_id:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->place:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->fee:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_ispay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_ispay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_status:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->place:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->totalFee:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->age:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->avatar:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->cover_pic:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setFee(Ljava/lang/String;)V
    .locals 0
    .parameter "fee"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->fee:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 97
    iput p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->gender:I

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->id:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->nickname:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOrder_id(Ljava/lang/String;)V
    .locals 0
    .parameter "order_id"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_id:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setOrder_ispay(Ljava/lang/String;)V
    .locals 0
    .parameter "order_ispay"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_ispay:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setOrder_status(Ljava/lang/String;)V
    .locals 0
    .parameter "order_status"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_status:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPlace(Ljava/lang/String;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->place:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->time:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->title:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTotalFee(Ljava/lang/String;)V
    .locals 0
    .parameter "totalFee"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->totalFee:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->user_id:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->cover_pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->fee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_ispay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->totalFee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->order_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/wanduoduo/bean/PlayerInfoBean;->place:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return-void
.end method
