.class public Lio/rong/imlib/filetransfer/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/filetransfer/Call$AsyncCall;
    }
.end annotation


# instance fields
.field private final dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

.field private final request:Lio/rong/imlib/filetransfer/Request;


# direct methods
.method private constructor <init>(Lio/rong/imlib/filetransfer/CallDispatcher;Lio/rong/imlib/filetransfer/Request;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "request"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lio/rong/imlib/filetransfer/Call;->request:Lio/rong/imlib/filetransfer/Request;

    .line 12
    iput-object p1, p0, Lio/rong/imlib/filetransfer/Call;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lio/rong/imlib/filetransfer/Call;)Lio/rong/imlib/filetransfer/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lio/rong/imlib/filetransfer/Call;->request:Lio/rong/imlib/filetransfer/Request;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imlib/filetransfer/Call;)Lio/rong/imlib/filetransfer/CallDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lio/rong/imlib/filetransfer/Call;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    return-object v0
.end method

.method public static create(Lio/rong/imlib/filetransfer/CallDispatcher;Lio/rong/imlib/filetransfer/Request;)Lio/rong/imlib/filetransfer/Call;
    .locals 1
    .parameter "dispatcher"
    .parameter "request"

    .prologue
    .line 16
    new-instance v0, Lio/rong/imlib/filetransfer/Call;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/filetransfer/Call;-><init>(Lio/rong/imlib/filetransfer/CallDispatcher;Lio/rong/imlib/filetransfer/Request;)V

    return-object v0
.end method


# virtual methods
.method public enqueue()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lio/rong/imlib/filetransfer/Call$AsyncCall;

    invoke-direct {v0, p0}, Lio/rong/imlib/filetransfer/Call$AsyncCall;-><init>(Lio/rong/imlib/filetransfer/Call;)V

    .line 21
    .local v0, asyncCall:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    iget-object v1, p0, Lio/rong/imlib/filetransfer/Call;->dispatcher:Lio/rong/imlib/filetransfer/CallDispatcher;

    invoke-virtual {v1, v0}, Lio/rong/imlib/filetransfer/CallDispatcher;->enqueue(Lio/rong/imlib/filetransfer/Call$AsyncCall;)V

    .line 22
    return-void
.end method
