.class Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoEditContentItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CareerAdapter"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private mData:[Ljava/lang/String;

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "stringArray"
    .parameter "content"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentItemActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->content:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040093

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    :cond_0
    const v1, 0x7f0e028e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, tvCareer:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;->mData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :goto_0
    new-instance v1, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter$1;-><init>(Lcom/wanduoduo/ui/info/InfoEditContentItemActivity$CareerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object p2

    .line 138
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
