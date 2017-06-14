.class Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$2;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment.java"

# interfaces
.implements Lcom/wanduoduo/adapter/PhotoPicAdapter$OnDeleteListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->setPicWall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$2;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 1
    .parameter "exitPicPosition"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$2;->this$0:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->alreadyPicLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    return-void
.end method
