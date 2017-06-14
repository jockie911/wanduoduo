.class Lcom/umeng/analytics/h$3;
.super Lorg/json/JSONObject;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/h;->b(Lu/aly/aw;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aw;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/umeng/analytics/h;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/h;Lu/aly/aw;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    iput-object p1, p0, Lcom/umeng/analytics/h$3;->c:Lcom/umeng/analytics/h;

    iput-object p2, p0, Lcom/umeng/analytics/h$3;->a:Lu/aly/aw;

    iput-object p3, p0, Lcom/umeng/analytics/h$3;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 461
    iget-object v0, p0, Lcom/umeng/analytics/h$3;->c:Lcom/umeng/analytics/h;

    iget-object v1, p0, Lcom/umeng/analytics/h$3;->a:Lu/aly/aw;

    iget-object v2, p0, Lcom/umeng/analytics/h$3;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, p0, v2}, Lcom/umeng/analytics/h;->b(Lcom/umeng/analytics/h;Lu/aly/aw;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 462
    return-void
.end method
