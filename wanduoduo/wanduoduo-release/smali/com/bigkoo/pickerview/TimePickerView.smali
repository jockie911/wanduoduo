.class public Lcom/bigkoo/pickerview/TimePickerView;
.super Lcom/bigkoo/pickerview/view/BasePickerView;
.source "TimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;,
        Lcom/bigkoo/pickerview/TimePickerView$Type;
    }
.end annotation


# static fields
.field private static final TAG_CANCEL:Ljava/lang/String; = "cancel"

.field private static final TAG_SUBMIT:Ljava/lang/String; = "submit"


# instance fields
.field private btnCancel:Landroid/view/View;

.field private btnSubmit:Landroid/view/View;

.field private timeSelectListener:Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;

.field private tvTitle:Landroid/widget/TextView;

.field wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/TimePickerView$Type;)V
    .locals 10
    .parameter "context"
    .parameter "type"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/BasePickerView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v8, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    iget-object v9, p0, Lcom/bigkoo/pickerview/TimePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget v0, Lcom/bigkoo/pickerview/R$id;->btnSubmit:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnSubmit:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnSubmit:Landroid/view/View;

    const-string v8, "submit"

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    sget v0, Lcom/bigkoo/pickerview/R$id;->btnCancel:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnCancel:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnCancel:Landroid/view/View;

    const-string v8, "cancel"

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnSubmit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->btnCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->tvTitle:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/bigkoo/pickerview/R$id;->timepicker:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 46
    .local v7, timepickerview:Landroid/view/View;
    new-instance v0, Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-direct {v0, v7, p2}, Lcom/bigkoo/pickerview/view/WheelTime;-><init>(Landroid/view/View;Lcom/bigkoo/pickerview/TimePickerView$Type;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 50
    .local v6, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 52
    .local v1, year:I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 53
    .local v2, month:I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 54
    .local v3, day:I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 55
    .local v4, hours:I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 56
    .local v5, minute:I
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual/range {v0 .. v5}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIII)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, tag:Ljava/lang/String;
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->dismiss()V

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->timeSelectListener:Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;

    if-eqz v3, :cond_1

    .line 126
    :try_start_0
    sget-object v3, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    iget-object v4, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 127
    .local v0, date:Ljava/util/Date;
    iget-object v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->timeSelectListener:Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;

    invoke-interface {v3, v0}, Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;->onTimeSelect(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #date:Ljava/util/Date;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->dismiss()V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setCyclic(Z)V

    .line 115
    return-void
.end method

.method public setOnTimeSelectListener(Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;)V
    .locals 0
    .parameter "timeSelectListener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->timeSelectListener:Lcom/bigkoo/pickerview/TimePickerView$OnTimeSelectListener;

    .line 143
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "startYear"
    .parameter "endYear"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setStartYear(I)V

    .line 68
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/view/WheelTime;->setEndYear(I)V

    .line 69
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 10
    .parameter "date"

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 77
    .local v6, calendar:Ljava/util/Calendar;
    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 82
    .local v1, year:I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 83
    .local v2, month:I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 84
    .local v3, day:I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 85
    .local v4, hours:I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 86
    .local v5, minute:I
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual/range {v0 .. v5}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIII)V

    .line 87
    return-void

    .line 80
    .end local v1           #year:I
    .end local v2           #month:I
    .end local v3           #day:I
    .end local v4           #hours:I
    .end local v5           #minute:I
    :cond_0
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
