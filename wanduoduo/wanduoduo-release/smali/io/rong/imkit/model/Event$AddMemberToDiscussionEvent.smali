.class public Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddMemberToDiscussionEvent"
.end annotation


# instance fields
.field discussionId:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "discussionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 325
    iput-object p2, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->userIdList:Ljava/util/List;

    .line 326
    return-void
.end method


# virtual methods
.method public getDiscussionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->discussionId:Ljava/lang/String;

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
    .line 337
    iget-object v0, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->userIdList:Ljava/util/List;

    return-object v0
.end method

.method public setDiscussionId(Ljava/lang/String;)V
    .locals 0
    .parameter "discussionId"

    .prologue
    .line 333
    iput-object p1, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 334
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
    .line 341
    .local p1, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/rong/imkit/model/Event$AddMemberToDiscussionEvent;->userIdList:Ljava/util/List;

    .line 342
    return-void
.end method
