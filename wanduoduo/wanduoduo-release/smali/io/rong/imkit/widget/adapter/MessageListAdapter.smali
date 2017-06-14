.class public Lio/rong/imkit/widget/adapter/MessageListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;,
        Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imkit/model/UIMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageListAdapter"


# instance fields
.field evaForRobot:Z

.field mContext:Landroid/content/Context;

.field mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field mInflater:Landroid/view/LayoutInflater;

.field mOnItemHandlerListener:Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;

.field robotMode:Z

.field subView:Landroid/view/View;

.field private timeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 52
    iput-boolean v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->evaForRobot:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->robotMode:Z

    .line 55
    iput-boolean v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    .line 72
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_def_msg_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getNeedEvaluate(Lio/rong/imkit/model/UIMessage;)Z

    move-result v0

    return v0
.end method

.method private getNeedEvaluate(Lio/rong/imkit/model/UIMessage;)Z
    .locals 7
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string v0, ""

    .line 122
    .local v0, extra:Ljava/lang/String;
    const-string v2, ""

    .line 123
    .local v2, robotEva:Ljava/lang/String;
    const-string v3, ""

    .line 124
    .local v3, sid:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lio/rong/message/TextMessage;

    if-eqz v4, :cond_1

    .line 126
    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    check-cast v4, Lio/rong/message/TextMessage;

    invoke-virtual {v4}, Lio/rong/message/TextMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 146
    :goto_0
    return v4

    .line 130
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "robotEva"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v4, "sid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v4

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v4, v6, :cond_2

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lio/rong/message/TextMessage;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->evaForRobot:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->robotMode:Z

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getIsHistoryMessage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 146
    goto :goto_0

    .line 133
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private final setGravity(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "gravity"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 552
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 553
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V
    .locals 23
    .parameter "v"
    .parameter "position"
    .parameter "data"

    .prologue
    .line 151
    if-nez p3, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;

    .line 156
    .local v7, holder:Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    const/4 v11, 0x0

    .line 157
    .local v11, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider;
    const/4 v14, 0x0

    .line 159
    .local v14, tag:Lio/rong/imkit/model/ProviderTag;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getNeedEvaluate(Lio/rong/imkit/model/UIMessage;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 160
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongContext;->getEvaluateProvider()Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;

    move-result-object v11

    .line 161
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v14

    .line 179
    :cond_2
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v17

    .line 180
    .local v17, view:Landroid/view/View;
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v11, v0, v1, v2}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 182
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imkit/widget/adapter/MessageListAdapter;->subView:Landroid/view/View;

    .line 184
    if-nez v14, :cond_6

    .line 185
    const-string v18, "MessageListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Can not find ProviderTag for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v17           #view:Landroid/view/View;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    if-eqz v18, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 163
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v11

    .line 164
    if-nez v11, :cond_4

    .line 165
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    const-class v19, Lio/rong/imlib/model/UnknownMessage;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v11

    .line 166
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    const-class v19, Lio/rong/imlib/model/UnknownMessage;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v14

    .line 170
    :goto_1
    if-nez v11, :cond_2

    .line 171
    const-string v18, "MessageListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " message provider not found !"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v14

    goto :goto_1

    .line 175
    :cond_5
    const-string v18, "MessageListAdapter"

    const-string v19, "Message is null !"

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    .restart local v17       #view:Landroid/view/View;
    :cond_6
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->hide()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 190
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->setVisibility(I)V

    .line 191
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 194
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 199
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 201
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 202
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 203
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 209
    :goto_3
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->centerInHorizontal()Z

    move-result v18

    if-nez v18, :cond_d

    .line 210
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 211
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewRight()V

    .line 212
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    :goto_4
    const/4 v13, 0x0

    .line 223
    .local v13, readRec:Z
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 229
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 230
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->showProgress()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 231
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    :goto_6
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "RC:VSTMsg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 263
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :cond_7
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$1;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$2;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->showWarning()Z

    move-result v18

    if-nez v18, :cond_8

    .line 301
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    .end local v13           #readRec:Z
    :cond_8
    :goto_8
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$4;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 406
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/AsyncImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_22

    .line 409
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v18

    if-eqz v18, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 411
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 412
    .local v16, userInfo:Lio/rong/imlib/model/UserInfo;
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 413
    .local v9, portrait:Landroid/net/Uri;
    if-eqz v9, :cond_9

    .line 414
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    .line 481
    .end local v9           #portrait:Landroid/net/Uri;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_9
    :goto_9
    if-eqz v17, :cond_a

    .line 482
    new-instance v18, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    new-instance v18, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 521
    :cond_a
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$7;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;ILio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->hide()Z

    move-result v18

    if-eqz v18, :cond_27

    .line 530
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 196
    :cond_b
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->setVisibility(I)V

    goto/16 :goto_2

    .line 205
    :cond_c
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 206
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 214
    :cond_d
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 215
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewCenter()V

    .line 216
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 224
    .restart local v13       #readRec:Z
    :catch_0
    move-exception v5

    .line 225
    .local v5, e:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "MessageListAdapter"

    const-string v19, "rc_read_receipt not configure in rc_config.xml"

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v5}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 233
    .end local v5           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_e
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 237
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 238
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 241
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 242
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 245
    :cond_11
    if-eqz v13, :cond_13

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 246
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    .line 249
    .local v4, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    instance-of v0, v4, Lio/rong/message/InformationNotificationMessage;

    move/from16 v18, v0

    if-nez v18, :cond_12

    instance-of v0, v4, Lio/rong/message/RecallNotificationMessage;

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 252
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 254
    :cond_12
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 257
    .end local v4           #content:Lio/rong/imlib/model/MessageContent;
    :cond_13
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 306
    .end local v13           #readRec:Z
    :cond_14
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 307
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 308
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 314
    :goto_a
    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->centerInHorizontal()Z

    move-result v18

    if-nez v18, :cond_17

    .line 315
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 316
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewLeft()V

    .line 317
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 326
    :goto_b
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_15

    invoke-interface {v14}, Lio/rong/imkit/model/ProviderTag;->showSummaryWithName()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_15

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 337
    :cond_15
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :goto_c
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$3;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 310
    :cond_16
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 311
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 320
    :cond_17
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 321
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewCenter()V

    .line 322
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 323
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->setBackgroundColor(I)V

    goto/16 :goto_b

    .line 340
    :cond_18
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v18

    if-eqz v18, :cond_19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 342
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 343
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 344
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 345
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v6

    .line 346
    .local v6, groupUserInfo:Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v6, :cond_1a

    .line 347
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 349
    :cond_1a
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 350
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v16, :cond_1b

    .line 351
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 353
    :cond_1b
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 356
    .end local v6           #groupUserInfo:Lio/rong/imkit/model/GroupUserInfo;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_1c
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 357
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v16, :cond_1d

    .line 358
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 360
    :cond_1d
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 416
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    :cond_1f
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 420
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 421
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_20

    .line 422
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 423
    .restart local v9       #portrait:Landroid/net/Uri;
    if-eqz v9, :cond_9

    .line 424
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 429
    .end local v9           #portrait:Landroid/net/Uri;
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v8

    .line 430
    .local v8, mKey:Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual {v8}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v12

    .line 431
    .local v12, publicServiceProfile:Lio/rong/imlib/model/PublicServiceProfile;
    invoke-virtual {v12}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 433
    .restart local v9       #portrait:Landroid/net/Uri;
    if-eqz v9, :cond_9

    .line 434
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 437
    .end local v8           #mKey:Lio/rong/imkit/model/ConversationKey;
    .end local v9           #portrait:Landroid/net/Uri;
    .end local v12           #publicServiceProfile:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_21
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 438
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 440
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 441
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 444
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_22
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/AsyncImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_9

    .line 447
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v18

    if-eqz v18, :cond_23

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 449
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 450
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 451
    .restart local v9       #portrait:Landroid/net/Uri;
    if-eqz v9, :cond_9

    .line 452
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 454
    .end local v9           #portrait:Landroid/net/Uri;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_23
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_24

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    :cond_24
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v18 .. v19}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 458
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 459
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_25

    .line 460
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 461
    .restart local v9       #portrait:Landroid/net/Uri;
    if-eqz v9, :cond_9

    .line 462
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 466
    .end local v9           #portrait:Landroid/net/Uri;
    :cond_25
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v8

    .line 467
    .restart local v8       #mKey:Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual {v8}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v12

    .line 468
    .restart local v12       #publicServiceProfile:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 469
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 472
    .end local v8           #mKey:Lio/rong/imkit/model/ConversationKey;
    .end local v12           #publicServiceProfile:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_26
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 473
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 475
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 476
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 534
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 535
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lio/rong/imkit/utils/RongDateUtils;->getConversationFormatDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 536
    .local v15, time:Ljava/lang/String;
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    if-nez p2, :cond_28

    .line 538
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 540
    :cond_28
    add-int/lit8 v18, p2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/rong/imlib/model/Message;

    .line 541
    .local v10, pre:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v18

    invoke-virtual {v10}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v20

    const/16 v22, 0xb4

    invoke-static/range {v18 .. v22}, Lio/rong/imkit/utils/RongDateUtils;->isShowChatTime(JJI)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 542
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 544
    :cond_29
    iget-object v0, v7, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    check-cast p3, Lio/rong/imkit/model/UIMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    .line 88
    .local v0, message:Lio/rong/imlib/model/Message;
    if-nez v0, :cond_0

    .line 89
    const-wide/16 v2, -0x1

    .line 90
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "position"
    .parameter "group"

    .prologue
    .line 95
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, result:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;)V

    .line 98
    .local v0, holder:Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    .line 99
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    .line 100
    sget v2, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 101
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 102
    sget v2, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    .line 103
    sget v2, Lio/rong/imkit/R$id;->rc_progress:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 104
    sget v2, Lio/rong/imkit/R$id;->rc_warning:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    .line 105
    sget v2, Lio/rong/imkit/R$id;->rc_read_receipt:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    .line 106
    sget v2, Lio/rong/imkit/R$id;->rc_time:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 107
    sget v2, Lio/rong/imkit/R$id;->rc_sent_status:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->sentStatus:Landroid/widget/TextView;

    .line 108
    iget-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    .line 114
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    return-object v1

    .line 111
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    goto :goto_0
.end method

.method public setEvaluateForRobot(Z)V
    .locals 0
    .parameter "needEvaluate"

    .prologue
    .line 556
    iput-boolean p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->evaForRobot:Z

    .line 557
    return-void
.end method

.method public setOnItemHandlerListener(Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;)V
    .locals 0
    .parameter "onItemHandlerListener"

    .prologue
    .line 78
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mOnItemHandlerListener:Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;

    .line 79
    return-void
.end method

.method public setRobotMode(Z)V
    .locals 0
    .parameter "robotMode"

    .prologue
    .line 560
    iput-boolean p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->robotMode:Z

    .line 561
    return-void
.end method
