.class public Lcom/bigkoo/pickerview/view/WheelOptions;
.super Ljava/lang/Object;
.source "WheelOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private linkage:Z

.field private mOptions1Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOptions2Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mOptions3Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;

.field private wheelListener_option1:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

.field private wheelListener_option2:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

.field private wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

.field private wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 34
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    .line 35
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    .line 36
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method private itemSelected(III)V
    .locals 3
    .parameter "opt1Select"
    .parameter "opt2Select"
    .parameter "opt3Select"

    .prologue
    .line 208
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 214
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 219
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentItems()[I
    .locals 3

    .prologue
    .line 191
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 192
    .local v0, currentItems:[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 193
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 194
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 195
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    return-object v0
.end method

.method public setCurrentItems(III)V
    .locals 1
    .parameter "option1"
    .parameter "option2"
    .parameter "option3"

    .prologue
    .line 199
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->itemSelected(III)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 203
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 204
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 205
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 156
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 158
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 159
    return-void
.end method

.method public setCyclic(ZZZ)V
    .locals 1
    .parameter "cyclic1"
    .parameter "cyclic2"
    .parameter "cyclic3"

    .prologue
    .line 166
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 168
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 169
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label1"
    .parameter "label2"
    .parameter "label3"

    .prologue
    .line 143
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 147
    :cond_1
    if-eqz p3, :cond_2

    .line 148
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 149
    :cond_2
    return-void
.end method

.method public setOption2Cyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 175
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 176
    return-void
.end method

.method public setOption3Cyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 183
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 184
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    .local p1, optionsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 41
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "linkage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    .local p1, options1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local p2, options2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    .local p3, options3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;>;"
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 52
    iput-boolean p4, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    .line 53
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions1Items:Ljava/util/ArrayList;

    .line 54
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    .line 55
    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x4

    .line 57
    .local v0, len:I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 58
    const/16 v0, 0x8

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 60
    const/16 v0, 0xc

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/R$id;->options1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 63
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions1Items:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 64
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v5}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 66
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/R$id;->options2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 67
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 68
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 71
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/R$id;->options3:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 72
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 73
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 73
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/adapter/WheelAdapter;)V

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 77
    const/16 v1, 0x19

    .line 79
    .local v1, textSize:I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 80
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 81
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 83
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v6}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v6}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 89
    :cond_5
    new-instance v2, Lcom/bigkoo/pickerview/view/WheelOptions$1;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$1;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option1:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    .line 108
    new-instance v2, Lcom/bigkoo/pickerview/view/WheelOptions$2;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$2;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    .line 130
    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 131
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option1:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;)V

    .line 132
    :cond_6
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 133
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/listener/OnItemSelectedListener;)V

    .line 134
    :cond_7
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter "linkage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    .local p1, options1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local p2, options2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 46
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 30
    .local p0, this:Lcom/bigkoo/pickerview/view/WheelOptions;,"Lcom/bigkoo/pickerview/view/WheelOptions<TT;>;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    .line 31
    return-void
.end method
