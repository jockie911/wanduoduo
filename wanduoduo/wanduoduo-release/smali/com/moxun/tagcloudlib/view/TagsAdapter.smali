.class public abstract Lcom/moxun/tagcloudlib/view/TagsAdapter;
.super Ljava/lang/Object;
.source "TagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;
    }
.end annotation


# instance fields
.field private onDataSetChangeListener:Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public abstract getPopularity(I)I
.end method

.method public abstract getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/moxun/tagcloudlib/view/TagsAdapter;->onDataSetChangeListener:Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;

    invoke-interface {v0}, Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;->onChange()V

    .line 40
    return-void
.end method

.method public abstract onThemeColorChanged(Landroid/view/View;I)V
.end method

.method protected setOnDataSetChangeListener(Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/moxun/tagcloudlib/view/TagsAdapter;->onDataSetChangeListener:Lcom/moxun/tagcloudlib/view/TagsAdapter$OnDataSetChangeListener;

    .line 48
    return-void
.end method
