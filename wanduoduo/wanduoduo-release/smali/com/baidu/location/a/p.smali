.class Lcom/baidu/location/a/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/l;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/p;->a:Lcom/baidu/location/a/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/p;->a:Lcom/baidu/location/a/l;

    invoke-static {v0}, Lcom/baidu/location/a/l;->b(Lcom/baidu/location/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/p;->a:Lcom/baidu/location/a/l;

    invoke-static {v0}, Lcom/baidu/location/a/l;->c(Lcom/baidu/location/a/l;)V

    :cond_0
    return-void
.end method
