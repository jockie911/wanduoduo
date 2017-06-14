.class public Lio/rong/imkit/mention/RongMentionManager;
.super Ljava/lang/Object;
.source "RongMentionManager.java"

# interfaces
.implements Lio/rong/imkit/mention/IMemberMentionedListener;
.implements Lio/rong/imkit/mention/ITextInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/mention/RongMentionManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mGroupMembersProvider:Lio/rong/imkit/RongIM$IGroupMembersProvider;

.field private mMentionedInputListener:Lio/rong/imkit/mention/IMentionedInputListener;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lio/rong/imkit/mention/MentionInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "RongMentionManager"

    sput-object v0, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    .line 34
    return-void
.end method

.method private addMentionedMember(Lio/rong/imlib/model/UserInfo;I)V
    .locals 10
    .parameter "userInfo"
    .parameter "from"

    .prologue
    const/4 v9, 0x1

    .line 93
    iget-object v7, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 94
    iget-object v7, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/mention/MentionInstance;

    .line 95
    .local v6, mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    iget-object v7, v6, Lio/rong/imkit/mention/MentionInstance;->mentionInputProvider:Lio/rong/imkit/widget/provider/TextInputProvider;

    invoke-virtual {v7}, Lio/rong/imkit/widget/provider/TextInputProvider;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 96
    .local v2, editText:Landroid/widget/EditText;
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 98
    if-nez p2, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, mentionContent:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 100
    .local v3, len:I
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 102
    .local v1, cursorPos:I
    iget-object v7, v6, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-direct {p0, v1, v7}, Lio/rong/imkit/mention/RongMentionManager;->getBrokenMentionedBlock(ILjava/util/List;)Lio/rong/imkit/mention/MentionBlock;

    move-result-object v0

    .line 103
    .local v0, brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    if-eqz v0, :cond_0

    .line 104
    iget-object v7, v6, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    new-instance v4, Lio/rong/imkit/mention/MentionBlock;

    invoke-direct {v4}, Lio/rong/imkit/mention/MentionBlock;-><init>()V

    .line 108
    .local v4, mentionBlock:Lio/rong/imkit/mention/MentionBlock;
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lio/rong/imkit/mention/MentionBlock;->userId:Ljava/lang/String;

    .line 109
    const/4 v7, 0x0

    iput-boolean v7, v4, Lio/rong/imkit/mention/MentionBlock;->offset:Z

    .line 110
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lio/rong/imkit/mention/MentionBlock;->name:Ljava/lang/String;

    .line 111
    if-ne p2, v9, :cond_3

    .line 112
    add-int/lit8 v7, v1, -0x1

    iput v7, v4, Lio/rong/imkit/mention/MentionBlock;->start:I

    .line 116
    :goto_1
    add-int v7, v1, v3

    iput v7, v4, Lio/rong/imkit/mention/MentionBlock;->end:I

    .line 117
    iget-object v7, v6, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v1, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 120
    add-int v7, v1, v3

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    iput-boolean v9, v4, Lio/rong/imkit/mention/MentionBlock;->offset:Z

    .line 124
    .end local v0           #brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    .end local v1           #cursorPos:I
    .end local v2           #editText:Landroid/widget/EditText;
    .end local v3           #len:I
    .end local v4           #mentionBlock:Lio/rong/imkit/mention/MentionBlock;
    .end local v5           #mentionContent:Ljava/lang/String;
    .end local v6           #mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    :cond_1
    return-void

    .line 98
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v6       #mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 114
    .restart local v0       #brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    .restart local v1       #cursorPos:I
    .restart local v3       #len:I
    .restart local v4       #mentionBlock:Lio/rong/imkit/mention/MentionBlock;
    .restart local v5       #mentionContent:Ljava/lang/String;
    :cond_3
    iput v1, v4, Lio/rong/imkit/mention/MentionBlock;->start:I

    goto :goto_1
.end method

.method private getBrokenMentionedBlock(ILjava/util/List;)Lio/rong/imkit/mention/MentionBlock;
    .locals 4
    .parameter "cursorPos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MentionBlock;",
            ">;)",
            "Lio/rong/imkit/mention/MentionBlock;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, blocks:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/mention/MentionBlock;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MentionBlock;

    .line 129
    .local v0, block:Lio/rong/imkit/mention/MentionBlock;
    iget-boolean v3, v0, Lio/rong/imkit/mention/MentionBlock;->offset:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lio/rong/imkit/mention/MentionBlock;->end:I

    if-ge p1, v3, :cond_0

    iget v3, v0, Lio/rong/imkit/mention/MentionBlock;->start:I

    if-le p1, v3, :cond_0

    .line 130
    move-object v1, v0

    .line 134
    .end local v0           #block:Lio/rong/imkit/mention/MentionBlock;
    :cond_1
    return-object v1
.end method

.method private getDeleteMentionedBlock(ILjava/util/List;)Lio/rong/imkit/mention/MentionBlock;
    .locals 4
    .parameter "cursorPos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MentionBlock;",
            ">;)",
            "Lio/rong/imkit/mention/MentionBlock;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, blocks:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/mention/MentionBlock;>;"
    const/4 v1, 0x0

    .line 149
    .local v1, deleteBlock:Lio/rong/imkit/mention/MentionBlock;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MentionBlock;

    .line 150
    .local v0, block:Lio/rong/imkit/mention/MentionBlock;
    iget v3, v0, Lio/rong/imkit/mention/MentionBlock;->end:I

    if-ne p1, v3, :cond_0

    .line 151
    move-object v1, v0

    .line 155
    .end local v0           #block:Lio/rong/imkit/mention/MentionBlock;
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lio/rong/imkit/mention/RongMentionManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lio/rong/imkit/mention/RongMentionManager$SingletonHolder;->sInstance:Lio/rong/imkit/mention/RongMentionManager;

    return-object v0
.end method

.method private offsetMentionedBlocks(IILjava/util/List;)V
    .locals 3
    .parameter "cursorPos"
    .parameter "offset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MentionBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, blocks:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/mention/MentionBlock;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MentionBlock;

    .line 139
    .local v0, block:Lio/rong/imkit/mention/MentionBlock;
    iget v2, v0, Lio/rong/imkit/mention/MentionBlock;->start:I

    if-gt p1, v2, :cond_0

    iget-boolean v2, v0, Lio/rong/imkit/mention/MentionBlock;->offset:Z

    if-eqz v2, :cond_0

    .line 140
    iget v2, v0, Lio/rong/imkit/mention/MentionBlock;->start:I

    add-int/2addr v2, p2

    iput v2, v0, Lio/rong/imkit/mention/MentionBlock;->start:I

    .line 141
    iget v2, v0, Lio/rong/imkit/mention/MentionBlock;->end:I

    add-int/2addr v2, p2

    iput v2, v0, Lio/rong/imkit/mention/MentionBlock;->end:I

    .line 143
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/rong/imkit/mention/MentionBlock;->offset:Z

    goto :goto_0

    .line 145
    .end local v0           #block:Lio/rong/imkit/mention/MentionBlock;
    :cond_1
    return-void
.end method


# virtual methods
.method public createInstance(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imkit/widget/adapter/BaseAdapter;Lio/rong/imkit/widget/provider/TextInputProvider;)V
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "adapter"
    .parameter "inputProvider"

    .prologue
    .line 41
    sget-object v2, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v3, "createInstance"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    iget-object v2, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/mention/MentionInstance;

    .line 46
    .local v1, mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    iget-object v2, v1, Lio/rong/imkit/mention/MentionInstance;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    .end local v1           #mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    :cond_0
    new-instance v1, Lio/rong/imkit/mention/MentionInstance;

    invoke-direct {v1}, Lio/rong/imkit/mention/MentionInstance;-><init>()V

    .line 52
    .restart local v1       #mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    iput-object v0, v1, Lio/rong/imkit/mention/MentionInstance;->key:Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    .line 54
    iput-object p4, v1, Lio/rong/imkit/mention/MentionInstance;->mentionInputProvider:Lio/rong/imkit/widget/provider/TextInputProvider;

    .line 55
    iget-object v2, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p3, p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->setOnItemClickListener(Lio/rong/imkit/mention/IMemberMentionedListener;)V

    .line 57
    invoke-virtual {p4, p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->setTextInputListener(Lio/rong/imkit/mention/ITextInputListener;)V

    goto :goto_0
.end method

.method public destroyInstance()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v1, "destroyInstance"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v1, "destroyInstance error."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGroupMembersProvider()Lio/rong/imkit/RongIM$IGroupMembersProvider;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lio/rong/imkit/mention/RongMentionManager;->mGroupMembersProvider:Lio/rong/imkit/RongIM$IGroupMembersProvider;

    return-object v0
.end method

.method public mentionMember(Lio/rong/imlib/model/UserInfo;)V
    .locals 2
    .parameter "userInfo"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v1, "onMemberMentioned userId is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/rong/imkit/mention/RongMentionManager;->addMentionedMember(Lio/rong/imlib/model/UserInfo;I)V

    goto :goto_0
.end method

.method public onDeleteClick(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Landroid/widget/EditText;I)V
    .locals 7
    .parameter "type"
    .parameter "targetId"
    .parameter "editText"
    .parameter "cursorPos"

    .prologue
    .line 235
    sget-object v4, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTextEdit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v4, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-lez p4, :cond_0

    .line 238
    iget-object v4, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/mention/MentionInstance;

    .line 239
    .local v2, mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    iget-object v4, v2, Lio/rong/imkit/mention/MentionInstance;->key:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, v2, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-direct {p0, p4, v4}, Lio/rong/imkit/mention/RongMentionManager;->getDeleteMentionedBlock(ILjava/util/List;)Lio/rong/imkit/mention/MentionBlock;

    move-result-object v1

    .line 241
    .local v1, deleteBlock:Lio/rong/imkit/mention/MentionBlock;
    if-eqz v1, :cond_0

    .line 242
    iget-object v4, v2, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, v1, Lio/rong/imkit/mention/MentionBlock;->name:Ljava/lang/String;

    .line 244
    .local v0, delText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p4, v4

    add-int/lit8 v3, v4, -0x1

    .line 245
    .local v3, start:I
    invoke-virtual {p3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 246
    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 250
    .end local v0           #delText:Ljava/lang/String;
    .end local v1           #deleteBlock:Lio/rong/imkit/mention/MentionBlock;
    .end local v2           #mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    .end local v3           #start:I
    :cond_0
    return-void
.end method

.method public onMemberMentioned(Ljava/lang/String;)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 71
    sget-object v1, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMemberMentioned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v2, "onMemberMentioned userId is null"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 77
    .local v0, userInfo:Lio/rong/imlib/model/UserInfo;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/mention/RongMentionManager;->addMentionedMember(Lio/rong/imlib/model/UserInfo;I)V

    goto :goto_0
.end method

.method public onSendButtonClick()Lio/rong/imlib/model/MentionedInfo;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v4, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v3, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/mention/MentionInstance;

    .line 220
    .local v1, curInstance:Lio/rong/imkit/mention/MentionInstance;
    iget-object v4, v1, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MentionBlock;

    .line 221
    .local v0, block:Lio/rong/imkit/mention/MentionBlock;
    iget-object v4, v0, Lio/rong/imkit/mention/MentionBlock;->userId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v4, v0, Lio/rong/imkit/mention/MentionBlock;->userId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0           #block:Lio/rong/imkit/mention/MentionBlock;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 226
    iget-object v4, v1, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 227
    new-instance v4, Lio/rong/imlib/model/MentionedInfo;

    sget-object v6, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-direct {v4, v6, v3, v5}, Lio/rong/imlib/model/MentionedInfo;-><init>(Lio/rong/imlib/model/MentionedInfo$MentionedType;Ljava/util/List;Ljava/lang/String;)V

    .line 230
    .end local v1           #curInstance:Lio/rong/imkit/mention/MentionInstance;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v4

    :cond_2
    move-object v4, v5

    goto :goto_1
.end method

.method public onTextEdit(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "cursorPos"
    .parameter "offset"
    .parameter "text"

    .prologue
    const/4 v9, 0x1

    .line 169
    sget-object v6, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTextEdit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v6, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 172
    :cond_0
    sget-object v6, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v7, "onTextEdit ignore."

    invoke-static {v6, v7}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v6, p0, Lio/rong/imkit/mention/RongMentionManager;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/mention/MentionInstance;

    .line 176
    .local v2, mentionInstance:Lio/rong/imkit/mention/MentionInstance;
    iget-object v6, v2, Lio/rong/imkit/mention/MentionInstance;->key:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    sget-object v6, Lio/rong/imkit/mention/RongMentionManager;->TAG:Ljava/lang/String;

    const-string v7, "onTextEdit ignore conversation."

    invoke-static {v6, v7}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_2
    if-ne p4, v9, :cond_5

    .line 182
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 183
    const/4 v4, 0x0

    .line 185
    .local v4, showMention:Z
    if-nez p3, :cond_7

    .line 186
    const/4 v6, 0x0

    invoke-virtual {p5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, str:Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 195
    :cond_3
    :goto_1
    if-eqz v4, :cond_5

    iget-object v6, p0, Lio/rong/imkit/mention/RongMentionManager;->mMentionedInputListener:Lio/rong/imkit/mention/IMentionedInputListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lio/rong/imkit/mention/RongMentionManager;->mMentionedInputListener:Lio/rong/imkit/mention/IMentionedInputListener;

    invoke-interface {v6, p1, p2}, Lio/rong/imkit/mention/IMentionedInputListener;->onMentionedInput(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 197
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    const-class v7, Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "conversationType"

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v6, "targetId"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6, v1}, Lio/rong/imkit/RongContext;->startActivity(Landroid/content/Intent;)V

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #showMention:Z
    .end local v5           #str:Ljava/lang/String;
    :cond_5
    iget-object v6, v2, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-direct {p0, p3, v6}, Lio/rong/imkit/mention/RongMentionManager;->getBrokenMentionedBlock(ILjava/util/List;)Lio/rong/imkit/mention/MentionBlock;

    move-result-object v0

    .line 208
    .local v0, brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    if-eqz v0, :cond_6

    .line 209
    iget-object v6, v2, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    :cond_6
    iget-object v6, v2, Lio/rong/imkit/mention/MentionInstance;->mentionBlocks:Ljava/util/List;

    invoke-direct {p0, p3, p4, v6}, Lio/rong/imkit/mention/RongMentionManager;->offsetMentionedBlocks(IILjava/util/List;)V

    goto/16 :goto_0

    .line 189
    .end local v0           #brokenBlock:Lio/rong/imkit/mention/MentionBlock;
    .restart local v4       #showMention:Z
    :cond_7
    add-int/lit8 v6, p3, -0x1

    invoke-virtual {p5, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, preChar:Ljava/lang/String;
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p5, p3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 191
    .restart local v5       #str:Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "^[a-zA-Z]*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "^\\d+$"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 192
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setGroupMembersProvider(Lio/rong/imkit/RongIM$IGroupMembersProvider;)V
    .locals 0
    .parameter "groupMembersProvider"

    .prologue
    .line 253
    iput-object p1, p0, Lio/rong/imkit/mention/RongMentionManager;->mGroupMembersProvider:Lio/rong/imkit/RongIM$IGroupMembersProvider;

    .line 254
    return-void
.end method

.method public setMentionedInputListener(Lio/rong/imkit/mention/IMentionedInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    iput-object p1, p0, Lio/rong/imkit/mention/RongMentionManager;->mMentionedInputListener:Lio/rong/imkit/mention/IMentionedInputListener;

    .line 262
    return-void
.end method
