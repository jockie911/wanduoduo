.class Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;
.super Landroid/widget/BaseAdapter;
.source "MemberMentionedActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/mention/MemberMentionedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MembersAdapter"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/mention/MemberMentionedActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 210
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getItem(I)Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "sectionIndex"

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 258
    iget-object v3, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    invoke-virtual {v3}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->getLetter()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, sortStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, firstChar:C
    if-ne v0, p1, :cond_0

    .line 265
    .end local v0           #firstChar:C
    .end local v1           #i:I
    .end local v2           #sortStr:Ljava/lang/String;
    :goto_1
    return v1

    .line 257
    .restart local v0       #firstChar:C
    .restart local v1       #i:I
    .restart local v2       #sortStr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0           #firstChar:C
    .end local v2           #sortStr:Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 270
    iget-object v0, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    invoke-virtual {v0}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->getLetter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 221
    if-nez p2, :cond_1

    .line 222
    new-instance v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;

    iget-object v3, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->this$0:Lio/rong/imkit/mention/MemberMentionedActivity;

    invoke-direct {v2, v3}, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;-><init>(Lio/rong/imkit/mention/MemberMentionedActivity;)V

    .line 223
    .local v2, viewHolder:Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$layout;->rc_mention_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 224
    sget v3, Lio/rong/imkit/R$id;->rc_user_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 225
    sget v3, Lio/rong/imkit/R$id;->rc_user_portrait:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->portrait:Lio/rong/imkit/widget/AsyncImageView;

    .line 226
    sget v3, Lio/rong/imkit/R$id;->letter:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->letter:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    iget-object v1, v3, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->userInfo:Lio/rong/imlib/model/UserInfo;

    .line 232
    .local v1, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v1, :cond_0

    .line 233
    iget-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->portrait:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Landroid/net/Uri;)V

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 240
    .local v0, section:I
    invoke-virtual {p0, v0}, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 241
    iget-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->letter:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v4, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->letter:Landroid/widget/TextView;

    iget-object v3, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;

    invoke-virtual {v3}, Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;->getLetter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_1
    return-object p2

    .line 229
    .end local v0           #section:I
    .end local v1           #userInfo:Lio/rong/imlib/model/UserInfo;
    .end local v2           #viewHolder:Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;

    .restart local v2       #viewHolder:Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;
    goto :goto_0

    .line 244
    .restart local v0       #section:I
    .restart local v1       #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_2
    iget-object v3, v2, Lio/rong/imkit/mention/MemberMentionedActivity$ViewHolder;->letter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/mention/MemberMentionedActivity$MemberInfo;>;"
    iput-object p1, p0, Lio/rong/imkit/mention/MemberMentionedActivity$MembersAdapter;->mList:Ljava/util/List;

    .line 201
    return-void
.end method
