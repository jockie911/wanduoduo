.class Lio/rong/imlib/RongIMClient$98;
.super Lio/rong/imlib/OnReceiveMessageListener$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->initMessageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 5496
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Lio/rong/imlib/OnReceiveMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;IZ)Z
    .locals 40
    .parameter "message"
    .parameter "left"
    .parameter "offline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5499
    const-string v3, "RongIMClient"

    const-string v4, "initMessageReceiver : setOnReceiveMessageListener onReceived"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5500
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$2800(Lio/rong/imlib/RongIMClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2900()Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5501
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$2800(Lio/rong/imlib/RongIMClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 5502
    .local v26, entry:Ljava/util/Map$Entry;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2900()Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    invoke-interface {v4, v3}, Lio/rong/imlib/RongIMClient$ReadReceiptListener;->onReadReceiptReceived(Lio/rong/imlib/model/Message;)V

    goto :goto_0

    .line 5504
    .end local v26           #entry:Ljava/util/Map$Entry;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$2800(Lio/rong/imlib/RongIMClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 5508
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5509
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->onReceiveMessage(Lio/rong/imlib/model/Message;)Z

    move-result v29

    .line 5510
    .local v29, isTypingMessage:Z
    if-eqz v29, :cond_2

    .line 5511
    const/4 v3, 0x1

    .line 5831
    .end local v29           #isTypingMessage:Z
    :goto_1
    return v3

    .line 5516
    :cond_2
    const-class v3, Lio/rong/message/ReadReceiptMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v39

    check-cast v39, Lio/rong/imlib/MessageTag;

    .line 5517
    .local v39, tag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v39 .. v39}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5518
    if-lez p2, :cond_4

    .line 5519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#@6RONG_CLOUD9@#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 5520
    .local v30, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$2800(Lio/rong/imlib/RongIMClient;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5526
    .end local v30           #key:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 5522
    :cond_4
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2900()Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5523
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2900()Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lio/rong/imlib/RongIMClient$ReadReceiptListener;->onReadReceiptReceived(Lio/rong/imlib/model/Message;)V

    goto :goto_2

    .line 5530
    :cond_5
    const-class v3, Lio/rong/message/RecallCommandMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v39

    .end local v39           #tag:Lio/rong/imlib/MessageTag;
    check-cast v39, Lio/rong/imlib/MessageTag;

    .line 5531
    .restart local v39       #tag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v39 .. v39}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5532
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v35

    check-cast v35, Lio/rong/message/RecallCommandMessage;

    .line 5533
    .local v35, recallCommandMessage:Lio/rong/message/RecallCommandMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual/range {v35 .. v35}, Lio/rong/message/RecallCommandMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lio/rong/imlib/RongIMClient$98$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lio/rong/imlib/RongIMClient$98$1;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v3, v4, v6}, Lio/rong/imlib/RongIMClient;->getMessageByUid(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 5558
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 5562
    .end local v35           #recallCommandMessage:Lio/rong/message/RecallCommandMessage;
    :cond_6
    const-class v3, Lio/rong/message/CSHandShakeResponseMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lio/rong/imlib/MessageTag;

    .line 5563
    .local v18, csHSRTag:Lio/rong/imlib/MessageTag;
    const-class v3, Lio/rong/message/CSChangeModeResponseMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/MessageTag;

    .line 5564
    .local v16, csCMRTag:Lio/rong/imlib/MessageTag;
    const-class v3, Lio/rong/message/CSTerminateMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v22

    check-cast v22, Lio/rong/imlib/MessageTag;

    .line 5565
    .local v22, csTTag:Lio/rong/imlib/MessageTag;
    const-class v3, Lio/rong/message/CSUpdateMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Lio/rong/imlib/MessageTag;

    .line 5566
    .local v25, csUpdateTag:Lio/rong/imlib/MessageTag;
    const-class v3, Lio/rong/message/CSPullEvaluateMessage;

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lio/rong/imlib/MessageTag;

    .line 5568
    .local v20, csPullEva:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5569
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    check-cast v19, Lio/rong/message/CSHandShakeResponseMessage;

    .line 5570
    .local v19, csHandShakeResponseMessage:Lio/rong/message/CSHandShakeResponseMessage;
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getCode()I

    move-result v14

    .line 5571
    .local v14, code:I
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getMsg()Ljava/lang/String;

    move-result-object v31

    .line 5572
    .local v31, msg:Ljava/lang/String;
    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5573
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "rc_init_failed"

    const-string v8, "string"

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 5574
    .local v37, strFail:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-direct {v4, v0, v14, v1, v2}, Lio/rong/imlib/RongIMClient$98$2;-><init>(Lio/rong/imlib/RongIMClient$98;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5583
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5585
    .end local v37           #strFail:Ljava/lang/String;
    :cond_7
    new-instance v34, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v4}, Lio/rong/imlib/RongIMClient$CustomServiceProfile;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$1;)V

    .line 5586
    .local v34, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getMode()Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5587
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getSid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    .line 5588
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->uid:Ljava/lang/String;

    .line 5589
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getPid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->pid:Ljava/lang/String;

    .line 5590
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getGroupList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->groupList:Ljava/util/ArrayList;

    .line 5591
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    .line 5593
    .local v5, kefuId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5594
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 5595
    new-instance v15, Lio/rong/imlib/CustomServiceConfig;

    invoke-direct {v15}, Lio/rong/imlib/CustomServiceConfig;-><init>()V

    .line 5596
    .local v15, config:Lio/rong/imlib/CustomServiceConfig;
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lio/rong/imlib/CustomServiceConfig;->companyName:Ljava/lang/String;

    .line 5597
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->isBlack()Z

    move-result v3

    iput-boolean v3, v15, Lio/rong/imlib/CustomServiceConfig;->isBlack:Z

    .line 5598
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lio/rong/imlib/CustomServiceConfig;->msg:Ljava/lang/String;

    .line 5599
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getCompanyIcon()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lio/rong/imlib/CustomServiceConfig;->companyIcon:Ljava/lang/String;

    .line 5600
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getRobotSessionNoEva()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getRobotSessionNoEva()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5602
    const/4 v3, 0x1

    iput-boolean v3, v15, Lio/rong/imlib/CustomServiceConfig;->robotSessionNoEva:Z

    .line 5605
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getHumanEvaluateList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v15, Lio/rong/imlib/CustomServiceConfig;->humanEvaluateList:Ljava/util/ArrayList;

    .line 5607
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lio/rong/imlib/RongIMClient$98$3;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/imlib/CustomServiceConfig;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5618
    .end local v15           #config:Lio/rong/imlib/CustomServiceConfig;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getRobotLogo()Ljava/lang/String;

    move-result-object v33

    .line 5619
    .local v33, portrait:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getRobotName()Ljava/lang/String;

    move-result-object v32

    .line 5620
    .local v32, name:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getRobotHelloWord()Ljava/lang/String;

    move-result-object v27

    .line 5621
    .local v27, hello:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    iput-object v0, v1, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->welcome:Ljava/lang/String;

    .line 5622
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->name:Ljava/lang/String;

    .line 5623
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    iput-object v0, v1, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->portrait:Ljava/lang/String;

    .line 5624
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getMode()Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/CustomServiceMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->getMode()Lio/rong/imlib/model/CustomServiceMode;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/CustomServiceMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5626
    :cond_9
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 5627
    invoke-static/range {v27 .. v27}, Lio/rong/message/TextMessage;->obtain(Ljava/lang/String;)Lio/rong/message/TextMessage;

    move-result-object v7

    .line 5628
    .local v7, textMessage:Lio/rong/message/TextMessage;
    if-eqz v33, :cond_a

    .line 5629
    new-instance v3, Lio/rong/imlib/model/UserInfo;

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-direct {v3, v5, v0, v4}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v3}, Lio/rong/message/TextMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 5631
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v8, Lio/rong/imlib/RongIMClient$98$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lio/rong/imlib/RongIMClient$98$4;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    move-object v6, v5

    invoke-virtual/range {v3 .. v8}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 5644
    .end local v7           #textMessage:Lio/rong/message/TextMessage;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 5645
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lio/rong/imlib/RongIMClient$98$5;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSHandShakeResponseMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5668
    :cond_c
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5604
    .end local v27           #hello:Ljava/lang/String;
    .end local v32           #name:Ljava/lang/String;
    .end local v33           #portrait:Ljava/lang/String;
    .restart local v15       #config:Lio/rong/imlib/CustomServiceConfig;
    :cond_d
    const/4 v3, 0x0

    iput-boolean v3, v15, Lio/rong/imlib/CustomServiceConfig;->robotSessionNoEva:Z

    goto/16 :goto_3

    .line 5655
    .end local v15           #config:Lio/rong/imlib/CustomServiceConfig;
    .restart local v27       #hello:Ljava/lang/String;
    .restart local v32       #name:Ljava/lang/String;
    .restart local v33       #portrait:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lio/rong/message/CSHandShakeResponseMessage;->isRequiredChangMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5656
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v3, v5}, Lio/rong/imlib/RongIMClient;->switchToHumanMode(Ljava/lang/String;)V

    goto :goto_4

    .line 5658
    :cond_f
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lio/rong/imlib/RongIMClient$98$6;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSHandShakeResponseMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 5669
    .end local v5           #kefuId:Ljava/lang/String;
    .end local v14           #code:I
    .end local v19           #csHandShakeResponseMessage:Lio/rong/message/CSHandShakeResponseMessage;
    .end local v27           #hello:Ljava/lang/String;
    .end local v31           #msg:Ljava/lang/String;
    .end local v32           #name:Ljava/lang/String;
    .end local v33           #portrait:Ljava/lang/String;
    .end local v34           #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5670
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v17

    check-cast v17, Lio/rong/message/CSChangeModeResponseMessage;

    .line 5671
    .local v17, csChangeModeResponseMessage:Lio/rong/message/CSChangeModeResponseMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 5672
    .restart local v34       #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    if-eqz v34, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 5673
    invoke-virtual/range {v17 .. v17}, Lio/rong/message/CSChangeModeResponseMessage;->getResult()I

    move-result v14

    .line 5674
    .restart local v14       #code:I
    const/4 v3, 0x1

    if-ne v14, v3, :cond_11

    .line 5675
    invoke-virtual/range {v17 .. v17}, Lio/rong/message/CSChangeModeResponseMessage;->getStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5744
    .end local v14           #code:I
    :cond_11
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5677
    .restart local v14       #code:I
    :pswitch_0
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5678
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$7;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 5688
    :pswitch_1
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    if-eqz v3, :cond_11

    .line 5689
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    sget-object v4, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/CustomServiceMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 5690
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_NO_SERVICE:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5691
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$8;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 5699
    :cond_12
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    sget-object v4, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/CustomServiceMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5700
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5701
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$9;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5709
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->welcome:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 5710
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->welcome:Ljava/lang/String;

    invoke-static {v3}, Lio/rong/message/TextMessage;->obtain(Ljava/lang/String;)Lio/rong/message/TextMessage;

    move-result-object v7

    .line 5711
    .restart local v7       #textMessage:Lio/rong/message/TextMessage;
    move-object/from16 v0, v34

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->portrait:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 5712
    new-instance v3, Lio/rong/imlib/model/UserInfo;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    iget-object v6, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v8, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->portrait:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v4, v6, v8}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v3}, Lio/rong/message/TextMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 5714
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lio/rong/imlib/RongIMClient$98$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lio/rong/imlib/RongIMClient$98$10;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_5

    .line 5731
    .end local v7           #textMessage:Lio/rong/message/TextMessage;
    :pswitch_2
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lio/rong/imlib/RongIMClient$98$11;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSChangeModeResponseMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 5745
    .end local v14           #code:I
    .end local v17           #csChangeModeResponseMessage:Lio/rong/message/CSChangeModeResponseMessage;
    .end local v34           #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v22 .. v22}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5746
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v23

    check-cast v23, Lio/rong/message/CSTerminateMessage;

    .line 5747
    .local v23, csTerminateMessage:Lio/rong/message/CSTerminateMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 5748
    .restart local v34       #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v3

    if-eqz v3, :cond_15

    if-eqz v34, :cond_15

    invoke-virtual/range {v23 .. v23}, Lio/rong/message/CSTerminateMessage;->getsid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v4, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5750
    invoke-virtual/range {v23 .. v23}, Lio/rong/message/CSTerminateMessage;->getCode()I

    move-result v3

    if-nez v3, :cond_16

    .line 5751
    invoke-virtual/range {v23 .. v23}, Lio/rong/message/CSTerminateMessage;->getMsg()Ljava/lang/String;

    move-result-object v31

    .line 5752
    .restart local v31       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "rc_quit_custom_service"

    const-string v8, "string"

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 5753
    .local v38, strQuit:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lio/rong/imlib/RongIMClient$98$12;-><init>(Lio/rong/imlib/RongIMClient$98;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5773
    .end local v31           #msg:Ljava/lang/String;
    .end local v38           #strQuit:Ljava/lang/String;
    :cond_15
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5762
    :cond_16
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT_FIRST:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5763
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$13;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 5774
    .end local v23           #csTerminateMessage:Lio/rong/message/CSTerminateMessage;
    .end local v34           #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v25 .. v25}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5775
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v24

    check-cast v24, Lio/rong/message/CSUpdateMessage;

    .line 5776
    .local v24, csUpdateMessage:Lio/rong/message/CSUpdateMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 5777
    .restart local v34       #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    if-eqz v34, :cond_19

    .line 5778
    invoke-virtual/range {v24 .. v24}, Lio/rong/message/CSUpdateMessage;->getSid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    .line 5779
    invoke-virtual/range {v24 .. v24}, Lio/rong/message/CSUpdateMessage;->getServiceStatus()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_18
    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 5812
    :cond_19
    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5779
    :pswitch_3
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x0

    goto :goto_7

    :pswitch_4
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x1

    goto :goto_7

    :pswitch_5
    const-string v6, "3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x2

    goto :goto_7

    .line 5781
    :pswitch_6
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_ROBOT:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5782
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$14;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 5791
    :pswitch_7
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_HUMAN:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5792
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$15;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 5801
    :pswitch_8
    sget-object v3, Lio/rong/imlib/model/CustomServiceMode;->CUSTOM_SERVICE_MODE_NO_SERVICE:Lio/rong/imlib/model/CustomServiceMode;

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->mode:Lio/rong/imlib/model/CustomServiceMode;

    .line 5802
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/rong/imlib/RongIMClient$98$16;-><init>(Lio/rong/imlib/RongIMClient$98;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 5813
    .end local v24           #csUpdateMessage:Lio/rong/message/CSUpdateMessage;
    .end local v34           #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5814
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v21

    check-cast v21, Lio/rong/message/CSPullEvaluateMessage;

    .line 5815
    .local v21, csPullEvaluateMessage:Lio/rong/message/CSPullEvaluateMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 5816
    .restart local v34       #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    invoke-virtual/range {v21 .. v21}, Lio/rong/message/CSPullEvaluateMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    .line 5817
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imlib/RongIMClient$98$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lio/rong/imlib/RongIMClient$98$17;-><init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSPullEvaluateMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5824
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5827
    .end local v21           #csPullEvaluateMessage:Lio/rong/message/CSPullEvaluateMessage;
    .end local v34           #profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    :cond_1b
    invoke-static/range {p1 .. p3}, Lio/rong/imlib/ModuleManager;->handleReceivedMessage(Lio/rong/imlib/model/Message;IZ)Z

    move-result v36

    .line 5828
    .local v36, result:Z
    if-nez v36, :cond_1c

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$3400()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 5829
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$3400()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v3

    goto/16 :goto_1

    .line 5831
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5779
    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
