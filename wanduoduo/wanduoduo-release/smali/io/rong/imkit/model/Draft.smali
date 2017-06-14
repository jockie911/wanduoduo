.class public Lio/rong/imkit/model/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# instance fields
.field private content:Ljava/lang/String;

.field private ext:[B

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "id"
    .parameter "type"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lio/rong/imkit/model/Draft;->type:Ljava/lang/Integer;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[B)V
    .locals 0
    .parameter "id"
    .parameter "type"
    .parameter "content"
    .parameter "ext"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lio/rong/imkit/model/Draft;->type:Ljava/lang/Integer;

    .line 25
    iput-object p3, p0, Lio/rong/imkit/model/Draft;->content:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lio/rong/imkit/model/Draft;->ext:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imkit/model/Draft;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/rong/imkit/model/Draft;->ext:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/imkit/model/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imkit/model/Draft;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 50
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExt([B)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->ext:[B

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 34
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 42
    iput-object p1, p0, Lio/rong/imkit/model/Draft;->type:Ljava/lang/Integer;

    .line 43
    return-void
.end method
