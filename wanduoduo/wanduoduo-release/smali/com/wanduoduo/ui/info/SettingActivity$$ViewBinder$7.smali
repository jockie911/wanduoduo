.class Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/SettingActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/info/SettingActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder;Lcom/wanduoduo/ui/info/SettingActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 69
    .local p0, this:Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;,"Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;->this$0:Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;->val$target:Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 73
    .local p0, this:Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;,"Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/SettingActivity$$ViewBinder$7;->val$target:Lcom/wanduoduo/ui/info/SettingActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/info/SettingActivity;->onClick(Landroid/view/View;)V

    .line 74
    return-void
.end method
