.class public final Lio/rong/imkit/model/ConversationKey;
.super Ljava/lang/Object;
.source "ConversationKey.java"


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = "#@6RONG_CLOUD9@#"


# instance fields
.field private key:Ljava/lang/String;

.field private targetId:Ljava/lang/String;

.field private type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imkit/model/ConversationKey;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "#@6RONG_CLOUD9@#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    new-instance v1, Lio/rong/imkit/model/ConversationKey;

    invoke-direct {v1}, Lio/rong/imkit/model/ConversationKey;-><init>()V

    .line 43
    .local v1, conversationKey:Lio/rong/imkit/model/ConversationKey;
    const-string v4, "#@6RONG_CLOUD9@#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const-string v4, "#@6RONG_CLOUD9@#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, array:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Lio/rong/imkit/model/ConversationKey;->setTargetId(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imkit/model/ConversationKey;->setType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #conversationKey:Lio/rong/imkit/model/ConversationKey;
    :goto_0
    return-object v1

    .line 49
    .restart local v0       #array:[Ljava/lang/String;
    .restart local v1       #conversationKey:Lio/rong/imkit/model/ConversationKey;
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "ConversationKey "

    const-string v5, "NumberFormatException"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 51
    goto :goto_0

    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #conversationKey:Lio/rong/imkit/model/ConversationKey;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_0
    move-object v1, v3

    .line 58
    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;
    .locals 3
    .parameter "targetId"
    .parameter "type"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Lio/rong/imkit/model/ConversationKey;

    invoke-direct {v0}, Lio/rong/imkit/model/ConversationKey;-><init>()V

    .line 29
    .local v0, conversationKey:Lio/rong/imkit/model/ConversationKey;
    invoke-virtual {v0, p0}, Lio/rong/imkit/model/ConversationKey;->setTargetId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Lio/rong/imkit/model/ConversationKey;->setType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#@6RONG_CLOUD9@#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/ConversationKey;->setKey(Ljava/lang/String;)V

    .line 35
    .end local v0           #conversationKey:Lio/rong/imkit/model/ConversationKey;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/rong/imkit/model/ConversationKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/rong/imkit/model/ConversationKey;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/rong/imkit/model/ConversationKey;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 67
    iput-object p1, p0, Lio/rong/imkit/model/ConversationKey;->key:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/imkit/model/ConversationKey;->targetId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 83
    iput-object p1, p0, Lio/rong/imkit/model/ConversationKey;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 84
    return-void
.end method
