.class public Ljavafx/scene/layout/PaneBuilder;
.super Ljavafx/scene/layout/RegionBuilder;
.source "PaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/RegionBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private children:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/Node;",
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

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/RegionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/PaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/PaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/PaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/layout/Pane;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/Pane;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/layout/RegionBuilder;->applyTo(Ljavafx/scene/layout/Region;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/PaneBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/PaneBuilder;->children:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/PaneBuilder;->build()Ljavafx/scene/layout/Pane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/Pane;
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/Pane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    move-object v1, v2

    .line 75
    .local v1, "x":Ljavafx/scene/layout/Pane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 76
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/PaneBuilder;->build()Ljavafx/scene/layout/Pane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    return-object v0
.end method

.method public children(Ljava/util/Collection;)Ljavafx/scene/layout/PaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/Node;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/PaneBuilder;->children:Ljava/util/Collection;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/layout/PaneBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    return-object v0
.end method

.method public varargs children([Ljavafx/scene/Node;)Ljavafx/scene/layout/PaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/PaneBuilder;->children(Ljava/util/Collection;)Ljavafx/scene/layout/PaneBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/PaneBuilder;, "Ljavafx/scene/layout/PaneBuilder<TB;>;"
    return-object v0
.end method
