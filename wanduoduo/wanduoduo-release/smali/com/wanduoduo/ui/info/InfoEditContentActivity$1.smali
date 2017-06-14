.class Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;
.super Ljava/lang/Object;
.source "InfoEditContentActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/OptionsPickerView$OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoEditContentActivity;->drinkPicker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoEditContentActivity;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    iput p2, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsSelect(III)V
    .locals 2
    .parameter "options1"
    .parameter "option2"
    .parameter "options3"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;->this$0:Lcom/wanduoduo/ui/info/InfoEditContentActivity;

    iget v1, p0, Lcom/wanduoduo/ui/info/InfoEditContentActivity$1;->val$type:I

    #calls: Lcom/wanduoduo/ui/info/InfoEditContentActivity;->selected(II)V
    invoke-static {v0, v1, p1}, Lcom/wanduoduo/ui/info/InfoEditContentActivity;->access$000(Lcom/wanduoduo/ui/info/InfoEditContentActivity;II)V

    .line 181
    return-void
.end method
