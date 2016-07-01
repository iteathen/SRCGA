.class public Ljavafx/scene/control/TreeCellBuilder;
.super Ljavafx/scene/control/IndexedCellBuilder;
.source "TreeCellBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TreeCellBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/IndexedCellBuilder",
        "<TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private disclosureNode:Ljavafx/scene/Node;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TreeCellBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TreeCellBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TreeCellBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TreeCellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TreeCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/IndexedCellBuilder;->applyTo(Ljavafx/scene/control/Cell;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/TreeCellBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCellBuilder;->disclosureNode:Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeCell;->setDisclosureNode(Ljavafx/scene/Node;)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeCellBuilder;->build()Ljavafx/scene/control/TreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeCellBuilder;->build()Ljavafx/scene/control/TreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeCellBuilder;->build()Ljavafx/scene/control/TreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TreeCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TreeCell;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TreeCell;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeCellBuilder;->applyTo(Ljavafx/scene/control/TreeCell;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    return-object v0
.end method

.method public disclosureNode(Ljavafx/scene/Node;)Ljavafx/scene/control/TreeCellBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeCellBuilder;->disclosureNode:Ljavafx/scene/Node;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/TreeCellBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeCellBuilder;, "Ljavafx/scene/control/TreeCellBuilder<TT;TB;>;"
    return-object v0
.end method
