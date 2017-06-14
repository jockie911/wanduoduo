.class Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingAccoutFragmetn$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 18
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;->this$0:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 22
    .local p0, this:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/info/setting/SettingAccoutFragmetn;->onClick(Landroid/view/View;)V

    .line 23
    return-void
.end method
