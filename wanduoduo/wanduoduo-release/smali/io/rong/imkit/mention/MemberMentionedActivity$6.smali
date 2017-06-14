.class Lio/rong/imkit/mention/MemberMentionedActivity$6;
.super Ljava/lang/Object;
.source "MemberMentionedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/mention/MemberMentionedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/mention/MemberMentionedActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$6;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$6;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-virtual {v0}, Lio/rong/imkit/mention/MemberMentionedActivity;->finish()V

    .line 192
    return-void
.end method
