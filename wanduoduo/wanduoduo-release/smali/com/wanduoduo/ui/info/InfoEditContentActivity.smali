.class public Lcom/wanduoduo/ui/info/InfoEditContentActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoEditContentActivity.java"


# instance fields
.field private career:Ljava/lang/String;

.field private city_title:Ljava/lang/String;

.field inComeData:[Ljava/lang/String;

.field private mNineLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private picker:Lcom/bigkoo/pickerview/OptionsPickerView;

.field pickerDatas:Ljava/util/ArrayList;

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
        }
    .end annotation
.end field

.field tvCareer:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0108
        }
    .end annotation
.end field

.field tvHeight:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0102
        }
    .end annotation
.end field

.field tvIncome:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e010a
        }
    .end annotation
.end field

.field tvLove:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0104
        }
    .end annotation
.end field

.field tvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fa
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

.field tvSex:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fc
        }
    .end annotation
.end field

.field tvXingzuo:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0100
        }
    .end annotation
.end field

.field xingzuo:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u767d\u7f8a\u5ea7"

    aput-object v1, v0, v3

    const-string v1, "\u91d1\u725b\u5ea7"

    aput-object v1, v0, v4

    const-string v1, "\u53cc\u5b50\u5ea7"

    aput-object v1, v0, v5

    const-string v1, "\u5de8\u87f9\u5ea7"

    aput-object v1, v0, v6

    const-string v1, "\u72ee\u5b50\u5ea7"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5904\u5973\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5929\u79e4\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5929\u874e\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5c04\u624b\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u6469\u7faf\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6c34\u74f6\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u53cc\u9c7c\u5ea7"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->xingzuo:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3k"

    aput-object v1, v0, v3

    const-string v1, "5k"

    aput-object v1, v0, v4

    const-string v1, "10k"

    aput-object v1, v0, v5

    const-string v1, "20k"

    aput-object v1, v0, v6

    const-string v1, "50k"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u4fdd\u5bc6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->inComeData:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoEditContentActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->selected(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/InfoEditContentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->city_title:Ljava/lang/String;

    return-object v0
.end method

.method private drinkPicker(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 172
    new-instance v0, Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    .line 173
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->setPicker(Ljava/util/ArrayList;)V

    .line 174
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->setCyclic(Z)V

    .line 175
    const v0, 0x7f0e0101

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->setSelectOptions(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditContentActivity;I)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->setOnoptionsSelectListener(Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;)V

    .line 183
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->picker:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->show()V

    .line 184
    return-void
.end method

.method private selected(II)V
    .locals 3
    .parameter "type"
    .parameter "options"

    .prologue
    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 213
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/eventclass/InfoRefreshEventClass;

    invoke-direct {v1}, Lcom/wanduoduo/eventclass/InfoRefreshEventClass;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 214
    return-void

    .line 189
    :sswitch_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvSex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const-string v0, "gender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvXingzuo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const-string v0, "constellation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :sswitch_2
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :sswitch_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvLove:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const-string v0, "loveinfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :sswitch_4
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvIncome:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const-string v0, "salary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :sswitch_5
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvAge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string v0, "age"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00fb -> :sswitch_0
        0x7f0e00fd -> :sswitch_5
        0x7f0e00ff -> :sswitch_1
        0x7f0e0101 -> :sswitch_2
        0x7f0e0103 -> :sswitch_3
        0x7f0e0109 -> :sswitch_4
    .end sparse-switch
.end method

.method private sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 217
    const-string v0, "user_info"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    invoke-static {p1, p2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity$2;-><init>(Lcom/wanduoduo/ui/info/InfoEditContentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 256
    return-void
.end method

.method private setContentForResult(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "content"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mNineLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 276
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->setResult(ILandroid/content/Intent;)V

    .line 277
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->setResult()V

    .line 261
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->finish()V

    .line 262
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f04002b

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u57fa\u672c\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mNineLists"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvSex:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvAge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvXingzuo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvHeight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvLove:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvPlace:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvCareer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvIncome:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->mNineLists:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 148
    if-eqz p3, :cond_0

    .line 149
    sparse-switch p1, :sswitch_data_0

    .line 168
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    return-void

    .line 151
    :sswitch_0
    const-string v1, "nickname"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvNickname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :sswitch_1
    const-string v1, "city_title"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->city_title:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvPlace:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->city_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const-string v1, "city_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, city_id:Ljava/lang/String;
    const-string v1, "city_id"

    invoke-direct {p0, v1, v0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0           #city_id:Ljava/lang/String;
    :sswitch_2
    const-string v1, "career"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->tvCareer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string v1, "profession"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->sendDataRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->setResult()V

    .line 269
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->finish()V

    .line 270
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onBackPressed()V

    .line 271
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00f9,
            0x7f0e00fb,
            0x7f0e00fd,
            0x7f0e00ff,
            0x7f0e0101,
            0x7f0e0103,
            0x7f0e0105,
            0x7f0e0107,
            0x7f0e0109
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->nickname:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->setContentForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    const-string v2, "\u7537"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    const-string v2, "\u5973"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const v1, 0x7f0e00fb

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_0
    const v1, 0x7f0e00fd

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto :goto_0

    .line 102
    .end local v0           #i:I
    :pswitch_4
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->xingzuo:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->xingzuo:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_1
    const v1, 0x7f0e00ff

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto :goto_0

    .line 109
    .end local v0           #i:I
    :pswitch_5
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/16 v0, 0x6e

    .restart local v0       #i:I
    :goto_3
    const/16 v1, 0xd3

    if-ge v0, v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 113
    :cond_2
    const v1, 0x7f0e0101

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto :goto_0

    .line 116
    .end local v0           #i:I
    :pswitch_6
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    const-string v2, "\u5355\u8eab"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    const-string v2, "\u5df2\u5a5a"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    const-string v2, "\u4fdd\u5bc6"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const v1, 0x7f0e0103

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto/16 :goto_0

    .line 123
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/index/SelectLocationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 126
    :pswitch_8
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->career:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->setContentForResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_9
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->inComeData:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->pickerDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->inComeData:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    :cond_3
    const v1, 0x7f0e0109

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
