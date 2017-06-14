.class public Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "PlayerPerfectionItemActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private MAX_PIC_COUNT:I

.field cbAllPlace:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ae
        }
    .end annotation
.end field

.field cbFirstCommunicate:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a3
        }
    .end annotation
.end field

.field cbSecondCommunicate:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a4
        }
    .end annotation
.end field

.field private cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

.field etDesc:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a6
        }
    .end annotation
.end field

.field etPrice:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b1
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

.field gvCert:Landroid/widget/GridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01aa
        }
    .end annotation
.end field

.field gvPlace:Lcom/wanduoduo/widget/MyGridView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ad
        }
    .end annotation
.end field

.field ivTitleDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a1
        }
    .end annotation
.end field

.field private limitMaxPrice:Ljava/lang/String;

.field llItemPrice:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b0
        }
    .end annotation
.end field

.field llPrice:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01af
        }
    .end annotation
.end field

.field mHandler:Lcom/wanduoduo/widget/MyHandler;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options1Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options2Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field private prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

.field pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

.field rootLLCommunicate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a2
        }
    .end annotation
.end field

.field rootLLTitle:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a0
        }
    .end annotation
.end field

.field rootLlCert:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a9
        }
    .end annotation
.end field

.field rootRelDesc:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a5
        }
    .end annotation
.end field

.field rootRelPlace:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ab
        }
    .end annotation
.end field

.field tvDescCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01a8
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

.field tvSelectPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01ac
        }
    .end annotation
.end field

.field tvWraning:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01b2
        }
    .end annotation
.end field

.field private type:I

.field webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00eb
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->MAX_PIC_COUNT:I

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mResults:Ljava/util/List;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options1Items:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options2Items:Ljava/util/ArrayList;

    .line 446
    new-instance v0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$6;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->limitMaxPrice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->MAX_PIC_COUNT:I

    return v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->makeSureBackResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setCityPicker()V

    return-void
.end method

.method static synthetic access$402(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;Lcom/wanduoduo/bean/CitySelectBean;)Lcom/wanduoduo/bean/CitySelectBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

    return-object p1
.end method

.method private doWithCommunicate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 243
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "2"

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v0, "1"

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private getIntetnntMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCert()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 190
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    iget v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->MAX_PIC_COUNT:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    new-array v5, v4, [Z

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 191
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvCert:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvCert:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    return-void
.end method

.method private initPlace()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 391
    const-string v0, "city_select"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "city_select"

    const/4 v1, 0x0

    new-instance v2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$MyOnrefreshListen;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 397
    :goto_0
    new-instance v0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    invoke-direct {v0, p0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    .line 398
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->gvPlace:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 399
    return-void

    .line 394
    :cond_0
    const-string v0, "city_select"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wanduoduo/bean/CitySelectBean;

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean;

    iput-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

    .line 395
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v0, v3}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isStringEmpty(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "et"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSureBackResult()V
    .locals 6

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v0, intent:Landroid/content/Intent;
    iget v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->type:I

    packed-switch v3, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 376
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->finish()V

    .line 377
    return-void

    .line 321
    :pswitch_1
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->isStringEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    const-string v3, "title"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 324
    :cond_1
    const-string v3, "title"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->isStringEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    const-string v3, "price"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 331
    :cond_2
    const-string v3, "price"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 335
    :pswitch_3
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    const-string v3, "communicate_way"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 337
    :cond_3
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const-string v3, "communicate_way"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 342
    :pswitch_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 343
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iget-object v3, v3, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .local v2, mAreaIDList:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 346
    .end local v2           #mAreaIDList:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    iget-object v3, v3, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 347
    const-string v3, "parent_code"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    invoke-virtual {v4}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->getParentCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v3, "area_id"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 350
    :cond_5
    const-string v3, "area_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 354
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :pswitch_5
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->isStringEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 355
    const-string v3, "desc"

    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 357
    :cond_6
    const-string v3, "desc"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 361
    :pswitch_6
    const-string v3, "pic_upload"

    sget-object v4, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v5, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$5;

    invoke-direct {v5, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$5;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-static {v3, v4, v5}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setCBCheckedStatus(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    return-void
.end method

.method private setCityPicker()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 402
    new-instance v4, Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-direct {v4, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    .line 403
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/CitySelectBean;->getData()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/CitySelectBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 405
    iget-object v5, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options1Items:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/CitySelectBean$DataBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->getCity_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v3, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 408
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanduoduo/bean/CitySelectBean$DataBean;

    invoke-virtual {v4}, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->getSon()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;

    .line 409
    .local v2, son:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;
    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v2}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->getCity_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    .end local v2           #son:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;
    :cond_1
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options2Items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v3           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    iget-object v5, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options1Items:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->options2Items:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/bigkoo/pickerview/OptionsPickerView;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 416
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    const-string v5, "\u9009\u62e9\u57ce\u5e02"

    invoke-virtual {v4, v5}, Lcom/bigkoo/pickerview/OptionsPickerView;->setTitle(Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v4, v8, v8, v8}, Lcom/bigkoo/pickerview/OptionsPickerView;->setCyclic(ZZZ)V

    .line 418
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v4, v8, v8}, Lcom/bigkoo/pickerview/OptionsPickerView;->setSelectOptions(II)V

    .line 419
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v4, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;->setOnoptionsSelectListener(Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;)V

    .line 420
    return-void
.end method

.method private setPriceWebView()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 159
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 162
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 163
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 165
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 166
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 167
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setScrollBarStyle(I)V

    .line 171
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearHistory()V

    .line 172
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearFormData()V

    .line 173
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v1, v3}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->clearCache(Z)V

    .line 175
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 176
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.wanduoduo.cc/new/price.html?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "token"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v2, "getLimitPrice"

    const-string v3, ""

    new-instance v4, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 185
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 481
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 461
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f040049

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->type:I

    .line 112
    iget v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6dfb\u52a0\u6807\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6280\u80fd\u4ef7\u683c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->llPrice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setPriceWebView()V

    .line 129
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6c9f\u901a\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLLCommunicate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->doWithCommunicate()V

    goto :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u533a\u57df"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelPlace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->initPlace()V

    goto/16 :goto_0

    .line 142
    :pswitch_5
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u7ea6\u73a9\u8bf4\u660e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootRelDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etDesc:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getIntetnntMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_6
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6dfb\u52a0\u6280\u80fd\u8bc1\u4e66"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->rootLlCert:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->initCert()V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
    sparse-switch p2, :sswitch_data_0

    .line 234
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    return-void

    .line 221
    :sswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 224
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 225
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mResults:Ljava/util/List;

    .line 226
    sget-boolean v1, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mResults:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->mResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e1,
            0x7f0e01ef,
            0x7f0e01a3,
            0x7f0e01a4,
            0x7f0e01a1,
            0x7f0e01ae,
            0x7f0e01ac,
            0x7f0e01a7
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 264
    :sswitch_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const-string v2, "\u662f\u5426\u4fdd\u5b58"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 266
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$4;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$4;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$3;

    invoke-direct {v4, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$3;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    .line 272
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 281
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    :sswitch_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->makeSureBackResult()V

    goto :goto_0

    .line 284
    :sswitch_2
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbFirstCommunicate:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setCBCheckedStatus(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 287
    :sswitch_3
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbSecondCommunicate:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->setCBCheckedStatus(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 290
    :sswitch_4
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etTitle:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :sswitch_5
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbAllPlace:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->setDataCheck(Z)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->setDataCheck(Z)V

    goto :goto_0

    .line 303
    :sswitch_6
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/OptionsPickerView;->show()V

    goto :goto_0

    .line 306
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/index/DetailWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v2, "url"

    const-string v3, "http://api.wanduoduo.cc/new/a_explain.html"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x7f0e00e1 -> :sswitch_0
        0x7f0e01a1 -> :sswitch_4
        0x7f0e01a3 -> :sswitch_2
        0x7f0e01a4 -> :sswitch_3
        0x7f0e01a7 -> :sswitch_7
        0x7f0e01ac -> :sswitch_6
        0x7f0e01ae -> :sswitch_5
        0x7f0e01ef -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 196
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->MAX_PIC_COUNT:I

    if-ne v2, v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->picAdapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v2}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    .line 200
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u76f8\u673a\u62cd\u7167"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u76f8\u518c\u9009\u62e9"

    aput-object v3, v1, v2

    .line 202
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity$2;-><init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 512
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->dismiss()V

    .line 514
    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsSelect(III)V
    .locals 5
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 424
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbAllPlace:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 425
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cityListBean:Lcom/wanduoduo/bean/CitySelectBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CitySelectBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CitySelectBean$DataBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CitySelectBean$DataBean;->getSon()Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, son:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->clearData()V

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v2, temp:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean;->getGrandSon()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    .line 431
    .local v0, grandSon:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    .end local v0           #grandSon:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;
    :cond_2
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->prefectionItemPlaceAdapter:Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;

    invoke-virtual {v3, v2}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->addData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->limitMaxPrice:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 467
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    const-string v2, "*\u8d85\u8fc7\u5b9a\u4ef7\u4e0a\u7ebf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->limitMaxPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u53ef\u8bbe\u7f6e\u7684\u91d1\u989d\u7684\u4e0a\u9650\u662f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->limitMaxPrice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143/\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->tvWraning:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setIsFullCheck(Z)V
    .locals 1
    .parameter "isFull"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;->cbAllPlace:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 439
    return-void
.end method
