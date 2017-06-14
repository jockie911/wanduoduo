.class public Lio/rong/imkit/model/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x430a7eaa9d4915cbL


# instance fields
.field fileName:Ljava/lang/String;

.field filePath:Ljava/lang/String;

.field fileSize:J

.field isDirectory:Z

.field suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/imkit/model/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/rong/imkit/model/FileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lio/rong/imkit/model/FileInfo;->fileSize:J

    return-wide v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/model/FileInfo;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lio/rong/imkit/model/FileInfo;->isDirectory:Z

    return v0
.end method

.method public setDirectory(Z)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 30
    iput-boolean p1, p0, Lio/rong/imkit/model/FileInfo;->isDirectory:Z

    .line 31
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 38
    iput-object p1, p0, Lio/rong/imkit/model/FileInfo;->fileName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 46
    iput-object p1, p0, Lio/rong/imkit/model/FileInfo;->filePath:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .parameter "fileSize"

    .prologue
    .line 54
    iput-wide p1, p0, Lio/rong/imkit/model/FileInfo;->fileSize:J

    .line 55
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .parameter "suffix"

    .prologue
    .line 26
    iput-object p1, p0, Lio/rong/imkit/model/FileInfo;->suffix:Ljava/lang/String;

    .line 27
    return-void
.end method
