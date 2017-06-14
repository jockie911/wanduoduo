.class public Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "OnLinePublishAppointmentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PIC_NUM_COUNT:I = 0x3

.field private static final PIC_UPLOADER:I = 0x1

.field private static final PUB_APPOINT:I = 0x2


# instance fields
.field private adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field etContent:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00be
        }
    .end annotation
.end field

.field etEndPlace:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e016f
        }
    .end annotation
.end field

.field etPlace:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0170
        }
    .end annotation
.end field

.field etStartPlace:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e016d
        }
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e016a
        }
    .end annotation
.end field

.field private gender:I

.field ivNumAdd:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0176
        }
    .end annotation
.end field

.field ivNumReduce:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0174
        }
    .end annotation
.end field

.field private lat:D

.field llTitleTraval:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e016b
        }
    .end annotation
.end field

.field private lng:D

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIcons:[I

.field private mTitles:[Ljava/lang/String;

.field mgvPhoto:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00bf
        }
    .end annotation
.end field

.field mgvTag:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00d4
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

.field private payOder:I

.field private picLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private picUrlLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field relDays:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0173
        }
    .end annotation
.end field

.field relFemale:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015f
        }
    .end annotation
.end field

.field relMale:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015e
        }
    .end annotation
.end field

.field relPlace:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0105
        }
    .end annotation
.end field

.field relTitle:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0167
        }
    .end annotation
.end field

.field private resArrsys:[I

.field private runTitle:Ljava/lang/String;

.field private starttime:J

.field private timePicker:Lcom/bigkoo/pickerview/TimePickerView;

.field tvBuyAA:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f0
        }
    .end annotation
.end field

.field tvBuyMe:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f1
        }
    .end annotation
.end field

.field tvBuyThey:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f2
        }
    .end annotation
.end field

.field tvContentSize:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01f3
        }
    .end annotation
.end field

.field tvItemSelectTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0172
        }
    .end annotation
.end field

.field tvNumDay:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0175
        }
    .end annotation
.end field

.field tvRightJt:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0169
        }
    .end annotation
.end field

.field tvRightTitleBar:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ef
        }
    .end annotation
.end field

.field tvSexAll:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015d
        }
    .end annotation
.end field

.field tvSubTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0168
        }
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 57
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mResults:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->picUrlLists:Ljava/util/List;

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->resArrsys:[I

    .line 128
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5403\u996d"

    aput-object v2, v0, v1

    const-string v1, "\u7535\u5f71\u540d\u5b57"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u5531\u6b4c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5176\u4ed6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mTitles:[Ljava/lang/String;

    .line 129
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mTitleIcons:[I

    .line 132
    iput v3, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->payOder:I

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->picLists:Ljava/util/List;

    .line 502
    new-instance v0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$3;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void

    .line 125
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0xct 0x7ft
        0x0t 0x0t 0xct 0x7ft
        0x1t 0x0t 0xct 0x7ft
        0x4t 0x0t 0xct 0x7ft
        0x3t 0x0t 0xct 0x7ft
        0x2t 0x0t 0xct 0x7ft
    .end array-data

    .line 129
    :array_1
    .array-data 0x4
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;D)D
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lat:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;D)D
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lng:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->picLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sendPubAppoint()V

    return-void
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;J)J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->starttime:J

    return-wide p1
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvNumDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "date_tag_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v4, "token"

    const-string v5, "token"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v4, "intro"

    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v4, "pay_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->payOder:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v4, "title"

    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getSubTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v4, "sex_invite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->gender:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    invoke-virtual {v4}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;->getSelectTag()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, selectTag:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    const-string v4, "sign"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    const-string v4, "lat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lat:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v4, "lng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->lng:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v4, "start_time"

    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getSdfTime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .local v2, obj:Lorg/json/JSONObject;
    iget v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-nez v4, :cond_1

    .line 399
    const-string v4, "detail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u884c\u7a0b\u9884\u8ba1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5929"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v4, "name"

    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etEndPlace:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :goto_0
    const-string v4, "address"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .end local v2           #obj:Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 402
    .restart local v2       #obj:Lorg/json/JSONObject;
    :cond_1
    const-string v4, "name"

    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etPlace:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v2           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getResource(I)[Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->resArrsys:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSdfTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 413
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    iget-wide v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->starttime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSubTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    const-string v0, ""

    .line 419
    .local v0, title:Ljava/lang/String;
    iget v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 439
    :goto_0
    return-object v0

    .line 421
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etStartPlace:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etEndPlace:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    goto :goto_0

    .line 424
    :pswitch_1
    const-string v0, "\u7ea6\u4eba\u5403\u996d"

    .line 425
    goto :goto_0

    .line 427
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ea6\u4eba\u770b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7535\u5f71"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    goto :goto_0

    .line 430
    :pswitch_3
    const-string v0, "\u7ea6\u4eba\u5531\u6b4c"

    .line 431
    goto :goto_0

    .line 433
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ea6\u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    goto :goto_0

    .line 436
    :pswitch_5
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initHeadTile()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 174
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->llTitleTraval:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relPlace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvTime:Landroid/widget/TextView;

    const-string v1, "\u51fa\u53d1\u65f6\u95f4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relDays:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mTitles:[Ljava/lang/String;

    iget v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0021

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mTitleIcons:[I

    iget v3, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 184
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightJt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :cond_2
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-ne v0, v5, :cond_4

    const-string v0, "\u8bf7\u8f93\u5165\u7535\u5f71\u540d\u79f0"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u8bf7\u51fa\u5165\u9080\u7ea6\u4e3b\u9898"

    goto :goto_1
.end method

.method private initPhoto()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 205
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, v2}, Lcom/wanduoduo/widget/MyGridView;->setNumColumns(I)V

    .line 207
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    const/4 v3, 0x0

    new-array v5, v3, [Z

    move v3, v2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 208
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method private initTag()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    iget v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getResource(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-direct {v0, v1, v2}, Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;-><init>([Ljava/lang/String;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    .line 201
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->onLineAppointPubTagAdapter:Lcom/wanduoduo/adapter/online/OnLineAppointPubTagAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "txt"

    .prologue
    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPubAppoint()V
    .locals 6

    .prologue
    .line 520
    const-string v0, "date_pub"

    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->picLists:Ljava/util/List;

    const-string v3, "date_pic"

    new-instance v4, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 521
    return-void
.end method

.method private setCount(Z)V
    .locals 5
    .parameter "isAdd"

    .prologue
    const/4 v4, 0x1

    .line 342
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getCount()I

    move-result v0

    .line 343
    .local v0, i:I
    if-gt v0, v4, :cond_0

    if-eqz p1, :cond_1

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvNumDay:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 346
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumReduce:Landroid/widget/ImageView;

    const v2, 0x7f020068

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setIvRes(Landroid/widget/ImageView;I)V

    .line 350
    :goto_1
    return-void

    .line 344
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->ivNumReduce:Landroid/widget/ImageView;

    const v2, 0x7f020069

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setIvRes(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method private setIvRes(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "iv"
    .parameter "resID"

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    return-void
.end method

.method private setPicker()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView;

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/TimePickerView;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/TimePickerView$Type;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    .line 528
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/TimePickerView;->setTime(Ljava/util/Date;)V

    .line 529
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/TimePickerView;->setCyclic(Z)V

    .line 530
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/TimePickerView;->setCancelable(Z)Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 531
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    new-instance v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$4;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/TimePickerView;->setOnTimeSelectListener(Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;)V

    .line 545
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/TimePickerView;->show()V

    .line 546
    return-void
.end method

.method private sex(I)V
    .locals 3
    .parameter "position"

    .prologue
    const v2, 0x7f02026e

    const v1, 0x7f020289

    .line 353
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 354
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relMale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relFemale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 356
    if-nez p1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 363
    :cond_0
    :goto_0
    iput p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->gender:I

    .line 364
    return-void

    .line 358
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relMale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->relFemale:Landroid/widget/RelativeLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private sort(I)V
    .locals 3
    .parameter "position"

    .prologue
    const v2, 0x7f020289

    const v1, 0x7f02026e

    .line 367
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyMe:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyThey:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 369
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyAA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 370
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyMe:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 377
    :cond_0
    :goto_0
    iput p1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->payOder:I

    .line 378
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyThey:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 374
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvBuyAA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private toast(Ljava/lang/String;)Z
    .locals 1
    .parameter "toastMsg"

    .prologue
    .line 464
    invoke-static {p1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 277
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 266
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f040042

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u53d1\u5e03\u968f\u5fc3\u7ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u53d1\u5e03"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    .line 154
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->initHeadTile()V

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sex(I)V

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sort(I)V

    .line 159
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->initPhoto()V

    .line 160
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->initTag()V

    .line 161
    new-instance v0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$1;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 168
    return-void
.end method

.method public isReady()Z
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 443
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-nez v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etStartPlace:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u51fa\u53d1\u5730\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etEndPlace:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u76ee\u7684\u5730\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etPlace:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-eqz v0, :cond_6

    const-string v0, "\u968f\u5fc3\u7ea6\u5730\u70b9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 447
    :cond_2
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    if-ne v0, v2, :cond_4

    const-string v0, "\u8bf7\u8f93\u5165\u7535\u5f71\u540d\u79f0"

    :goto_1
    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "\u8bf7\u8f93\u5165\u9080\u7ea6\u4e3b\u9898"

    goto :goto_1

    .line 449
    :cond_5
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 450
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u8bf7\u8f93\u5165\u8fd0\u52a8\u7c7b\u578b"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 451
    :cond_6
    iget-wide v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->starttime:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    const-string v0, "\u8bf7\u9009\u62e9\u65f6\u95f4"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 452
    :cond_7
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u8bf7\u5199\u4e00\u70b9\u5fc3\u5f97"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 456
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 239
    if-eqz p3, :cond_0

    .line 240
    sparse-switch p1, :sswitch_data_0

    .line 260
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    return-void

    .line 242
    :sswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 245
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 246
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mResults:Ljava/util/ArrayList;

    .line 247
    sget-boolean v1, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mResults:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 255
    :sswitch_2
    const-string v1, "career"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvRightJt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0167,
            0x7f0e015d,
            0x7f0e015e,
            0x7f0e015f,
            0x7f0e01f1,
            0x7f0e01f2,
            0x7f0e01f0,
            0x7f0e01ef,
            0x7f0e0174,
            0x7f0e0176,
            0x7f0e0171
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 284
    :sswitch_0
    iget v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    const-string v1, "content"

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->runTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_1
    const-string v1, "isFromRun"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0, v5}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sex(I)V

    goto :goto_0

    .line 297
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sex(I)V

    goto :goto_0

    .line 300
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sex(I)V

    goto :goto_0

    .line 303
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sort(I)V

    goto :goto_0

    .line 306
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sort(I)V

    goto :goto_0

    .line 309
    :sswitch_6
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->sort(I)V

    goto :goto_0

    .line 312
    :sswitch_7
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u6b63\u5728\u53d1\u5e03\u968f\u5fc3\u7ea6"

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 317
    :cond_2
    const-string v1, "pic_upload"

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v3, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 322
    :sswitch_8
    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setCount(Z)V

    goto :goto_0

    .line 325
    :sswitch_9
    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setCount(Z)V

    goto :goto_0

    .line 328
    :sswitch_a
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->setPicker()V

    goto :goto_0

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x7f0e015d -> :sswitch_1
        0x7f0e015e -> :sswitch_2
        0x7f0e015f -> :sswitch_3
        0x7f0e0167 -> :sswitch_0
        0x7f0e0171 -> :sswitch_a
        0x7f0e0174 -> :sswitch_8
        0x7f0e0176 -> :sswitch_9
        0x7f0e01ef -> :sswitch_7
        0x7f0e01f0 -> :sswitch_6
        0x7f0e01f1 -> :sswitch_4
        0x7f0e01f2 -> :sswitch_5
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 214
    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v4}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_0

    .line 215
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u76f8\u673a\u62cd\u7167"

    aput-object v4, v2, v3

    const-string v3, "\u76f8\u518c\u9009\u62e9"

    aput-object v3, v2, v5

    .line 217
    .local v2, item:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$2;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity$2;-><init>(Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 235
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2           #item:[Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "bimp"

    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 231
    const-string v3, "kind"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 550
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/TimePickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->timePicker:Lcom/bigkoo/pickerview/TimePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/TimePickerView;->dismiss()V

    .line 552
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLinePublishAppointmentActivity;->tvContentSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method
