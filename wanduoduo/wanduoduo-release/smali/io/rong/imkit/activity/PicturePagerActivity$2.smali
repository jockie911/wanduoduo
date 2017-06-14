.class Lio/rong/imkit/activity/PicturePagerActivity$2;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "PicturePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/activity/PicturePagerActivity;->getConversationImageUris(ILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/activity/PicturePagerActivity;

.field final synthetic val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;


# direct methods
.method constructor <init>(Lio/rong/imkit/activity/PicturePagerActivity;Lio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    iput-object p2, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 144
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/activity/PicturePagerActivity$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;>;"
    if-eqz p1, :cond_3

    .line 109
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v6, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v5, v6}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/Message;

    .line 113
    .local v4, message:Lio/rong/imlib/model/Message;
    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lio/rong/message/ImageMessage;

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    check-cast v1, Lio/rong/message/ImageMessage;

    .line 115
    .local v1, imageMessage:Lio/rong/message/ImageMessage;
    invoke-virtual {v1}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v2

    .line 117
    .local v2, largeImageUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v1}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 118
    new-instance v5, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    iget-object v6, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    invoke-virtual {v1}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v2}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;ILandroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1           #imageMessage:Lio/rong/message/ImageMessage;
    .end local v2           #largeImageUri:Landroid/net/Uri;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .restart local v1       #imageMessage:Lio/rong/message/ImageMessage;
    :cond_2
    invoke-virtual {v1}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 123
    .end local v0           #i:I
    .end local v1           #imageMessage:Lio/rong/message/ImageMessage;
    .end local v4           #message:Lio/rong/imlib/model/Message;
    :cond_3
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v6, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v5, v6}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$600(Lio/rong/imkit/activity/PicturePagerActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 124
    new-instance v6, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;

    iget-object v7, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentMessageId:I
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$700(Lio/rong/imkit/activity/PicturePagerActivity;)I

    move-result v8

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$800(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/message/ImageMessage;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v9

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$800(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/message/ImageMessage;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$800(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/message/ImageMessage;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v5

    :goto_2
    invoke-direct {v6, v7, v8, v9, v5}, Lio/rong/imkit/activity/PicturePagerActivity$ImageInfo;-><init>(Lio/rong/imkit/activity/PicturePagerActivity;ILandroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v7, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v6, v7}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->addData(Ljava/util/ArrayList;Z)V

    .line 127
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$100(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/widget/HackyViewPager;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v6}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 128
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    const/4 v6, 0x0

    #setter for: Lio/rong/imkit/activity/PicturePagerActivity;->isFirstTime:Z
    invoke-static {v5, v6}, Lio/rong/imkit/activity/PicturePagerActivity;->access$602(Lio/rong/imkit/activity/PicturePagerActivity;Z)Z

    .line 129
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$100(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/widget/HackyViewPager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/HackyViewPager;->setCurrentItem(I)V

    .line 130
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    #setter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I
    invoke-static {v5, v6}, Lio/rong/imkit/activity/PicturePagerActivity;->access$002(Lio/rong/imkit/activity/PicturePagerActivity;I)I

    .line 139
    :cond_4
    :goto_3
    return-void

    .line 124
    :cond_5
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentImageMessage:Lio/rong/message/ImageMessage;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$800(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/message/ImageMessage;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 132
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v7, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v6, v7}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->addData(Ljava/util/ArrayList;Z)V

    .line 133
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mImageAdapter:Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$200(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/activity/PicturePagerActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 134
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v6, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v5, v6}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    #getter for: Lio/rong/imkit/activity/PicturePagerActivity;->mViewPager:Lio/rong/imkit/widget/HackyViewPager;
    invoke-static {v5}, Lio/rong/imkit/activity/PicturePagerActivity;->access$100(Lio/rong/imkit/activity/PicturePagerActivity;)Lio/rong/imkit/widget/HackyViewPager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/HackyViewPager;->setCurrentItem(I)V

    .line 136
    iget-object v5, p0, Lio/rong/imkit/activity/PicturePagerActivity$2;->this$0:Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    #setter for: Lio/rong/imkit/activity/PicturePagerActivity;->mCurrentIndex:I
    invoke-static {v5, v6}, Lio/rong/imkit/activity/PicturePagerActivity;->access$002(Lio/rong/imkit/activity/PicturePagerActivity;I)I

    goto :goto_3
.end method
