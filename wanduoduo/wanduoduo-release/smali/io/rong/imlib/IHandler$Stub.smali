.class public abstract Lio/rong/imlib/IHandler$Stub;
.super Landroid/os/Binder;
.source "IHandler.java"

# interfaces
.implements Lio/rong/imlib/IHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/IHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/IHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.rong.imlib.IHandler"

.field static final TRANSACTION_addMemberToDiscussion:I = 0x2e

.field static final TRANSACTION_addRealTimeLocationListener:I = 0x51

.field static final TRANSACTION_addToBlacklist:I = 0x44

.field static final TRANSACTION_cancelDownloadMediaMessage:I = 0x41

.field static final TRANSACTION_cleanConversationDraft:I = 0x21

.field static final TRANSACTION_clearConversations:I = 0x26

.field static final TRANSACTION_clearMessages:I = 0x15

.field static final TRANSACTION_clearMessagesUnreadStatus:I = 0x16

.field static final TRANSACTION_clearTextMessageDraft:I = 0x48

.field static final TRANSACTION_clearUnreadByReceipt:I = 0x55

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_createDiscussion:I = 0x2d

.field static final TRANSACTION_deleteConversationMessage:I = 0x14

.field static final TRANSACTION_deleteMessage:I = 0x13

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_downloadMedia:I = 0x3f

.field static final TRANSACTION_downloadMediaMessage:I = 0x40

.field static final TRANSACTION_getBlacklist:I = 0x49

.field static final TRANSACTION_getBlacklistStatus:I = 0x4a

.field static final TRANSACTION_getCMPServer:I = 0x5c

.field static final TRANSACTION_getChatRoomInfo:I = 0x34

.field static final TRANSACTION_getConversation:I = 0x1d

.field static final TRANSACTION_getConversationDraft:I = 0x20

.field static final TRANSACTION_getConversationList:I = 0x1b

.field static final TRANSACTION_getConversationListByType:I = 0x1c

.field static final TRANSACTION_getConversationNotificationStatus:I = 0x22

.field static final TRANSACTION_getConversationUnreadCount:I = 0x25

.field static final TRANSACTION_getCurrentUserId:I = 0x59

.field static final TRANSACTION_getDeltaTime:I = 0x42

.field static final TRANSACTION_getDiscussion:I = 0x2b

.field static final TRANSACTION_getMessage:I = 0x9

.field static final TRANSACTION_getMessageByUid:I = 0x1a

.field static final TRANSACTION_getNaviCachedTime:I = 0x5b

.field static final TRANSACTION_getNewestMessages:I = 0xf

.field static final TRANSACTION_getNotificationQuietHours:I = 0x29

.field static final TRANSACTION_getOlderMessages:I = 0x10

.field static final TRANSACTION_getOlderMessagesByObjectName:I = 0x12

.field static final TRANSACTION_getPCAuthConfig:I = 0x5d

.field static final TRANSACTION_getPublicServiceList:I = 0x3c

.field static final TRANSACTION_getPublicServiceProfile:I = 0x3b

.field static final TRANSACTION_getRealTimeLocationCurrentState:I = 0x52

.field static final TRANSACTION_getRealTimeLocationParticipants:I = 0x50

.field static final TRANSACTION_getRemoteHistoryMessages:I = 0x11

.field static final TRANSACTION_getSendTimeByMessageId:I = 0x56

.field static final TRANSACTION_getTextMessageDraft:I = 0x46

.field static final TRANSACTION_getTotalUnreadCount:I = 0x4

.field static final TRANSACTION_getUnreadCount:I = 0x5

.field static final TRANSACTION_getUnreadCountById:I = 0x6

.field static final TRANSACTION_getUnreadMentionedMessages:I = 0x5f

.field static final TRANSACTION_getVoIPCallInfo:I = 0x58

.field static final TRANSACTION_getVoIPKey:I = 0x57

.field static final TRANSACTION_insertMessage:I = 0xa

.field static final TRANSACTION_joinChatRoom:I = 0x36

.field static final TRANSACTION_joinExistChatRoom:I = 0x37

.field static final TRANSACTION_joinGroup:I = 0x32

.field static final TRANSACTION_joinRealTimeLocation:I = 0x4e

.field static final TRANSACTION_quitChatRoom:I = 0x38

.field static final TRANSACTION_quitDiscussion:I = 0x30

.field static final TRANSACTION_quitGroup:I = 0x33

.field static final TRANSACTION_quitRealTimeLocation:I = 0x4f

.field static final TRANSACTION_reJoinChatRoom:I = 0x35

.field static final TRANSACTION_registerMessageType:I = 0x3

.field static final TRANSACTION_removeConversation:I = 0x1e

.field static final TRANSACTION_removeDiscussionMember:I = 0x2f

.field static final TRANSACTION_removeFromBlacklist:I = 0x45

.field static final TRANSACTION_removeNotificationQuietHours:I = 0x28

.field static final TRANSACTION_saveConversationDraft:I = 0x1f

.field static final TRANSACTION_saveTextMessageDraft:I = 0x47

.field static final TRANSACTION_searchPublicService:I = 0x39

.field static final TRANSACTION_sendLocationMessage:I = 0xd

.field static final TRANSACTION_sendMediaMessage:I = 0xc

.field static final TRANSACTION_sendMessage:I = 0xb

.field static final TRANSACTION_sendStatusMessage:I = 0xe

.field static final TRANSACTION_setConnectionStatusListener:I = 0x8

.field static final TRANSACTION_setConversationNotificationStatus:I = 0x23

.field static final TRANSACTION_setConversationTopStatus:I = 0x24

.field static final TRANSACTION_setDiscussionInviteStatus:I = 0x43

.field static final TRANSACTION_setDiscussionName:I = 0x2c

.field static final TRANSACTION_setMessageContent:I = 0x5e

.field static final TRANSACTION_setMessageExtra:I = 0x17

.field static final TRANSACTION_setMessageReceivedStatus:I = 0x18

.field static final TRANSACTION_setMessageSentStatus:I = 0x19

.field static final TRANSACTION_setNotificationQuietHours:I = 0x27

.field static final TRANSACTION_setOnReceiveMessageListener:I = 0x7

.field static final TRANSACTION_setServerInfo:I = 0x5a

.field static final TRANSACTION_setUserData:I = 0x4b

.field static final TRANSACTION_setupRealTimeLocation:I = 0x4c

.field static final TRANSACTION_startRealTimeLocation:I = 0x4d

.field static final TRANSACTION_subscribePublicService:I = 0x3a

.field static final TRANSACTION_syncGroup:I = 0x31

.field static final TRANSACTION_updateConversationInfo:I = 0x2a

.field static final TRANSACTION_updateMessageReceiptStatus:I = 0x54

.field static final TRANSACTION_updateRealTimeLocationStatus:I = 0x53

.field static final TRANSACTION_uploadMedia:I = 0x3e

.field static final TRANSACTION_validateAuth:I = 0x3d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "io.rong.imlib.IHandler"

    invoke-virtual {p0, p0, v0}, Lio/rong/imlib/IHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IHandler;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "io.rong.imlib.IHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lio/rong/imlib/IHandler;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lio/rong/imlib/IHandler$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/rong/imlib/IHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 1299
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 44
    :sswitch_0
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v6

    .line 54
    .local v6, _arg1:Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IStringCallback;
    :sswitch_2
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 64
    .local v5, _arg0:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 65
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->disconnect(ZLio/rong/imlib/IOperationCallback;)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    const/4 v4, 0x1

    goto :goto_0

    .line 62
    .end local v5           #_arg0:Z
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 71
    :sswitch_3
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->registerMessageType(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v4, 0x1

    goto :goto_0

    .line 80
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getTotalUnreadCount()I

    move-result v26

    .line 82
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v4, 0x1

    goto :goto_0

    .line 88
    .end local v26           #_result:I
    :sswitch_5
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 91
    .local v5, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getUnreadCount([I)I

    move-result v26

    .line 92
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 98
    .end local v5           #_arg0:[I
    .end local v26           #_result:I
    :sswitch_6
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getUnreadCountById(ILjava/lang/String;)I

    move-result v26

    .line 104
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 110
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_7
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/OnReceiveMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/OnReceiveMessageListener;

    move-result-object v5

    .line 113
    .local v5, _arg0:Lio/rong/imlib/OnReceiveMessageListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 119
    .end local v5           #_arg0:Lio/rong/imlib/OnReceiveMessageListener;
    :sswitch_8
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IConnectionStatusListener;

    move-result-object v5

    .line 122
    .local v5, _arg0:Lio/rong/imlib/IConnectionStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 128
    .end local v5           #_arg0:Lio/rong/imlib/IConnectionStatusListener;
    :sswitch_9
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    .local v5, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getMessage(I)Lio/rong/imlib/model/Message;

    move-result-object v26

    .line 132
    .local v26, _result:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v26, :cond_1

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 138
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 144
    .end local v5           #_arg0:I
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :sswitch_a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 152
    .local v5, _arg0:Lio/rong/imlib/model/Message;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v26

    .line 153
    .restart local v26       #_result:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v26, :cond_3

    .line 155
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 150
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_3

    .line 159
    .restart local v26       #_result:Lio/rong/imlib/model/Message;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 165
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :sswitch_b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 174
    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ISendMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ISendMessageCallback;

    move-result-object v9

    .line 179
    .local v9, _arg3:Lio/rong/imlib/ISendMessageCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMessageCallback;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 171
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Lio/rong/imlib/ISendMessageCallback;
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_5

    .line 185
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 194
    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 196
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 198
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ISendMediaMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ISendMediaMessageCallback;

    move-result-object v9

    .line 199
    .local v9, _arg3:Lio/rong/imlib/ISendMediaMessageCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMediaMessageCallback;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 191
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Lio/rong/imlib/ISendMediaMessageCallback;
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_6

    .line 205
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 208
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 214
    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 218
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ISendMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ISendMessageCallback;

    move-result-object v9

    .line 219
    .local v9, _arg3:Lio/rong/imlib/ISendMessageCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMessageCallback;)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 211
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Lio/rong/imlib/ISendMessageCallback;
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_7

    .line 225
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 228
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 234
    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v6

    .line 235
    .local v6, _arg1:Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/ILongCallback;)Lio/rong/imlib/model/Message;

    move-result-object v26

    .line 236
    .restart local v26       #_result:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v26, :cond_8

    .line 238
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 231
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Lio/rong/imlib/ILongCallback;
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :cond_7
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_8

    .line 242
    .restart local v6       #_arg1:Lio/rong/imlib/ILongCallback;
    .restart local v26       #_result:Lio/rong/imlib/model/Message;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 248
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Lio/rong/imlib/ILongCallback;
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :sswitch_f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 251
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 257
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 258
    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getNewestMessages(Lio/rong/imlib/model/Conversation;I)Ljava/util/List;

    move-result-object v29

    .line 259
    .local v29, _result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 261
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 254
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:I
    .end local v29           #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_9
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_a

    .line 265
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_10
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 268
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 274
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 276
    .local v6, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 277
    .local v8, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lio/rong/imlib/IHandler$Stub;->getOlderMessages(Lio/rong/imlib/model/Conversation;JI)Ljava/util/List;

    move-result-object v29

    .line 278
    .restart local v29       #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 280
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 271
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:I
    .end local v29           #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_b

    .line 284
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_11
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 287
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 293
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 295
    .restart local v6       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 297
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .local v9, _arg3:Lio/rong/imlib/IResultCallback;
    move-object/from16 v4, p0

    .line 298
    invoke-virtual/range {v4 .. v9}, Lio/rong/imlib/IHandler$Stub;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 290
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Lio/rong/imlib/IResultCallback;
    :cond_b
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_c

    .line 304
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_12
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 307
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 313
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 317
    .local v14, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 319
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    .local v17, _arg4:Z
    :goto_e
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move/from16 v16, v9

    .line 320
    invoke-virtual/range {v11 .. v17}, Lio/rong/imlib/IHandler$Stub;->getOlderMessagesByObjectName(Lio/rong/imlib/model/Conversation;Ljava/lang/String;JIZ)Ljava/util/List;

    move-result-object v29

    .line 321
    .restart local v29       #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 323
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 310
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v9           #_arg3:I
    .end local v14           #_arg2:J
    .end local v17           #_arg4:Z
    .end local v29           #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_c
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_d

    .line 319
    .restart local v6       #_arg1:Ljava/lang/String;
    .restart local v9       #_arg3:I
    .restart local v14       #_arg2:J
    :cond_d
    const/16 v17, 0x0

    goto :goto_e

    .line 327
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v9           #_arg3:I
    .end local v14           #_arg2:J
    :sswitch_13
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 330
    .local v5, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->deleteMessage([I)Z

    move-result v26

    .line 331
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v26, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 332
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 337
    .end local v5           #_arg0:[I
    .end local v26           #_result:Z
    :sswitch_14
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 341
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 342
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->deleteConversationMessage(ILjava/lang/String;)Z

    move-result v26

    .line 343
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v26, :cond_f

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 344
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 349
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_15
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 352
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 357
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearMessages(Lio/rong/imlib/model/Conversation;)Z

    move-result v26

    .line 358
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v26, :cond_11

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 355
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :cond_10
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_11

    .line 359
    .restart local v26       #_result:Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 364
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :sswitch_16
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 367
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 372
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation;)Z

    move-result v26

    .line 373
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v26, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 370
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :cond_12
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_13

    .line 374
    .restart local v26       #_result:Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 379
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :sswitch_17
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 383
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 384
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageExtra(ILjava/lang/String;)Z

    move-result v26

    .line 385
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v26, :cond_14

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 386
    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .line 391
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_18
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 395
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 396
    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageReceivedStatus(II)Z

    move-result v26

    .line 397
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v26, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 398
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 403
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v26           #_result:Z
    :sswitch_19
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 407
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 408
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageSentStatus(II)Z

    move-result v26

    .line 409
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v26, :cond_16

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 410
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .line 415
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v26           #_result:Z
    :sswitch_1a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getMessageByUid(Ljava/lang/String;)Lio/rong/imlib/model/Message;

    move-result-object v26

    .line 419
    .local v26, _result:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v26, :cond_17

    .line 421
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 427
    :goto_18
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 425
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 431
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v26           #_result:Lio/rong/imlib/model/Message;
    :sswitch_1b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getConversationList()Ljava/util/List;

    move-result-object v28

    .line 433
    .local v28, _result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 435
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 439
    .end local v28           #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :sswitch_1c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 442
    .local v5, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationListByType([I)Ljava/util/List;

    move-result-object v28

    .line 443
    .restart local v28       #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 445
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 449
    .end local v5           #_arg0:[I
    .end local v28           #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :sswitch_1d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 453
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getConversation(ILjava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v26

    .line 455
    .local v26, _result:Lio/rong/imlib/model/Conversation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v26, :cond_18

    .line 457
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Conversation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_19
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 461
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 467
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Lio/rong/imlib/model/Conversation;
    :sswitch_1e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 471
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 472
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->removeConversation(ILjava/lang/String;)Z

    move-result v26

    .line 473
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v26, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 474
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 479
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_1f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 482
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 488
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->saveConversationDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z

    move-result v26

    .line 490
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v26, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 485
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :cond_1a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_1b

    .line 491
    .restart local v6       #_arg1:Ljava/lang/String;
    .restart local v26       #_result:Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 496
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_20
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 499
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 504
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;

    move-result-object v26

    .line 505
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 502
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Ljava/lang/String;
    :cond_1c
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_1d

    .line 511
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_21
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 514
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 519
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->cleanConversationDraft(Lio/rong/imlib/model/Conversation;)Z

    move-result v26

    .line 520
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v26, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 517
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :cond_1d
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_1e

    .line 521
    .restart local v26       #_result:Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 526
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :sswitch_22
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 530
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 532
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v8

    .line 533
    .local v8, _arg2:Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->getConversationNotificationStatus(ILjava/lang/String;Lio/rong/imlib/ILongCallback;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 539
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/ILongCallback;
    :sswitch_23
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 543
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 547
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v9

    .line 548
    .local v9, _arg3:Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->setConversationNotificationStatus(ILjava/lang/String;ILio/rong/imlib/ILongCallback;)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 554
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Lio/rong/imlib/ILongCallback;
    :sswitch_24
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 558
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 560
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v8, 0x1

    .line 561
    .local v8, _arg2:Z
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setConversationTopStatus(ILjava/lang/String;Z)Z

    move-result v26

    .line 562
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v26, :cond_20

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 560
    .end local v8           #_arg2:Z
    .end local v26           #_result:Z
    :cond_1f
    const/4 v8, 0x0

    goto :goto_20

    .line 563
    .restart local v8       #_arg2:Z
    .restart local v26       #_result:Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_21

    .line 568
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Z
    .end local v26           #_result:Z
    :sswitch_25
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 571
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 576
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationUnreadCount(Lio/rong/imlib/model/Conversation;)I

    move-result v26

    .line 577
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 574
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:I
    :cond_21
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_22

    .line 583
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_26
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 586
    .local v5, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearConversations([I)Z

    move-result v26

    .line 587
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v26, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 588
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .line 593
    .end local v5           #_arg0:[I
    .end local v26           #_result:Z
    :sswitch_27
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 599
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 600
    .local v8, _arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 606
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_28
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v5

    .line 609
    .local v5, _arg0:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->removeNotificationQuietHours(Lio/rong/imlib/IOperationCallback;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 615
    .end local v5           #_arg0:Lio/rong/imlib/IOperationCallback;
    :sswitch_29
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IGetNotificationQuietHoursCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IGetNotificationQuietHoursCallback;

    move-result-object v5

    .line 618
    .local v5, _arg0:Lio/rong/imlib/IGetNotificationQuietHoursCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getNotificationQuietHours(Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 624
    .end local v5           #_arg0:Lio/rong/imlib/IGetNotificationQuietHoursCallback;
    :sswitch_2a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 628
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 632
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 633
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->updateConversationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 634
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v26, :cond_23

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 635
    :cond_23
    const/4 v4, 0x0

    goto :goto_24

    .line 640
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_2b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v6

    .line 645
    .local v6, _arg1:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/IResultCallback;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 651
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IResultCallback;
    :sswitch_2c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 658
    .local v8, _arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 664
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_2d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 668
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 670
    .local v18, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v8

    .line 671
    .local v8, _arg2:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v8}, Lio/rong/imlib/IHandler$Stub;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 677
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IResultCallback;
    .end local v18           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 681
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 683
    .restart local v18       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 684
    .local v8, _arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v8}, Lio/rong/imlib/IHandler$Stub;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 690
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    .end local v18           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 694
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 696
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 697
    .restart local v8       #_arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->removeDiscussionMember(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 703
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_30
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 708
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 714
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :sswitch_31
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    sget-object v4, Lio/rong/imlib/model/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 718
    .local v10, _arg0:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 719
    .restart local v6       #_arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Lio/rong/imlib/IHandler$Stub;->syncGroup(Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 725
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    .end local v10           #_arg0:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    :sswitch_32
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 729
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 732
    .restart local v8       #_arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 738
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_33
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 743
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitGroup(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 749
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :sswitch_34
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 753
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 755
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 757
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .line 758
    .local v9, _arg3:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->getChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 764
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Lio/rong/imlib/IResultCallback;
    :sswitch_35
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 768
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 770
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 771
    .local v8, _arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 777
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_36
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 781
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 783
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 784
    .restart local v8       #_arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 790
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_37
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 796
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 797
    .restart local v8       #_arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 803
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_38
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 807
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 808
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 814
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :sswitch_39
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 818
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 820
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 822
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .line 823
    .restart local v9       #_arg3:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 829
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Lio/rong/imlib/IResultCallback;
    :sswitch_3a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 833
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 835
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    const/4 v8, 0x1

    .line 837
    .local v8, _arg2:Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v9

    .line 838
    .local v9, _arg3:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/IOperationCallback;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 835
    .end local v8           #_arg2:Z
    .end local v9           #_arg3:Lio/rong/imlib/IOperationCallback;
    :cond_24
    const/4 v8, 0x0

    goto :goto_25

    .line 844
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    :sswitch_3b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 848
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 850
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v8

    .line 851
    .local v8, _arg2:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/IResultCallback;)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 857
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IResultCallback;
    :sswitch_3c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v5

    .line 860
    .local v5, _arg0:Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getPublicServiceList(Lio/rong/imlib/IResultCallback;)V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 866
    .end local v5           #_arg0:Lio/rong/imlib/IResultCallback;
    :sswitch_3d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->validateAuth(Ljava/lang/String;)Z

    move-result v26

    .line 870
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v26, :cond_25

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 871
    :cond_25
    const/4 v4, 0x0

    goto :goto_26

    .line 876
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_3e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 879
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 885
    .local v5, _arg0:Lio/rong/imlib/model/Message;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IUploadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IUploadCallback;

    move-result-object v6

    .line 886
    .local v6, _arg1:Lio/rong/imlib/IUploadCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/IUploadCallback;)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 882
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Lio/rong/imlib/IUploadCallback;
    :cond_26
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_27

    .line 892
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_3f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 895
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 901
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 903
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 905
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IDownloadMediaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IDownloadMediaCallback;

    move-result-object v9

    .line 906
    .local v9, _arg3:Lio/rong/imlib/IDownloadMediaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 898
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Lio/rong/imlib/IDownloadMediaCallback;
    :cond_27
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_28

    .line 912
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_40
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 915
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 921
    .local v5, _arg0:Lio/rong/imlib/model/Message;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IDownloadMediaMessageCallback;

    move-result-object v6

    .line 922
    .local v6, _arg1:Lio/rong/imlib/IDownloadMediaMessageCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IDownloadMediaMessageCallback;)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 918
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Lio/rong/imlib/IDownloadMediaMessageCallback;
    :cond_28
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_29

    .line 928
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_41
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 931
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 937
    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 938
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IOperationCallback;)V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 934
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :cond_29
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_2a

    .line 944
    .end local v5           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_42
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getDeltaTime()J

    move-result-wide v26

    .line 946
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 948
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 952
    .end local v26           #_result:J
    :sswitch_43
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 958
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 959
    .local v8, _arg2:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 965
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Lio/rong/imlib/IOperationCallback;
    :sswitch_44
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 969
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 970
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 976
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :sswitch_45
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 980
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 981
    .restart local v6       #_arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 987
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :sswitch_46
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 990
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 995
    .local v5, _arg0:Lio/rong/imlib/model/Conversation;
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getTextMessageDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;

    move-result-object v26

    .line 996
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 993
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Ljava/lang/String;
    :cond_2a
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_2b

    .line 1002
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    :sswitch_47
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1005
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 1011
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z

    move-result v26

    .line 1013
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    if-eqz v26, :cond_2c

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1008
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :cond_2b
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_2c

    .line 1014
    .restart local v6       #_arg1:Ljava/lang/String;
    .restart local v26       #_result:Z
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2d

    .line 1019
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_48
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 1022
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 1027
    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation;)Z

    move-result v26

    .line 1028
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    if-eqz v26, :cond_2e

    const/4 v4, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :cond_2d
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/Conversation;
    goto :goto_2e

    .line 1029
    .restart local v26       #_result:Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .line 1034
    .end local v5           #_arg0:Lio/rong/imlib/model/Conversation;
    .end local v26           #_result:Z
    :sswitch_49
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v5

    .line 1037
    .local v5, _arg0:Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getBlacklist(Lio/rong/imlib/IStringCallback;)V

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1043
    .end local v5           #_arg0:Lio/rong/imlib/IStringCallback;
    :sswitch_4a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1047
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IIntegerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IIntegerCallback;

    move-result-object v6

    .line 1048
    .local v6, _arg1:Lio/rong/imlib/IIntegerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/IIntegerCallback;)V

    .line 1049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Lio/rong/imlib/IIntegerCallback;
    :sswitch_4b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 1057
    sget-object v4, Lio/rong/imlib/model/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/UserData;

    .line 1063
    .local v5, _arg0:Lio/rong/imlib/model/UserData;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 1064
    .local v6, _arg1:Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/IOperationCallback;)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1060
    .end local v5           #_arg0:Lio/rong/imlib/model/UserData;
    .end local v6           #_arg1:Lio/rong/imlib/IOperationCallback;
    :cond_2f
    const/4 v5, 0x0

    .restart local v5       #_arg0:Lio/rong/imlib/model/UserData;
    goto :goto_30

    .line 1070
    .end local v5           #_arg0:Lio/rong/imlib/model/UserData;
    :sswitch_4c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1074
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setupRealTimeLocation(ILjava/lang/String;)I

    move-result v26

    .line 1076
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_4d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1086
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1087
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->startRealTimeLocation(ILjava/lang/String;)I

    move-result v26

    .line 1088
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1094
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_4e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1098
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1099
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->joinRealTimeLocation(ILjava/lang/String;)I

    move-result v26

    .line 1100
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1106
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_4f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1110
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1111
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitRealTimeLocation(ILjava/lang/String;)V

    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_50
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1121
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1122
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;

    move-result-object v30

    .line 1123
    .local v30, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1125
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1129
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v30           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_51
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1133
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1135
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IRealTimeLocationListener;

    move-result-object v8

    .line 1136
    .local v8, _arg2:Lio/rong/imlib/IRealTimeLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1142
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Lio/rong/imlib/IRealTimeLocationListener;
    :sswitch_52
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1146
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1147
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getRealTimeLocationCurrentState(ILjava/lang/String;)I

    move-result v26

    .line 1148
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1154
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_53
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1158
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1160
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 1162
    .local v14, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .local v24, _arg3:D
    move-object/from16 v19, p0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v22, v14

    .line 1163
    invoke-virtual/range {v19 .. v25}, Lio/rong/imlib/IHandler$Stub;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1169
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v14           #_arg2:D
    .end local v24           #_arg3:D
    :sswitch_54
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1173
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1175
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1176
    .local v14, _arg2:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v14, v15}, Lio/rong/imlib/IHandler$Stub;->updateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v26

    .line 1177
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    if-eqz v26, :cond_30

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1178
    :cond_30
    const/4 v4, 0x0

    goto :goto_31

    .line 1183
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v14           #_arg2:J
    .end local v26           #_result:Z
    :sswitch_55
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1187
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1189
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1190
    .restart local v14       #_arg2:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v14, v15}, Lio/rong/imlib/IHandler$Stub;->clearUnreadByReceipt(ILjava/lang/String;J)Z

    move-result v26

    .line 1191
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    if-eqz v26, :cond_31

    const/4 v4, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1192
    :cond_31
    const/4 v4, 0x0

    goto :goto_32

    .line 1197
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v14           #_arg2:J
    .end local v26           #_result:Z
    :sswitch_56
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1200
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getSendTimeByMessageId(I)J

    move-result-wide v26

    .line 1201
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1203
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1207
    .end local v5           #_arg0:I
    .end local v26           #_result:J
    :sswitch_57
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1211
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1213
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1215
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v9

    .line 1216
    .local v9, _arg3:Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->getVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v5           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Lio/rong/imlib/IStringCallback;
    :sswitch_58
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getVoIPCallInfo()Ljava/lang/String;

    move-result-object v26

    .line 1224
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_59
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getCurrentUserId()Ljava/lang/String;

    move-result-object v26

    .line 1232
    .restart local v26       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1234
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1238
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_5a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1242
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1243
    .restart local v6       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1249
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_5b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getNaviCachedTime()J

    move-result-wide v26

    .line 1251
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1253
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1257
    .end local v26           #_result:J
    :sswitch_5c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getCMPServer()Ljava/lang/String;

    move-result-object v26

    .line 1259
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1261
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1265
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_5d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v5

    .line 1268
    .local v5, _arg0:Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getPCAuthConfig(Lio/rong/imlib/IStringCallback;)V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1274
    .end local v5           #_arg0:Lio/rong/imlib/IStringCallback;
    :sswitch_5e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1278
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1280
    .local v6, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1281
    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setMessageContent(I[BLjava/lang/String;)Z

    move-result v26

    .line 1282
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    if-eqz v26, :cond_32

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1283
    :cond_32
    const/4 v4, 0x0

    goto :goto_33

    .line 1288
    .end local v5           #_arg0:I
    .end local v6           #_arg1:[B
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_5f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1292
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1293
    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getUnreadMentionedMessages(ILjava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 1294
    .restart local v29       #_result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
