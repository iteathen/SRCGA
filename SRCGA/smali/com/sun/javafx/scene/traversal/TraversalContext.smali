.class public interface abstract Lcom/sun/javafx/scene/traversal/TraversalContext;
.super Ljava/lang/Object;
.source "TraversalContext.java"


# virtual methods
.method public abstract getAllTargetNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoot()Ljavafx/scene/Parent;
.end method

.method public abstract getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;
.end method

.method public abstract selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
.end method

.method public abstract selectInSubtree(Ljavafx/scene/Parent;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
.end method

.method public abstract selectLastInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;
.end method
