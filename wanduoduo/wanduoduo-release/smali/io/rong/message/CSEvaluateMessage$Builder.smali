.class public Lio/rong/message/CSEvaluateMessage$Builder;
.super Ljava/lang/Object;
.source "CSEvaluateMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/CSEvaluateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private isRobotResolved:Z

.field private pid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private source:I

.field private suggest:Ljava/lang/String;

.field private type:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/rong/message/CSEvaluateMessage;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lio/rong/message/CSEvaluateMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/rong/message/CSEvaluateMessage;-><init>(Lio/rong/message/CSEvaluateMessage$1;)V

    .line 54
    .local v0, message:Lio/rong/message/CSEvaluateMessage;
    iget-object v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->sid:Ljava/lang/String;

    #setter for: Lio/rong/message/CSEvaluateMessage;->sid:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$102(Lio/rong/message/CSEvaluateMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->pid:Ljava/lang/String;

    #setter for: Lio/rong/message/CSEvaluateMessage;->pid:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$202(Lio/rong/message/CSEvaluateMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->uid:Ljava/lang/String;

    #setter for: Lio/rong/message/CSEvaluateMessage;->uid:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$302(Lio/rong/message/CSEvaluateMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->source:I

    #setter for: Lio/rong/message/CSEvaluateMessage;->source:I
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$402(Lio/rong/message/CSEvaluateMessage;I)I

    .line 58
    iget-object v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->suggest:Ljava/lang/String;

    #setter for: Lio/rong/message/CSEvaluateMessage;->suggest:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$502(Lio/rong/message/CSEvaluateMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-boolean v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->isRobotResolved:Z

    #setter for: Lio/rong/message/CSEvaluateMessage;->isRobotResolved:Z
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$602(Lio/rong/message/CSEvaluateMessage;Z)Z

    .line 60
    iget v1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->type:I

    #setter for: Lio/rong/message/CSEvaluateMessage;->type:I
    invoke-static {v0, v1}, Lio/rong/message/CSEvaluateMessage;->access$702(Lio/rong/message/CSEvaluateMessage;I)I

    .line 61
    return-object v0
.end method

.method public isRobotResolved(Z)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "isRobotResolved"

    .prologue
    .line 118
    iput-boolean p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->isRobotResolved:Z

    .line 119
    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "pid"

    .prologue
    .line 90
    iput-object p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->pid:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->sid:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public source(I)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "source"

    .prologue
    .line 100
    iput p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->source:I

    .line 101
    return-object p0
.end method

.method public suggest(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "suggest"

    .prologue
    .line 109
    iput-object p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->suggest:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public type(I)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 128
    iput p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->type:I

    .line 129
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;
    .locals 0
    .parameter "uid"

    .prologue
    .line 80
    iput-object p1, p0, Lio/rong/message/CSEvaluateMessage$Builder;->uid:Ljava/lang/String;

    .line 81
    return-object p0
.end method
