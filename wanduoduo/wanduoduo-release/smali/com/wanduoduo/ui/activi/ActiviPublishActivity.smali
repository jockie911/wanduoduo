.class public Lcom/wanduoduo/ui/activi/ActiviPublishActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "ActiviPublishActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTIVI_WATCH:I = 0x2

.field private static final PIC_NUM_COUNT:I = 0x9

.field private static final PUB_ACTIVI:I = 0x3

.field private static final SELECT_PLACE:I = 0x4

.field private static final UP_LOAD_PIC:I = 0x1


# instance fields
.field private adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

.field etContent:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00be
        }
    .end annotation
.end field

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

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

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

.field private pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

.field tvLocation:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00c1
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

.field tvWatch:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00c3
        }
    .end annotation
.end field

.field private watchposition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mResults:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->picUrlLists:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    .line 218
    new-instance v0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$2;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->picUrlLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->getPubMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getPubMap()Ljava/util/Map;
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
    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const-string v1, "content"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "view_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->getPlace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    const-string v1, "lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->getLat()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "lng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->getLng()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "address"

    iget-object v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->getPlace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    return-object v0
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "\u8bf7\u4e0a\u4f20\u5185\u5bb9"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f04001b

    return v0
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u53d1\u5e03\u52a8\u6001"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v2, "\u53d1\u5e03"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object v0, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, v3}, Lcom/wanduoduo/widget/MyGridView;->setNumColumns(I)V

    .line 81
    new-instance v0, Lcom/wanduoduo/adapter/PhotoPicAdapter;

    const/16 v2, 0x9

    const/4 v4, 0x0

    new-array v5, v4, [Z

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/wanduoduo/adapter/PhotoPicAdapter;-><init>(Ljava/util/List;IILcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;[Z)V

    iput-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v0, p0}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 150
    if-eqz p3, :cond_0

    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 185
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    return-void

    .line 153
    :sswitch_0
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 156
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 157
    const-string v1, "selector_results"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mResults:Ljava/util/ArrayList;

    .line 158
    sget-boolean v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mResults:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v1}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 166
    :sswitch_2
    const-string v1, "watchposition"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    .line 167
    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 168
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvWatch:Landroid/widget/TextView;

    const-string v2, "\u516c\u5f00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_3
    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 170
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvWatch:Landroid/widget/TextView;

    const-string v2, "\u4ec5\u4e92\u76f8\u559c\u6b22\u7684\u4eba\u53ef\u89c1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_4
    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvWatch:Landroid/widget/TextView;

    const-string v2, "\u4ec5\u81ea\u5df1\u53ef\u89c1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :sswitch_3
    const-string v1, "pubSelectPlaceBean"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/PubSelectPlaceBean;

    iput-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    .line 177
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->pubSelectPlaceBean:Lcom/wanduoduo/bean/PubSelectPlaceBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/PubSelectPlaceBean;->getPlace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvLocation:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvLocation:Landroid/widget/TextView;

    const-string v2, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x271a -> :sswitch_0
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e00c0,
            0x7f0e00c2,
            0x7f0e00c4,
            0x7f0e00c5
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 113
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 90
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/activi/ActiviPublishSelectPlaceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 93
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "watchposition"

    iget v2, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->watchposition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-direct {p0}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6b63\u5728\u4e0a\u4f20\u4e2d..."

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/wanduoduo/utils/DialogUtils;->loading(Landroid/content/Context;[Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "pic_upload"

    sget-object v2, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    new-instance v3, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;

    invoke-direct {v3, p0, v4}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostPic(Ljava/lang/String;Ljava/util/List;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c0 -> :sswitch_1
        0x7f0e00c2 -> :sswitch_2
        0x7f0e00c4 -> :sswitch_0
        0x7f0e00c5 -> :sswitch_0
        0x7f0e01ef -> :sswitch_3
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

    .line 125
    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v4}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->adapter:Lcom/wanduoduo/adapter/PhotoPicAdapter;

    invoke-virtual {v3}, Lcom/wanduoduo/adapter/PhotoPicAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_0

    .line 126
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, builder:Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u76f8\u673a\u62cd\u7167"

    aput-object v4, v2, v3

    const-string v3, "\u76f8\u518c\u9009\u62e9"

    aput-object v3, v2, v5

    .line 128
    .local v2, item:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 146
    .end local v0           #builder:Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2           #item:[Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "bimp"

    sget-object v3, Lcom/wanduoduo/utils/Bimp;->drr:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 142
    const-string v3, "kind"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
