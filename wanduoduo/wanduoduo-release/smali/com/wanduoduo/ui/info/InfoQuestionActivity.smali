.class public Lcom/wanduoduo/ui/info/InfoQuestionActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "InfoQuestionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final QAREQUEST:I = 0xf


# instance fields
.field private answerLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dataLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lvQuestion:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0119
        }
    .end annotation
.end field

.field private questifonfLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->dataLists:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f04002f

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "questionLists"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->questifonfLists:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "answerLists"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->answerLists:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->stringArray:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->stringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->dataLists:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->stringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->dataLists:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 43
    new-instance v1, Lcom/wanduoduo/adapter/info/InfoQuestionAdapter;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->dataLists:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/wanduoduo/adapter/info/InfoQuestionAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 44
    .local v1, infoQuestionAdapter:Lcom/wanduoduo/adapter/info/InfoQuestionAdapter;
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->lvQuestion:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->lvQuestion:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 61
    const/16 v3, 0xf

    if-ne p1, v3, :cond_0

    if-eqz p3, :cond_0

    .line 62
    const-string v3, "questionLists"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 63
    .local v2, questionLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "answerLists"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, answerLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "questionLists"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 66
    const-string v3, "answerLists"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 67
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->finish()V

    .line 70
    .end local v0           #answerLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #questionLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v2, "question"

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "questionLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->questifonfLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 55
    const-string v1, "answerLists"

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->answerLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 56
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    return-void
.end method
