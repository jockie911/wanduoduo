.class Lcom/baidu/location/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    const/16 v6, 0x14

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-static {v2, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;[F)[F

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    aget v2, v0, v9

    aget v3, v0, v10

    aget v0, v0, v11

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;FFF)[F

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)I

    move-result v1

    if-lt v1, v6, :cond_0

    aget v1, v0, v9

    aget v2, v0, v9

    mul-float/2addr v1, v2

    aget v2, v0, v10

    aget v3, v0, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, v0, v11

    aget v0, v0, v11

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v2}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;)I

    move-result v2

    if-nez v2, :cond_1

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, v10}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;I)I

    goto :goto_0

    :cond_1
    const-wide v2, 0x3f847ae140000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, v9}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->c(Lcom/baidu/location/c/e;)[D

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v2}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)I

    move-result v2

    aget v3, v0, v9

    float-to-double v4, v3

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)I

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v2}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1, v9}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;I)I

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)I

    move-result v1

    if-lt v1, v6, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v2}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)Z

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->k(Lcom/baidu/location/c/e;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    iget-object v2, v2, Lcom/baidu/location/c/e;->b:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v3}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->l(Lcom/baidu/location/c/e;)[D

    move-result-object v8

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    iget-object v2, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v2}, Lcom/baidu/location/c/e;->l(Lcom/baidu/location/c/e;)[D

    move-result-object v2

    aget-wide v2, v2, v9

    aget v4, v0, v9

    float-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L

    invoke-static/range {v1 .. v7}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;DDD)D

    move-result-wide v2

    aput-wide v2, v8, v9

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->l(Lcom/baidu/location/c/e;)[D

    move-result-object v1

    aget v2, v0, v10

    float-to-double v2, v2

    aput-wide v2, v1, v10

    iget-object v1, p0, Lcom/baidu/location/c/f;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->l(Lcom/baidu/location/c/e;)[D

    move-result-object v1

    aget v0, v0, v11

    float-to-double v2, v0

    aput-wide v2, v1, v11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
