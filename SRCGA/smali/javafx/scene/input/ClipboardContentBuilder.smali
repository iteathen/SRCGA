.class public Ljavafx/scene/input/ClipboardContentBuilder;
.super Ljava/lang/Object;
.source "ClipboardContentBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/input/ClipboardContentBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/input/ClipboardContent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private files:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/input/ClipboardContentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/input/ClipboardContentBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/input/ClipboardContentBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/input/ClipboardContentBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/input/ClipboardContent;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/ClipboardContent;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/input/ClipboardContentBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/ClipboardContent;->getFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/ClipboardContent;->getFiles()Ljava/util/List;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/ClipboardContentBuilder;->files:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 49
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/ClipboardContentBuilder;->build()Ljavafx/scene/input/ClipboardContent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/input/ClipboardContent;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/input/ClipboardContent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/input/ClipboardContent;-><init>()V

    move-object v1, v2

    .line 74
    .local v1, "x":Ljavafx/scene/input/ClipboardContent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContentBuilder;->applyTo(Ljavafx/scene/input/ClipboardContent;)V

    .line 75
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    return-object v0
.end method

.method public files(Ljava/util/Collection;)Ljavafx/scene/input/ClipboardContentBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/io/File;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/io/File;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/ClipboardContentBuilder;->files:Ljava/util/Collection;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/input/ClipboardContentBuilder;->__set:Z

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    return-object v0
.end method

.method public varargs files([Ljava/io/File;)Ljavafx/scene/input/ClipboardContentBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContentBuilder;->files(Ljava/util/Collection;)Ljavafx/scene/input/ClipboardContentBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContentBuilder;, "Ljavafx/scene/input/ClipboardContentBuilder<TB;>;"
    return-object v0
.end method
