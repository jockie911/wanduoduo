.class public Lu/aly/cv$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements Lu/aly/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dd;)Lu/aly/cp;
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Lu/aly/cv;

    invoke-direct {v0, p1}, Lu/aly/cv;-><init>(Lu/aly/dd;)V

    return-object v0
.end method
