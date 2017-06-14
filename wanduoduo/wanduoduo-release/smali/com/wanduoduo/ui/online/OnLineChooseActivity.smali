.class public Lcom/wanduoduo/ui/online/OnLineChooseActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "OnLineChooseActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;


# instance fields
.field ivIsGift:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0163
        }
    .end annotation
.end field

.field ivIsSingle:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0166
        }
    .end annotation
.end field

.field ivIsVideo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0161
        }
    .end annotation
.end field

.field private onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

.field private pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

.field relAge:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fd
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

.field relGift:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0162
        }
    .end annotation
.end field

.field relHeigh:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0101
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

.field relSingle:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0165
        }
    .end annotation
.end field

.field tvAge:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00fe
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

.field tvHighSelect:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0164
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

.field tvNormalSelect:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0159
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

.field tvSortActivi:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015c
        }
    .end annotation
.end field

.field tvSortNearby:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e015b
        }
    .end annotation
.end field

.field private type:I

.field private witchPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initStatus()V
    .locals 7

    .prologue
    const v6, 0x7f020075

    const v5, 0x7f020073

    const/4 v4, 0x1

    const v3, 0x7f02026e

    const/16 v2, 0x8

    .line 93
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getOrder()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 94
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortNearby:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getGender()I

    move-result v0

    if-nez v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvPlace:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 117
    :goto_2
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->witchPosition:I

    if-nez v0, :cond_a

    .line 118
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getLoveinfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    :goto_3
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvAge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/OnLineSelectBean;->getAge()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, " - "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5c81"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/OnLineSelectBean;->getHeight()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, " - "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_4
    :goto_4
    return-void

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortActivi:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getGender()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 102
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relMale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->getGender()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relFemale:Landroid/widget/RelativeLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 113
    :cond_8
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 128
    :cond_a
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->witchPosition:I

    if-ne v0, v4, :cond_4

    .line 130
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvNormalSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHighSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relAge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relHeigh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relSingle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 138
    :cond_b
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method private setAgePicker(Ljava/lang/String;III)V
    .locals 8
    .parameter "title"
    .parameter "min"
    .parameter "max"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    .line 252
    new-instance v5, Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-direct {v5, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    .line 253
    iput p4, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->type:I

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, options1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, options2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v1, v0

    .local v1, j:I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1           #j:I
    .end local v4           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v3, v6}, Lcom/bigkoo/pickerview/OptionsPickerView;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 266
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v5, p1}, Lcom/bigkoo/pickerview/OptionsPickerView;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v5, v7, v7, v7}, Lcom/bigkoo/pickerview/OptionsPickerView;->setCyclic(ZZZ)V

    .line 268
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v5, v7, v7}, Lcom/bigkoo/pickerview/OptionsPickerView;->setSelectOptions(II)V

    .line 269
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v5, p0}, Lcom/bigkoo/pickerview/OptionsPickerView;->setOnoptionsSelectListener(Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;)V

    .line 270
    iget-object v5, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v5}, Lcom/bigkoo/pickerview/OptionsPickerView;->show()V

    .line 271
    return-void
.end method

.method private sex(I)V
    .locals 3
    .parameter "position"

    .prologue
    const v2, 0x7f02026e

    const v1, 0x7f020289

    .line 222
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relMale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relFemale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 225
    if-nez p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSexAll:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->setGender(I)V

    .line 233
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relMale:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relFemale:Landroid/widget/RelativeLayout;

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

    .line 211
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortActivi:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 212
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortNearby:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 213
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortNearby:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->setOrder(I)V

    .line 219
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortActivi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f040041

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->witchPosition:I

    .line 83
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onLineSelectBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/OnLineSelectBean;

    iput-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    .line 85
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->initStatus()V

    .line 87
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 249
    return-void

    .line 239
    :pswitch_0
    if-eqz p3, :cond_0

    .line 240
    const-string v2, "city_title"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, city_title:Ljava/lang/String;
    const-string v2, "city_code"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, city_code:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvPlace:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v2, v0}, Lcom/wanduoduo/bean/OnLineSelectBean;->setCity_code(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->setCity_name(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e015b,
            0x7f0e015c,
            0x7f0e015d,
            0x7f0e015e,
            0x7f0e015f,
            0x7f0e0105,
            0x7f0e00fd,
            0x7f0e0101,
            0x7f0e0109,
            0x7f0e0161,
            0x7f0e0166,
            0x7f0e0163
        }
    .end annotation

    .prologue
    const v6, 0x7f020075

    const v2, 0x7f020073

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 208
    :goto_0
    :sswitch_0
    return-void

    .line 148
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "onLineSelectBean"

    iget-object v2, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->finish()V

    goto :goto_0

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->sort(I)V

    goto :goto_0

    .line 157
    :sswitch_3
    invoke-direct {p0, v5}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->sort(I)V

    goto :goto_0

    .line 160
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->sex(I)V

    goto :goto_0

    .line 163
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->sex(I)V

    goto :goto_0

    .line 166
    :sswitch_6
    invoke-direct {p0, v5}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->sex(I)V

    goto :goto_0

    .line 169
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wanduoduo/ui/index/SelectLocationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v3}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 172
    :sswitch_8
    const-string v1, "\u9009\u62e9\u5e74\u9f84"

    const/16 v2, 0x64

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->setAgePicker(Ljava/lang/String;III)V

    goto :goto_0

    .line 175
    :sswitch_9
    const-string v1, "\u9009\u62e9\u8eab\u9ad8"

    const/16 v2, 0x6e

    const/16 v3, 0xd3

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->setAgePicker(Ljava/lang/String;III)V

    goto :goto_0

    .line 181
    :sswitch_a
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/bean/OnLineSelectBean;->setVideo(Z)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v3}, Lcom/wanduoduo/bean/OnLineSelectBean;->setVideo(Z)V

    goto :goto_0

    .line 190
    :sswitch_b
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getLoveinfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/bean/OnLineSelectBean;->setLoveinfo(Z)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v3}, Lcom/wanduoduo/bean/OnLineSelectBean;->setLoveinfo(Z)V

    goto/16 :goto_0

    .line 199
    :sswitch_c
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->isGift()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v4}, Lcom/wanduoduo/bean/OnLineSelectBean;->setGift(Z)V

    goto/16 :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    iget-object v1, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    invoke-virtual {v1, v3}, Lcom/wanduoduo/bean/OnLineSelectBean;->setGift(Z)V

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00fd -> :sswitch_8
        0x7f0e0101 -> :sswitch_9
        0x7f0e0105 -> :sswitch_7
        0x7f0e0109 -> :sswitch_0
        0x7f0e015b -> :sswitch_2
        0x7f0e015c -> :sswitch_3
        0x7f0e015d -> :sswitch_4
        0x7f0e015e -> :sswitch_5
        0x7f0e015f -> :sswitch_6
        0x7f0e0161 -> :sswitch_a
        0x7f0e0163 -> :sswitch_c
        0x7f0e0166 -> :sswitch_b
        0x7f0e01ef -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 286
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->pvOptions:Lcom/bigkoo/pickerview/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/OptionsPickerView;->dismiss()V

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wanduoduo/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsSelect(III)V
    .locals 3
    .parameter "options1"
    .parameter "option2"
    .parameter "options3"

    .prologue
    .line 275
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvAge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5c81"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->setAge(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x6e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x6e

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->onLineSelectBean:Lcom/wanduoduo/bean/OnLineSelectBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x6e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x6e

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/OnLineSelectBean;->setHeight(Ljava/lang/String;)V

    goto :goto_0
.end method
