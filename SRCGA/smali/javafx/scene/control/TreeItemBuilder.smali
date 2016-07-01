.class public Ljavafx/scene/control/TreeItemBuilder;
.super Ljava/lang/Object;
.source "TreeItemBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TreeItemBuilder",
        "<TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private children:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private expanded:Z

.field private graphic:Ljavafx/scene/Node;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TreeItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TreeItemBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TreeItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TreeItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TreeItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeItemBuilder;->children:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TreeItemBuilder;->expanded:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeItemBuilder;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setGraphic(Ljavafx/scene/Node;)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeItemBuilder;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setValue(Ljava/lang/Object;)V

    .line 53
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItemBuilder;->build()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TreeItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TreeItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TreeItem;-><init>()V

    move-object v1, v2

    .line 111
    .local v1, "x":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeItemBuilder;->applyTo(Ljavafx/scene/control/TreeItem;)V

    .line 112
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public children(Ljava/util/Collection;)Ljavafx/scene/control/TreeItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItemBuilder;->children:Ljava/util/Collection;

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public varargs children([Ljavafx/scene/control/TreeItem;)Ljavafx/scene/control/TreeItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/TreeItem;, "[Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeItemBuilder;->children(Ljava/util/Collection;)Ljavafx/scene/control/TreeItemBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public expanded(Z)Ljavafx/scene/control/TreeItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeItemBuilder;->expanded:Z

    .line 80
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    .line 81
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public graphic(Ljavafx/scene/Node;)Ljavafx/scene/control/TreeItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItemBuilder;->graphic:Ljavafx/scene/Node;

    .line 91
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    .line 92
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljavafx/scene/control/TreeItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TB;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItemBuilder;->value:Ljava/lang/Object;

    .line 102
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/TreeItemBuilder;->__set:I

    .line 103
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeItemBuilder;, "Ljavafx/scene/control/TreeItemBuilder<TT;TB;>;"
    return-object v0
.end method
