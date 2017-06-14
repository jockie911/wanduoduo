.class public Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveMemberFromDiscussionEvent"
.end annotation


# instance fields
.field discussionId:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "discussionId"
    .parameter "userId"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->userId:Ljava/lang/String;

    .line 352
    return-void
.end method


# virtual methods
.method public getDiscussionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->discussionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDiscussionId(Ljava/lang/String;)V
    .locals 0
    .parameter "discussionId"

    .prologue
    .line 359
    iput-object p1, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 367
    iput-object p1, p0, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;->userId:Ljava/lang/String;

    .line 368
    return-void
.end method
