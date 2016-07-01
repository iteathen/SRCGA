.class Ljava/nio/file/PathImpl;
.super Ljava/lang/Object;
.source "PathImpl.java"

# interfaces
.implements Ljava/nio/file/Path;


# instance fields
.field file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Ljava/nio/file/PathImpl;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/nio/file/PathImpl;->file:Ljava/io/File;

    .line 11
    return-void
.end method


# virtual methods
.method public toFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Ljava/nio/file/PathImpl;
    move-object v1, v0

    iget-object v1, v1, Ljava/nio/file/PathImpl;->file:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Ljava/nio/file/PathImpl;
    return-object v0
.end method
