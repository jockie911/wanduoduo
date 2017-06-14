.class public Lio/rong/imkit/userInfoCache/RongConversationInfo;
.super Ljava/lang/Object;
.source "RongConversationInfo.java"


# instance fields
.field private conversationType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "name"
    .parameter "uri"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->conversationType:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->id:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->name:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->uri:Landroid/net/Uri;

    .line 11
    return-void
.end method


# virtual methods
.method public getConversationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->conversationType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public setConversationType(Ljava/lang/String;)V
    .locals 0
    .parameter "conversationType"

    .prologue
    .line 18
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->conversationType:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 26
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 42
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 34
    iput-object p1, p0, Lio/rong/imkit/userInfoCache/RongConversationInfo;->uri:Landroid/net/Uri;

    .line 35
    return-void
.end method
