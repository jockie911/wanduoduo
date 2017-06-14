.class public Lcom/wanduoduo/bean/CommentListBean$DataBean;
.super Ljava/lang/Object;
.source "CommentListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CommentListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private comment_allnum:Ljava/lang/String;

.field private comment_badnum:Ljava/lang/String;

.field private comment_goodnum:Ljava/lang/String;

.field private comment_perfectnum:Ljava/lang/String;

.field private current_page:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_allnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_allnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_badnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_badnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_goodnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_goodnum:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_perfectnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_perfectnum:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_page()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->current_page:I

    return v0
.end method

.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->total_page:I

    return v0
.end method

.method public setComment_allnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_allnum"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_allnum:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setComment_badnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_badnum"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_badnum:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setComment_goodnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_goodnum"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_goodnum:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setComment_perfectnum(Ljava/lang/String;)V
    .locals 0
    .parameter "comment_perfectnum"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->comment_perfectnum:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCurrent_page(I)V
    .locals 0
    .parameter "current_page"

    .prologue
    .line 62
    iput p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->current_page:I

    .line 63
    return-void
.end method

.method public setData_list(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CommentListBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->data_list:Ljava/util/List;

    .line 111
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .parameter "total_page"

    .prologue
    .line 102
    iput p1, p0, Lcom/wanduoduo/bean/CommentListBean$DataBean;->total_page:I

    .line 103
    return-void
.end method
