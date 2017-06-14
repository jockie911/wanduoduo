.class Lcom/wanduoduo/adapter/ServerTimeAdapter$1;
.super Ljava/lang/Object;
.source "ServerTimeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/ServerTimeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

.field final synthetic val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

.field final synthetic val$i:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/ServerTimeAdapter;ILcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$i:I

    iput-object p3, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iput-object p4, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 94
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$i:I

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    #calls: Lcom/wanduoduo/adapter/ServerTimeAdapter;->getCurrentHousr()Ljava/lang/String;
    invoke-static {v2}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->access$100(Lcom/wanduoduo/adapter/ServerTimeAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    if-gt v1, v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 98
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const v2, 0x7f020290

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimes:[Ljava/lang/String;

    iget v3, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$i:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;->witchClickPostiton:I

    if-nez v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    #calls: Lcom/wanduoduo/adapter/ServerTimeAdapter;->getCurrentHousr()Ljava/lang/String;
    invoke-static {v1}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->access$100(Lcom/wanduoduo/adapter/ServerTimeAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, hourTime:I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    rsub-int/lit8 v2, v0, 0x17

    #calls: Lcom/wanduoduo/adapter/ServerTimeAdapter;->setCleckWeatherFull(I)V
    invoke-static {v1, v2}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->access$200(Lcom/wanduoduo/adapter/ServerTimeAdapter;I)V

    .line 116
    .end local v0           #hourTime:I
    :cond_1
    :goto_2
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/eventclass/ServerTimeEventClass;

    invoke-direct {v2}, Lcom/wanduoduo/eventclass/ServerTimeEventClass;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 104
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$holder:Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter$ViewHolder;->itemServerTime:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimeSlectedLists:Ljava/util/List;

    iget-object v2, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/ServerTimeAdapter;->mTimes:[Ljava/lang/String;

    iget v3, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->val$i:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/adapter/ServerTimeAdapter$1;->this$0:Lcom/wanduoduo/adapter/ServerTimeAdapter;

    const/16 v2, 0x10

    #calls: Lcom/wanduoduo/adapter/ServerTimeAdapter;->setCleckWeatherFull(I)V
    invoke-static {v1, v2}, Lcom/wanduoduo/adapter/ServerTimeAdapter;->access$200(Lcom/wanduoduo/adapter/ServerTimeAdapter;I)V

    goto :goto_2
.end method
