.class Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/mention/MemberMentionedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemberInfo"
.end annotation


# instance fields
.field letter:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

.field userInfo:Lio/rong/imlib/model/UserInfo;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity;Lio/rong/imlib/model/UserInfo;)V
    .locals 0
    .parameter
    .parameter "userInfo"

    .prologue
    .line 284
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->userInfo:Lio/rong/imlib/model/UserInfo;

    .line 286
    return-void
.end method


# virtual methods
.method public getLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0
    .parameter "letter"

    .prologue
    .line 289
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->letter:Ljava/lang/String;

    .line 290
    return-void
.end method
