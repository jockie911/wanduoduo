.class public Lcom/wanduoduo/bean/OnLineSelectBean;
.super Ljava/lang/Object;
.source "OnLineSelectBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/OnLineSelectBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:Ljava/lang/String;

.field private city_code:Ljava/lang/String;

.field private city_name:Ljava/lang/String;

.field private gender:I

.field private height:Ljava/lang/String;

.field private isGift:Z

.field private isVideo:Z

.field private loveinfo:Z

.field private order:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/wanduoduo/bean/OnLineSelectBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/OnLineSelectBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/OnLineSelectBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->gender:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_code:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_name:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->age:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->height:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->loveinfo:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->order:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift:Z

    .line 139
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    goto :goto_1

    :cond_2
    move v1, v2

    .line 138
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->gender:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLoveinfo()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->loveinfo:Z

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->order:I

    return v0
.end method

.method public isGift()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo:Z

    return v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->age:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0
    .parameter "city_code"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0
    .parameter "city_name"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 26
    iput p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->gender:I

    .line 27
    return-void
.end method

.method public setGift(Z)V
    .locals 0
    .parameter "gift"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift:Z

    .line 94
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .parameter "height"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->height:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLoveinfo(Z)V
    .locals 0
    .parameter "loveinfo"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->loveinfo:Z

    .line 75
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 82
    iput p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->order:I

    .line 83
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .parameter "video"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo:Z

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnLineSelectBean{gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", age=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->age:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->height:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loveinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->loveinfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->city_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->height:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->loveinfo:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    iget v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v0, v2

    .line 124
    goto :goto_1

    :cond_2
    move v1, v2

    .line 126
    goto :goto_2
.end method
