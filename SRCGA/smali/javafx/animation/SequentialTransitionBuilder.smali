.class public final Ljavafx/animation/SequentialTransitionBuilder;
.super Ljavafx/animation/TransitionBuilder;
.source "SequentialTransitionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/TransitionBuilder",
        "<",
        "Ljavafx/animation/SequentialTransitionBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/SequentialTransition;",
        ">;"
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
            "Ljavafx/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljavafx/scene/Node;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/TransitionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/animation/SequentialTransitionBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/SequentialTransitionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/SequentialTransitionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/SequentialTransition;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/animation/SequentialTransition;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/animation/TransitionBuilder;->applyTo(Ljavafx/animation/Transition;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/animation/SequentialTransitionBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/SequentialTransitionBuilder;->children:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/SequentialTransitionBuilder;->node:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/animation/SequentialTransition;->setNode(Ljavafx/scene/Node;)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/SequentialTransitionBuilder;->build()Ljavafx/animation/SequentialTransition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/SequentialTransitionBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/SequentialTransition;
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    new-instance v2, Ljavafx/animation/SequentialTransition;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/animation/SequentialTransition;-><init>()V

    move-object v1, v2

    .line 86
    .local v1, "x":Ljavafx/animation/SequentialTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/SequentialTransitionBuilder;->applyTo(Ljavafx/animation/SequentialTransition;)V

    .line 87
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/SequentialTransitionBuilder;
    return-object v0
.end method

.method public children(Ljava/util/Collection;)Ljavafx/animation/SequentialTransitionBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/animation/Animation;",
            ">;)",
            "Ljavafx/animation/SequentialTransitionBuilder;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/animation/Animation;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/SequentialTransitionBuilder;->children:Ljava/util/Collection;

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/SequentialTransitionBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/animation/SequentialTransitionBuilder;->__set:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/SequentialTransitionBuilder;
    return-object v0
.end method

.method public varargs children([Ljavafx/animation/Animation;)Ljavafx/animation/SequentialTransitionBuilder;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/SequentialTransitionBuilder;->children(Ljava/util/Collection;)Ljavafx/animation/SequentialTransitionBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/SequentialTransitionBuilder;
    return-object v0
.end method

.method public node(Ljavafx/scene/Node;)Ljavafx/animation/SequentialTransitionBuilder;
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/SequentialTransitionBuilder;->node:Ljavafx/scene/Node;

    .line 77
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/animation/SequentialTransitionBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/animation/SequentialTransitionBuilder;->__set:I

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/SequentialTransitionBuilder;
    return-object v0
.end method
