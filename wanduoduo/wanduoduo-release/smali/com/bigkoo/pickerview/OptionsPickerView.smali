.class public Lcom/bigkoo/pickerview/OptionsPickerView;
.super Lcom/bigkoo/pickerview/view/BasePickerView;
.source "OptionsPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bigkoo/pickerview/view/BasePickerView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG_CANCEL:Ljava/lang/String; = "cancel"

.field private static final TAG_SUBMIT:Ljava/lang/String; = "submit"


# instance fields
.field private btnCancel:Landroid/view/View;

.field private btnSubmit:Landroid/view/View;

.field private optionsSelectListener:Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;

.field private tvTitle:Landroid/widget/TextView;

.field wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bigkoo/pickerview/view/WheelOptions",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/BasePickerView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$layout;->pickerview_options:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget v1, Lcom/bigkoo/pickerview/R$id;->btnSubmit:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnSubmit:Landroid/view/View;

    .line 30
    iget-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnSubmit:Landroid/view/View;

    const-string v2, "submit"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    sget v1, Lcom/bigkoo/pickerview/R$id;->btnCancel:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnCancel:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnCancel:Landroid/view/View;

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnSubmit:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->btnCancel:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v1, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->tvTitle:Landroid/widget/TextView;

    .line 38
    sget v1, Lcom/bigkoo/pickerview/R$id;->optionspicker:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/OptionsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, optionspicker:Landroid/view/View;
    new-instance v1, Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {v1, v0}, Lcom/bigkoo/pickerview/view/WheelOptions;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 40
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 120
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, tag:Ljava/lang/String;
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/OptionsPickerView;->dismiss()V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->optionsSelectListener:Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->getCurrentItems()[I

    move-result-object v0

    .line 131
    .local v0, optionsCurrentItems:[I
    iget-object v2, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->optionsSelectListener:Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;->onOptionsSelect(III)V

    .line 133
    .end local v0           #optionsCurrentItems:[I
    :cond_1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/OptionsPickerView;->dismiss()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "cyclic"

    .prologue
    .line 110
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCyclic(Z)V

    .line 111
    return-void
.end method

.method public setCyclic(ZZZ)V
    .locals 1
    .parameter "cyclic1"
    .parameter "cyclic2"
    .parameter "cyclic3"

    .prologue
    .line 113
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCyclic(ZZZ)V

    .line 114
    return-void
.end method

.method public setLabels(Ljava/lang/String;)V
    .locals 2
    .parameter "label1"

    .prologue
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "label1"
    .parameter "label2"

    .prologue
    .line 94
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label1"
    .parameter "label2"
    .parameter "label3"

    .prologue
    .line 103
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setOnoptionsSelectListener(Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;)V
    .locals 0
    .parameter "optionsSelectListener"

    .prologue
    .line 144
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->optionsSelectListener:Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;

    .line 145
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    .local p1, optionsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 43
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 54
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    .local p1, options1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local p2, options2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    .local p3, options3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 56
    return-void
.end method

.method public setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
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
    .line 47
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    .local p1, options1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local p2, options2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 48
    return-void
.end method

.method public setSelectOptions(I)V
    .locals 2
    .parameter "option1"

    .prologue
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCurrentItems(III)V

    .line 63
    return-void
.end method

.method public setSelectOptions(II)V
    .locals 2
    .parameter "option1"
    .parameter "option2"

    .prologue
    .line 70
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCurrentItems(III)V

    .line 71
    return-void
.end method

.method public setSelectOptions(III)V
    .locals 1
    .parameter "option1"
    .parameter "option2"
    .parameter "option3"

    .prologue
    .line 79
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->wheelOptions:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->setCurrentItems(III)V

    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 148
    .local p0, this:Lcom/bigkoo/pickerview/OptionsPickerView;,"Lcom/bigkoo/pickerview/OptionsPickerView<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/OptionsPickerView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method
