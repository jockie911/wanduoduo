.class Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;
.super Ljava/lang/Object;
.source "JCMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FuckBean"
.end annotation


# instance fields
.field looping:Z

.field mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter
    .parameter "loop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, mapHeadData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->url:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->mapHeadData:Ljava/util/Map;

    .line 231
    iput-boolean p4, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->looping:Z

    .line 232
    return-void
.end method
