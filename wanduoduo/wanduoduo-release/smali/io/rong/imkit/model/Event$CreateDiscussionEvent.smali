.class public Lio/rong/imkit/model/Event$CreateDiscussionEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateDiscussionEvent"
.end annotation


# instance fields
.field discussionId:Ljava/lang/String;

.field discussionName:Ljava/lang/String;

.field userIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "discussionId"
    .parameter "discussionName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p3, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionName:Ljava/lang/String;

    .line 291
    iput-object p3, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->userIdList:Ljava/util/List;

    .line 292
    return-void
.end method


# virtual methods
.method public getDiscussionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscussionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdList()Ljava/util/List;
    .locals 1
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
    .line 311
    iget-object v0, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->userIdList:Ljava/util/List;

    return-object v0
.end method

.method public setDiscussionId(Ljava/lang/String;)V
    .locals 0
    .parameter "discussionId"

    .prologue
    .line 299
    iput-object p1, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;)V
    .locals 0
    .parameter "discussionName"

    .prologue
    .line 307
    iput-object p1, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->discussionName:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setUserIdList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->userIdList:Ljava/util/List;

    .line 316
    return-void
.end method
