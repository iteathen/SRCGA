.class public Ljavafx/scene/GroupBuilder;
.super Ljavafx/scene/ParentBuilder;
.source "GroupBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/GroupBuilder",
        "<TB;>;>",
        "Ljavafx/scene/ParentBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/Group;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private autoSizeChildren:Z

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

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ParentBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/GroupBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/GroupBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/GroupBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/GroupBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/Group;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Group;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/ParentBuilder;->applyTo(Ljavafx/scene/Parent;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/GroupBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/GroupBuilder;->autoSizeChildren:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setAutoSizeChildren(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/GroupBuilder;->children:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 52
    :cond_1
    return-void
.end method

.method public autoSizeChildren(Z)Ljavafx/scene/GroupBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/GroupBuilder;->autoSizeChildren:Z

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/GroupBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/GroupBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/GroupBuilder;->build()Ljavafx/scene/Group;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/Group;
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/Group;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/Group;-><init>()V

    move-object v1, v2

    .line 88
    .local v1, "x":Ljavafx/scene/Group;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/GroupBuilder;->applyTo(Ljavafx/scene/Group;)V

    .line 89
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    return-object v0
.end method

.method public children(Ljava/util/Collection;)Ljavafx/scene/GroupBuilder;
    .locals 6
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
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/Node;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/GroupBuilder;->children:Ljava/util/Collection;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/GroupBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/GroupBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    return-object v0
.end method

.method public varargs children([Ljavafx/scene/Node;)Ljavafx/scene/GroupBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/GroupBuilder;->children(Ljava/util/Collection;)Ljavafx/scene/GroupBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/GroupBuilder;, "Ljavafx/scene/GroupBuilder<TB;>;"
    return-object v0
.end method
