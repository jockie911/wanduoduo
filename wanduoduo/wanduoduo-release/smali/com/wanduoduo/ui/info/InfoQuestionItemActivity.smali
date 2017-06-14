.class public Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoQuestionItemActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;
    }
.end annotation


# instance fields
.field private answer:Ljava/lang/String;

.field private answerLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field etAnswer:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e011b
        }
    .end annotation
.end field

.field private questifonfLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private question:Ljava/lang/String;

.field tvQuestion:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e011a
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

.field tvSubmitAnswer:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e011d
        }
    .end annotation
.end field

.field tvTextCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e011c
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getMap(Z)Ljava/util/Map;
    .locals 10
    .parameter "isUpdate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->isContain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 96
    .local v2, index:I
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .end local v2           #index:I
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    const-string v6, ""

    .line 105
    .local v6, qa_list:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .local v3, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 107
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v7, "q"

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v7, "a"

    iget-object v8, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 113
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    :goto_1
    invoke-static {v6}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "token"

    const-string v8, "token"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v7, "qa_list"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object v5

    .line 115
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    const-string v6, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 118
    .end local v1           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private isContain()Z
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 132
    :goto_1
    return v1

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 157
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 138
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f040030

    return v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u56de\u7b54"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "question"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "questionLists"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->questifonfLists:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "answerLists"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answerLists:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->type:I

    .line 64
    const/4 v0, 0x1

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->type:I

    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "answer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvQuestion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvTextCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    return-void

    .line 67
    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->type:I

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->answer:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ef,
            0x7f0e011d
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 85
    :sswitch_0
    const-string v0, "user_info"

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getMap(Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 88
    :sswitch_1
    const-string v0, "user_info"

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->getMap(Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;

    invoke-direct {v2, p0, v3}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e011d -> :sswitch_1
        0x7f0e01ef -> :sswitch_0
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvTextCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 149
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const-string v1, "#394471"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
