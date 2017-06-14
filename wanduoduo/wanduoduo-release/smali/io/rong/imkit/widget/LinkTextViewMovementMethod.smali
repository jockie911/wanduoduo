.class public Lio/rong/imkit/widget/LinkTextViewMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkTextViewMovementMethod.java"


# instance fields
.field private mLastActionDownTime:J

.field private mListener:Lio/rong/imkit/widget/ILinkClickListener;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/ILinkClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 19
    iput-object p1, p0, Lio/rong/imkit/widget/LinkTextViewMovementMethod;->mListener:Lio/rong/imkit/widget/ILinkClickListener;

    .line 20
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 26
    .local v2, action:I
    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    if-nez v2, :cond_7

    .line 27
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 28
    .local v10, x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 30
    .local v11, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    sub-int/2addr v10, v12

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    add-int/2addr v10, v12

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 37
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 38
    .local v6, line:I
    int-to-float v12, v10

    invoke-virtual {v3, v6, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 40
    .local v8, off:I
    const-class v12, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v8, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 42
    .local v7, link:[Landroid/text/style/ClickableSpan;
    array-length v12, v7

    if-eqz v12, :cond_6

    .line 43
    const/4 v12, 0x1

    if-ne v2, v12, :cond_5

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 45
    .local v4, actionUpTime:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lio/rong/imkit/widget/LinkTextViewMovementMethod;->mLastActionDownTime:J

    sub-long v12, v4, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 46
    const/4 v12, 0x1

    .line 64
    .end local v3           #layout:Landroid/text/Layout;
    .end local v4           #actionUpTime:J
    .end local v6           #line:I
    .end local v7           #link:[Landroid/text/style/ClickableSpan;
    .end local v8           #off:I
    .end local v10           #x:I
    .end local v11           #y:I
    :goto_0
    return v12

    .line 48
    .restart local v3       #layout:Landroid/text/Layout;
    .restart local v4       #actionUpTime:J
    .restart local v6       #line:I
    .restart local v7       #link:[Landroid/text/style/ClickableSpan;
    .restart local v8       #off:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_1
    const/4 v9, 0x0

    .line 49
    .local v9, url:Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    instance-of v12, v12, Landroid/text/style/URLSpan;

    if-eqz v12, :cond_2

    .line 50
    const/4 v12, 0x0

    aget-object v12, v7, v12

    check-cast v12, Landroid/text/style/URLSpan;

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 51
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/rong/imkit/widget/LinkTextViewMovementMethod;->mListener:Lio/rong/imkit/widget/ILinkClickListener;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/rong/imkit/widget/LinkTextViewMovementMethod;->mListener:Lio/rong/imkit/widget/ILinkClickListener;

    invoke-interface {v12, v9}, Lio/rong/imkit/widget/ILinkClickListener;->onLinkClick(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 52
    const/4 v12, 0x1

    goto :goto_0

    .line 54
    :cond_3
    const/4 v12, 0x0

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 58
    .end local v4           #actionUpTime:J
    .end local v9           #url:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 55
    :cond_5
    if-nez v2, :cond_4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lio/rong/imkit/widget/LinkTextViewMovementMethod;->mLastActionDownTime:J

    goto :goto_1

    .line 60
    :cond_6
    invoke-static/range {p1 .. p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 61
    const/4 v12, 0x0

    goto :goto_0

    .line 64
    .end local v3           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #link:[Landroid/text/style/ClickableSpan;
    .end local v8           #off:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0
.end method
