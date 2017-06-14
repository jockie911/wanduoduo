.class public Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
.super Ljava/lang/Object;
.source "InfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserItemBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;
    }
.end annotation


# instance fields
.field private item:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

.field private num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->item:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->num:Ljava/lang/String;

    return-object v0
.end method

.method public setItem(Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->item:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

    .line 156
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->num:Ljava/lang/String;

    .line 148
    return-void
.end method
