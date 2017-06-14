.class Lcom/bigkoo/pickerview/view/WheelOptions$2;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelOptions;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 108
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions$2;,"Lcom/bigkoo/pickerview/view/WheelOptions$2;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 112
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions$2;,"Lcom/bigkoo/pickerview/view/WheelOptions$2;"
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v0

    .line 114
    .local v0, opt1Select:I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    .line 118
    .local v1, opt3:I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v3

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 121
    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 120
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 123
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    #getter for: Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 126
    .end local v0           #opt1Select:I
    .end local v1           #opt3:I
    :cond_3
    return-void
.end method
