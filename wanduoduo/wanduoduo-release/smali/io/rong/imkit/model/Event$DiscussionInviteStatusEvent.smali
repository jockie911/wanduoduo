.class public Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscussionInviteStatusEvent"
.end annotation


# instance fields
.field discussionId:Ljava/lang/String;

.field status:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;)V
    .locals 0
    .parameter "discussionId"
    .parameter "status"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->discussionId:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->status:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    .line 394
    return-void
.end method


# virtual methods
.method public getDiscussionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->discussionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->status:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    return-object v0
.end method

.method public setDiscussionId(Ljava/lang/String;)V
    .locals 0
    .parameter "discussionId"

    .prologue
    .line 401
    iput-object p1, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->discussionId:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setStatus(Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 410
    iput-object p1, p0, Lio/rong/imkit/model/Event$DiscussionInviteStatusEvent;->status:Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;

    .line 411
    return-void
.end method
