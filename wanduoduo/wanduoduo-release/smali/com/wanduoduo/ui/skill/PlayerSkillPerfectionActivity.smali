.class public Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CODE_ERR:I = 0x3

.field private static final CODE_PIC:I = 0x1

.field private static final CODE_PUB:I = 0x2

.field private static final PIC_NUM_COUNT:I = 0x6


# instance fields
.field private alreadyPicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private areaId:Ljava/lang/String;

.field private dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

.field private desc:Ljava/lang/String;

.field private drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

.field private isCanDrink:Ljava/lang/String;

.field private isrepeat:Z

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

.field mgvPhoto:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00bf
        }
    .end annotation
.end field

.field mgvVideo:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01be
        }
    .end annotation
.end field

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private parentCode:Ljava/lang/String;

.field private picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field private picData:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field relTime:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0171
        }
    .end annotation
.end field

.field private server_end_time:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

.field private tag_id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field tvCertificate:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01c6
        }
    .end annotation
.end field

.field tvCommunicate:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01c3
        }
    .end annotation
.end field

.field tvDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0124
        }
    .end annotation
.end field

.field tvDrink:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01c8
        }
    .end annotation
.end field

.field tvKind:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01c0
        }
    .end annotation
.end field

.field tvPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0106
        }
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0113
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

.field videoUrlLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whichWayCommunicate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mResults:Ljava/util/ArrayList;

    .line 93
    const-string v0, "2"

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isrepeat:Z

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    .line 613
    new-instance v0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$6;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Lcom/wanduoduo/adapter/info/SkillVideoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private drinkPicker()V
    .locals 3

    .prologue
    .line 544
    new-instance v1, Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v0, drinkItemLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "\u4e0d\u63a5\u53d7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v1, "\u53ef\u5c11\u91cf\u996e\u9152"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v1, v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->setPicker(Ljava/util/ArrayList;)V

    .line 549
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/OptionsPickerView;->setCyclic(Z)V

    .line 550
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v1, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;->setOnoptionsSelectListener(Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;)V

    .line 551
    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 6
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
    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "token"

    const-string v4, "token"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    const-string v3, "title"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tag_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 366
    const-string v3, "category_id"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tag_id:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    const-string v3, "fee"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 370
    const-string v3, "intro"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_3
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->areaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 372
    const-string v3, "area_id"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->areaId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_4
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->parentCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 374
    const-string v3, "city_code"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->parentCode:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_5
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 376
    const-string v3, "gift_pic"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picData:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_6
    iget v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->type:I

    const/16 v4, 0x271a

    if-ne v3, v4, :cond_7

    .line 378
    const-string v3, "server_time_type"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_7
    const-string v3, "server_time"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_time:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "server_end_time"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_end_time:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v3, "is_repeat"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_9

    .line 386
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 387
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 390
    .end local v2           #url:Ljava/lang/String;
    :cond_8
    const-string v3, "gift_video"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v0           #jsonArray:Lorg/json/JSONArray;
    :cond_9
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 393
    const-string v3, "is_drink"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_a
    return-object v1
.end method

.method private initPhoto()V
    .locals 6

    .prologue
    .line 251
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-instance v4, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$4;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$4;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    const/4 v5, 0x0

    new-array v5, v5, [Z

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 257
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    return-void
.end method

.method private initVideo()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$2;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$2;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-direct {v0, v1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;-><init>(Lcom/wanduoduo/adapter/info/SkillVideoAdapter$OnDeleteListen;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    .line 223
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvVideo:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->addData(Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvVideo:Lcom/wanduoduo/widget/MyGridView;

    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$3;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    return-void
.end method

.method private judgeReadyPublish()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 329
    iget v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->type:I

    const/16 v2, 0x2766

    if-ne v1, v2, :cond_2

    .line 330
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 331
    const-string v0, "\u8bf7\u4e0a\u4f20\u7167\u7247"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v0, "\u8bf7\u8f93\u5165\u65f6\u95f4"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 336
    :cond_2
    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 337
    const-string v0, "\u8bf7\u4e0a\u4f20\u7167\u7247"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    const-string v0, "\u8bf7\u8f93\u5165\u670d\u52a1\u6807\u9898"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 340
    :cond_4
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    const-string v0, "\u8bf7\u8f93\u5165\u4ef7\u683c"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    const-string v0, "\u8bf7\u8f93\u5165\u6c9f\u901a\u65b9\u5f0f"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 344
    :cond_6
    const-string v1, "2"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    const-string v0, "\u8bf7\u8f93\u5165\u65f6\u95f4"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 346
    :cond_7
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->areaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 347
    const-string v0, "\u8bf7\u586b\u5199\u670d\u52a1\u533a\u57df"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 348
    :cond_8
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 349
    const-string v0, "\u8bf7\u586b\u5199\u670d\u52a1\u8bf4\u660e"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 350
    :cond_9
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v0, "\u8bf7\u8f93\u5165\u662f\u5426\u996e\u9152"

    invoke-direct {p0, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->toast(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private setContentForResult(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "content"

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    return-void
.end method

.method private showDialogExit()V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->finish()V

    .line 418
    return-void
.end method

.method private toast(Ljava/lang/String;)Z
    .locals 1
    .parameter "content"

    .prologue
    .line 356
    invoke-static {p1}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f04004d

    return v0
.end method

.method protected initData()V
    .locals 9

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "type"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->type:I

    .line 114
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvRightTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->type:I

    const/16 v7, 0x271a

    if-ne v6, v7, :cond_1

    .line 118
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvKind:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 176
    sget-object v6, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 178
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->initPhoto()V

    .line 179
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker()V

    .line 181
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->initVideo()V

    .line 182
    return-void

    .line 120
    :cond_1
    iget v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->type:I

    const/16 v7, 0x2766

    if-ne v6, v7, :cond_0

    .line 121
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTitle:Landroid/widget/TextView;

    const-string v7, "\u4fee\u6539\u6280\u80fd\u4fe1\u606f"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "datalistbean"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    iput-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    .line 127
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getServer_time_type()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    if-ne v6, v7, :cond_3

    .line 128
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->relTime:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTime:Landroid/widget/TextView;

    const-string v7, "\u5df2\u586b\u5199"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07022b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvSubTitle:Landroid/widget/TextView;

    const-string v7, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPrice:Landroid/widget/TextView;

    const-string v7, "\u5df2\u586b\u5199"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    const-string v7, "\u5df2\u586b\u5199"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDesc:Landroid/widget/TextView;

    const-string v7, "\u5df2\u586b\u5199"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v6, "2"

    iget-object v7, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getIs_drink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    const-string v7, "\u4e0d\u63a5\u53d7"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 153
    .local v3, jsonArray:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 155
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_pic()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 157
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 133
    .end local v2           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_3
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07021d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :cond_4
    const-string v6, "1"

    iget-object v7, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v7}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getIs_drink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    const-string v7, "\u53ef\u5c11\u91cf\u996e\u9152"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .restart local v2       #i:I
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    :cond_5
    move-object v3, v4

    .line 163
    .end local v2           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->dataListBean:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    invoke-virtual {v6}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->getGift_video()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, gift_video:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    :try_start_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, jsonArray1:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 159
    .end local v1           #gift_video:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #jsonArray1:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Lorg/json/JSONException;
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 170
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #gift_video:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 171
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 159
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #gift_video:Ljava/lang/String;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    goto :goto_6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 430
    if-eqz p3, :cond_0

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 505
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 506
    return-void

    .line 433
    :sswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvKind:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const-string v1, "tag_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tag_id:Ljava/lang/String;

    goto :goto_0

    .line 437
    :sswitch_1
    const-string v1, "title"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvSubTitle:Landroid/widget/TextView;

    const-string v2, "\u5df2\u586b\u5199"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvSubTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    :sswitch_2
    const-string v1, "price"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPrice:Landroid/widget/TextView;

    const-string v2, "\u5df2\u586b\u5199"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 453
    :sswitch_3
    const-string v1, "desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    .line 454
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 455
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDesc:Landroid/widget/TextView;

    const-string v2, "\u5df2\u586b\u5199"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDesc:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    :sswitch_4
    const-string v1, "area_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->areaId:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->areaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 463
    const-string v1, "parent_code"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->parentCode:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    const-string v2, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 466
    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->parentCode:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 471
    :sswitch_5
    const-string v1, "communicate_way"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    .line 472
    const-string v1, "2"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07022b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->relTime:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 475
    :cond_5
    const-string v1, "1"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->relTime:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 481
    :sswitch_6
    const-string v1, "server_time"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_time:Ljava/lang/String;

    .line 482
    const-string v1, "server_end_time"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_end_time:Ljava/lang/String;

    .line 483
    const-string v1, "isrepeat"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isrepeat:Z

    .line 484
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->server_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 485
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTime:Landroid/widget/TextView;

    const-string v2, "\u5df2\u586b\u5199"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 487
    :cond_6
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 491
    :sswitch_7
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 494
    :sswitch_8
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 495
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mResults:Ljava/util/ArrayList;

    .line 496
    sget-boolean v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mResults:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 497
    :cond_7
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    .end local v0           #result:Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x271a -> :sswitch_7
        0x2766 -> :sswitch_8
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e01bf,
            0x7f0e0167,
            0x7f0e01c1,
            0x7f0e01c2,
            0x7f0e0171,
            0x7f0e0105,
            0x7f0e01c4,
            0x7f0e01c5,
            0x7f0e01c7,
            0x7f0e01c9,
            0x7f0e01ca,
            0x7f0e00e1
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 323
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 268
    :sswitch_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->showDialogExit()V

    goto :goto_0

    .line 274
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0, v4}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 279
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 282
    :sswitch_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->price:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 285
    :sswitch_5
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->whichWayCommunicate:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 288
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 291
    :sswitch_7
    const/4 v1, 0x6

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 294
    :sswitch_8
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->desc:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 297
    :sswitch_9
    const/16 v1, 0x8

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 300
    :sswitch_a
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    const-string v1, "2"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v1, v3}, Lcom/bigkoo/pickerview/OptionsPickerView;->setSelectOptions(I)V

    .line 307
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->show()V

    goto :goto_0

    .line 303
    :cond_2
    const-string v1, "1"

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v1, v4}, Lcom/bigkoo/pickerview/OptionsPickerView;->setSelectOptions(I)V

    goto :goto_1

    .line 313
    :sswitch_b
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->judgeReadyPublish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u6b63\u5728\u53d1\u5e03\u6280\u80fd\u4e2d..."

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    const-string v1, "pic_upload"

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v3, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto/16 :goto_0

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00e1 -> :sswitch_1
        0x7f0e0105 -> :sswitch_7
        0x7f0e0167 -> :sswitch_3
        0x7f0e0171 -> :sswitch_6
        0x7f0e01bf -> :sswitch_2
        0x7f0e01c1 -> :sswitch_4
        0x7f0e01c2 -> :sswitch_5
        0x7f0e01c4 -> :sswitch_8
        0x7f0e01c5 -> :sswitch_9
        0x7f0e01c7 -> :sswitch_a
        0x7f0e01c9 -> :sswitch_0
        0x7f0e01ca -> :sswitch_b
        0x7f0e01ef -> :sswitch_0
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
    const/4 v5, 0x2

    .line 517
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v4}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_0

    .line 518
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u76f8\u673a\u62cd\u7167"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u76f8\u518c\u9009\u62e9"

    aput-object v4, v2, v3

    .line 520
    .local v2, item:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$5;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$5;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 540
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2           #item:[Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 532
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "kind"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    const-string v4, "piclist"

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 536
    const-string v4, "bimp"

    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 537
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 567
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->drinkPicker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->dismiss()V

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 187
    const-string v1, "video_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->skillVideoAdapter:Lcom/wanduoduo/adapter/info/SkillVideoAdapter;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/adapter/info/SkillVideoAdapter;->addData(Ljava/lang/String;)V

    .line 191
    :cond_0
    const-string v1, "video_upload"

    new-instance v2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$1;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-static {v1, v0, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostVideo(Ljava/lang/String;Ljava/lang/String;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 209
    :cond_1
    return-void
.end method

.method public onOptionsSelect(III)V
    .locals 2
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 555
    if-nez p1, :cond_1

    .line 556
    const-string v0, "2"

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    const-string v1, "\u4e0d\u63a5\u53d7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 559
    const-string v0, "1"

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->isCanDrink:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    const-string v1, "\u53ef\u5c11\u91cf\u996e\u9152"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
