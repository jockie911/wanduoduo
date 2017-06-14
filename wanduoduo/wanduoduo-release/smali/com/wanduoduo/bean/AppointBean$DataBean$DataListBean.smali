.class public Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "AppointBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/AppointBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private date_pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private date_tag_id:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private gift_tag_name:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private organizer:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

.field private pay_type:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private sex_invite:Ljava/lang/String;

.field private sign:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private start_time:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDate_pic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->date_pic:Ljava/util/List;

    return-object v0
.end method

.method public getDate_tag_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->date_tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_tag_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->gift_tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    return-object v0
.end method

.method public getPay_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->pay_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSex_invite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sex_invite:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sign:Ljava/util/List;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->address:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->cover_pic:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0
    .parameter "create_time"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->create_time:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setDate_pic(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, date_pic:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->date_pic:Ljava/util/List;

    .line 233
    return-void
.end method

.method public setDate_tag_id(Ljava/lang/String;)V
    .locals 0
    .parameter "date_tag_id"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->date_tag_id:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->detail:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setGift_tag_name(Ljava/lang/String;)V
    .locals 0
    .parameter "gift_tag_name"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->gift_tag_name:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->intro:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->lat:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0
    .parameter "lng"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->lng:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setOrganizer(Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;)V
    .locals 0
    .parameter "organizer"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->organizer:Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;

    .line 225
    return-void
.end method

.method public setPay_type(Ljava/lang/String;)V
    .locals 0
    .parameter "pay_type"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->pay_type:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sex:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSex_invite(Ljava/lang/String;)V
    .locals 0
    .parameter "sex_invite"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sex_invite:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSign(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, sign:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->sign:Ljava/util/List;

    .line 241
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .parameter "start_time"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->start_time:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->status:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->title:Ljava/lang/String;

    .line 113
    return-void
.end method
