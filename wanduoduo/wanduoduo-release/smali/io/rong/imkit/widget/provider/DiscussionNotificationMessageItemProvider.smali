.class public Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "DiscussionNotificationMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/DiscussionNotificationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/DiscussionNotificationMessage;
    showPortrait = false
    showSummaryWithName = false
.end annotation


# static fields
.field private static final DISCUSSION_ADD_MEMBER:I = 0x1

.field private static final DISCUSSION_EXIT:I = 0x2

.field private static final DISCUSSION_MEMBER_INVITE:I = 0x5

.field private static final DISCUSSION_REMOVE:I = 0x4

.field private static final DISCUSSION_RENAME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DiscussionNotificationMessageItemProvider"


# instance fields
.field mDownloadHandler:Landroid/os/Handler;

.field mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 63
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DiscussionNotificationMessageItemProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mDownloadHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method private final getWrapContent(Landroid/content/Context;Lio/rong/message/DiscussionNotificationMessage;)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "discussionNotificationMessage"

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    const-string v3, ""

    .line 358
    :goto_0
    return-object v3

    .line 130
    :cond_0
    const/4 v9, 0x0

    .line 131
    .local v9, operatedUserIds:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getExtension()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, extension:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getOperator()Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, operatorId:Ljava/lang/String;
    const-string v4, ""

    .line 134
    .local v4, currentUserId:Ljava/lang/String;
    const-string v3, ""

    .line 135
    .local v3, content:Ljava/lang/String;
    const/4 v10, 0x0

    .line 137
    .local v10, operatedUserIdsLength:I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 139
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 140
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 144
    :goto_1
    array-length v10, v9

    .line 147
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 150
    const-string v3, ""

    goto :goto_0

    .line 142
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .end local v9           #operatedUserIds:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v5, v9, v18

    .restart local v9       #operatedUserIds:[Ljava/lang/String;
    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getType()I

    move-result v13

    .line 161
    .local v13, operatorType:I
    packed-switch v13, :pswitch_data_0

    .line 352
    const-string v3, ""

    .line 356
    :cond_4
    :goto_2
    const-string v18, "DiscussionNotificationMessageItemProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content return "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :pswitch_0
    if-eqz v9, :cond_4

    .line 172
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 175
    .local v17, you:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 177
    const/16 v18, 0x0

    aget-object v15, v9, v18

    .line 178
    .local v15, userId:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 180
    .local v16, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_5

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_added:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 183
    goto :goto_2

    .line 184
    .end local v6           #formatString:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .end local v15           #userId:Ljava/lang/String;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_add:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 194
    .end local v6           #formatString:Ljava/lang/String;
    .end local v17           #you:Ljava/lang/String;
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    .line 195
    const/16 v18, 0x0

    aget-object v15, v9, v18

    .line 196
    .restart local v15       #userId:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 197
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 199
    .local v11, operator:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_8

    if-eqz v11, :cond_8

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_added:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    goto/16 :goto_2

    .line 204
    .end local v6           #formatString:Ljava/lang/String;
    :cond_8
    if-nez v16, :cond_9

    .line 205
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    .line 207
    :cond_9
    if-nez v11, :cond_4

    .line 208
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 212
    .end local v11           #operator:Lio/rong/imlib/model/UserInfo;
    .end local v15           #userId:Ljava/lang/String;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_a
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 214
    .restart local v11       #operator:Lio/rong/imlib/model/UserInfo;
    if-eqz v11, :cond_b

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_add:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    goto/16 :goto_2

    .line 218
    .end local v6           #formatString:Ljava/lang/String;
    :cond_b
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 232
    .end local v11           #operator:Lio/rong/imlib/model/UserInfo;
    :pswitch_1
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 234
    .restart local v11       #operator:Lio/rong/imlib/model/UserInfo;
    if-eqz v11, :cond_c

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_exit:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 237
    goto/16 :goto_2

    .line 238
    .end local v6           #formatString:Ljava/lang/String;
    :cond_c
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 249
    .end local v11           #operator:Lio/rong/imlib/model/UserInfo;
    :pswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 251
    .restart local v17       #you:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_rename:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 252
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    goto/16 :goto_2

    .line 254
    .end local v6           #formatString:Ljava/lang/String;
    .end local v17           #you:Ljava/lang/String;
    :cond_d
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 256
    .local v14, operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_e

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_rename:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 258
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    goto/16 :goto_2

    .line 260
    .end local v6           #formatString:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 272
    .end local v14           #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    :pswitch_3
    const/16 v18, 0x0

    aget-object v8, v9, v18

    .line 274
    .local v8, operatedUserId:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 275
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 277
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_f

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 279
    .restart local v17       #you:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_who_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 280
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 281
    goto/16 :goto_2

    .line 282
    .end local v6           #formatString:Ljava/lang/String;
    .end local v17           #you:Ljava/lang/String;
    :cond_f
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 286
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_10
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 287
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 289
    .restart local v14       #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_11

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 291
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 292
    goto/16 :goto_2

    .line 293
    .end local v6           #formatString:Ljava/lang/String;
    :cond_11
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 298
    .end local v14           #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    :cond_12
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 299
    .restart local v16       #userInfo:Lio/rong/imlib/model/UserInfo;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 301
    .restart local v14       #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_13

    if-eqz v14, :cond_13

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_who_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    .restart local v6       #formatString:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 304
    goto/16 :goto_2

    .line 306
    .end local v6           #formatString:Ljava/lang/String;
    :cond_13
    if-nez v14, :cond_14

    .line 307
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    .line 309
    :cond_14
    if-nez v16, :cond_4

    .line 310
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 323
    .end local v8           #operatedUserId:Ljava/lang/String;
    .end local v14           #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    :pswitch_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 326
    .restart local v17       #you:Ljava/lang/String;
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_close:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, closeFormat:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 329
    goto/16 :goto_2

    .end local v2           #closeFormat:Ljava/lang/String;
    :cond_15
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_open:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, openFormat:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 334
    .end local v7           #openFormat:Ljava/lang/String;
    .end local v17           #you:Ljava/lang/String;
    :cond_16
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 336
    .restart local v14       #operatorUserInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_18

    .line 337
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_close:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2       #closeFormat:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 340
    goto/16 :goto_2

    .end local v2           #closeFormat:Ljava/lang/String;
    :cond_17
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_open:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 342
    .restart local v7       #openFormat:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 343
    goto/16 :goto_2

    .line 345
    .end local v7           #openFormat:Ljava/lang/String;
    :cond_18
    invoke-static {}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 4
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;

    .line 72
    .local v1, viewHolder:Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    invoke-virtual {p0, p3}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    .line 74
    .local v0, spannable:Landroid/text/Spannable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 75
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lio/rong/message/DiscussionNotificationMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;
    .locals 2
    .parameter "data"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "DiscussionNotificationMessageItemProvider"

    const-string v1, "getContentSummary DiscussionNotificationMessage is null;"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string v0, "DiscussionNotificationMessageItemProvider"

    const-string v1, "getContentSummary call getContentSummary()  method "

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getWrapContent(Landroid/content/Context;Lio/rong/message/DiscussionNotificationMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_discussion_notification_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, view:Landroid/view/View;
    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;)V

    .line 108
    .local v1, viewHolder:Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 109
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    return-object v0
.end method

.method public onEventBackgroundThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 4
    .parameter "userInfo"

    .prologue
    .line 395
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mDownloadHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;Lio/rong/imlib/model/UserInfo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 99
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 366
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 367
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 381
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 383
    .local v1, items:[Ljava/lang/String;
    invoke-static {v2, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 392
    return-void

    .line 369
    .end local v1           #items:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v3

    .line 370
    .local v3, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 371
    .local v0, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 375
    .end local v0           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v3           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_3
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 376
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 377
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
