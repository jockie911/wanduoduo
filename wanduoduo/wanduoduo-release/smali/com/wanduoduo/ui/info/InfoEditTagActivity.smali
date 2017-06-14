.class public Lcom/wanduoduo/ui/info/InfoEditTagActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoEditTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG_FOOD:I = 0x4

.field private static final TAG_MY:I = 0x1

.field private static final TAG_SINGER:I = 0x3

.field private static final TAG_SPORT:I = 0x2

.field private static final TAG_TRAVEL:I = 0x5


# instance fields
.field private allTags:[Ljava/lang/String;

.field private dialog:Landroid/support/v7/app/AlertDialog;

.field private etAddTag:Landroid/widget/EditText;

.field llNewTag:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e010f
        }
    .end annotation
.end field

.field selectedTagLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tagCloudView:Lcom/moxun/tagcloudlib/view/TagCloudView;

.field tvAddTag:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0110
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

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoEditTagActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getStringColor(Landroid/widget/TextView;)V

    return-void
.end method

.method private addNewTag()V
    .locals 6

    .prologue
    .line 159
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 162
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 163
    const v3, 0x7f0e0208

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->etAddTag:Landroid/widget/EditText;

    .line 164
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->etAddTag:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v3, 0x7f0e0209

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, tvTrue:Landroid/widget/TextView;
    const v3, 0x7f0e020a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, tvFalse:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private addNewTagTextViewToContainer()V
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0xa

    const/high16 v8, 0x4120

    const/high16 v7, 0x40a0

    .line 125
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->llNewTag:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, t:Ljava/lang/String;
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->allTagList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4100

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setRight(I)V

    .line 133
    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getStringbg(Landroid/widget/TextView;)V

    .line 134
    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->llNewTag:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v3, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    .end local v0           #t:Ljava/lang/String;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private allTagList()Ljava/util/List;
    .locals 3
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
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->allTags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->allTags:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v1
.end method

.method private getMap()Ljava/util/Map;
    .locals 7
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
    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "token"

    const-string v5, "token"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 201
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 204
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    const-string v3, ""

    .line 205
    .local v3, tag:Ljava/lang/String;
    :goto_1
    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 206
    const-string v4, "character_interest"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    :goto_2
    return-object v1

    .line 204
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 207
    .restart local v3       #tag:Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 208
    const-string v4, "sports_interest"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 209
    :cond_4
    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 210
    const-string v4, "star_interest"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    :cond_5
    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 212
    const-string v4, "food_interest"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 213
    :cond_6
    iget v4, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 214
    const-string v4, "place_interest"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private getStringColor(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 280
    const-string v0, "#9cbefb"

    .line 281
    .local v0, colorString:Ljava/lang/String;
    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    return-void

    .line 283
    :pswitch_0
    const-string v0, "#9cbefb"

    .line 284
    goto :goto_0

    .line 286
    :pswitch_1
    const-string v0, "#9cbefb"

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    const-string v0, "#f4a96f"

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    const-string v0, "#e79bc1"

    .line 293
    goto :goto_0

    .line 295
    :pswitch_4
    const-string v0, "#00aaee"

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getStringbg(Landroid/widget/TextView;)V
    .locals 3
    .parameter "textView"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, resID:I
    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 322
    return-void

    .line 305
    :pswitch_0
    const v0, 0x7f020295

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    const v0, 0x7f020295

    .line 309
    goto :goto_0

    .line 311
    :pswitch_2
    const v0, 0x7f020294

    .line 312
    goto :goto_0

    .line 314
    :pswitch_3
    const v0, 0x7f020292

    .line 315
    goto :goto_0

    .line 317
    :pswitch_4
    const v0, 0x7f020296

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeSurePosTag()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "user_info"

    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;

    invoke-direct {v2, p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$2;-><init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 194
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f04002d

    return v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    const v6, 0x7f0d009c

    const v5, 0x7f02029f

    .line 68
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    .line 70
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 71
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u6211\u7684\u6807\u7b7e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvAddTag:Landroid/widget/TextView;

    invoke-static {v2, v6, v5}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allTag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->allTags:[Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selectedTags"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    .local v0, selectedTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 90
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_1
    const v2, 0x7f0e010e

    invoke-virtual {p0, v2}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/moxun/tagcloudlib/view/TagCloudView;

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tagCloudView:Lcom/moxun/tagcloudlib/view/TagCloudView;

    .line 93
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->allTags:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;-><init>(Lcom/wanduoduo/ui/info/InfoEditTagActivity;[Ljava/lang/String;)V

    .line 94
    .local v1, tagViewAdapter:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tagCloudView:Lcom/moxun/tagcloudlib/view/TagCloudView;

    invoke-virtual {v2, v1}, Lcom/moxun/tagcloudlib/view/TagCloudView;->setAdapter(Lcom/moxun/tagcloudlib/view/TagsAdapter;)V

    .line 96
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->addNewTagTextViewToContainer()V

    .line 97
    return-void

    .line 73
    .end local v0           #selectedTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #tagViewAdapter:Lcom/wanduoduo/ui/info/InfoEditTagActivity$TagViewAdapter;
    :cond_2
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 74
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u559c\u6b22\u7684\u8fd0\u52a8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvAddTag:Landroid/widget/TextView;

    invoke-static {v2, v6, v5}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 76
    :cond_3
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 77
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u559c\u6b22\u7684\u6b4c\u624b"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvAddTag:Landroid/widget/TextView;

    const v3, 0x7f0d009b

    const v4, 0x7f020298

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 79
    :cond_4
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 80
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u559c\u6b22\u7684\u7f8e\u98df"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvAddTag:Landroid/widget/TextView;

    const v3, 0x7f0d0046

    const v4, 0x7f0200a0

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 82
    :cond_5
    iget v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 83
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u559c\u6b22\u7684\u65c5\u884c"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->tvAddTag:Landroid/widget/TextView;

    const v3, 0x7f0d00a2

    const v4, 0x7f0202aa

    invoke-static {v2, v3, v4}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e0110
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01ef

    if-ne v0, v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->makeSurePosTag()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0110

    if-ne v0, v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->addNewTag()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0209

    if-ne v0, v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->etAddTag:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-string v0, "\u6807\u7b7e\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 111
    const-string v0, "\u6700\u591a\u53ea\u80fd\u6dfb\u52a06\u4e2a"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->selectedTagLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->etAddTag:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->addNewTagTextViewToContainer()V

    .line 116
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e020a

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditTagActivity;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
