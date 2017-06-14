.class Lcom/bigkoo/pickerview/view/WheelTime$1;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelTime;

.field final synthetic val$list_big:Ljava/util/List;

.field final synthetic val$list_little:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 104
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    add-int v1, p1, v2

    .line 106
    .local v1, year_num:I
    const/16 v0, 0x1e

    .line 107
    .local v0, maxItem:I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->val$list_big:Ljava/util/List;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    .line 108
    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v4, 0x1f

    invoke-direct {v3, v5, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 110
    const/16 v0, 0x1f

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-le v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 129
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->val$list_little:Ljava/util/List;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v4, 0x1e

    invoke-direct {v3, v5, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 114
    const/16 v0, 0x1e

    goto :goto_0

    .line 116
    :cond_2
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_3

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_4

    :cond_3
    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_5

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v4, 0x1d

    invoke-direct {v3, v5, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 119
    const/16 v0, 0x1d

    goto :goto_0

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    #getter for: Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v4, 0x1c

    invoke-direct {v3, v5, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 123
    const/16 v0, 0x1c

    goto :goto_0
.end method
