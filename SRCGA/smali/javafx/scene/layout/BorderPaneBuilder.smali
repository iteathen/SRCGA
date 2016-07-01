.class public Ljavafx/scene/layout/BorderPaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "BorderPaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/BorderPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private bottom:Ljavafx/scene/Node;

.field private center:Ljavafx/scene/Node;

.field private left:Ljavafx/scene/Node;

.field private right:Ljavafx/scene/Node;

.field private top:Ljavafx/scene/Node;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/BorderPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/BorderPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/BorderPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/layout/BorderPane;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/BorderPane;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPaneBuilder;->bottom:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setBottom(Ljavafx/scene/Node;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPaneBuilder;->center:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setCenter(Ljavafx/scene/Node;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPaneBuilder;->left:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setLeft(Ljavafx/scene/Node;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPaneBuilder;->right:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setRight(Ljavafx/scene/Node;)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPaneBuilder;->top:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setTop(Ljavafx/scene/Node;)V

    .line 55
    :cond_4
    return-void
.end method

.method public bottom(Ljavafx/scene/Node;)Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->bottom:Ljavafx/scene/Node;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/BorderPaneBuilder;->build()Ljavafx/scene/layout/BorderPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/BorderPane;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/BorderPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/BorderPane;-><init>()V

    move-object v1, v2

    .line 117
    .local v1, "x":Ljavafx/scene/layout/BorderPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/BorderPaneBuilder;->applyTo(Ljavafx/scene/layout/BorderPane;)V

    .line 118
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/BorderPaneBuilder;->build()Ljavafx/scene/layout/BorderPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/BorderPaneBuilder;->build()Ljavafx/scene/layout/BorderPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public center(Ljavafx/scene/Node;)Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->center:Ljavafx/scene/Node;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public left(Ljavafx/scene/Node;)Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->left:Ljavafx/scene/Node;

    .line 86
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    .line 87
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public right(Ljavafx/scene/Node;)Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->right:Ljavafx/scene/Node;

    .line 97
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method

.method public top(Ljavafx/scene/Node;)Ljavafx/scene/layout/BorderPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->top:Ljavafx/scene/Node;

    .line 108
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/layout/BorderPaneBuilder;->__set:I

    .line 109
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderPaneBuilder;, "Ljavafx/scene/layout/BorderPaneBuilder<TB;>;"
    return-object v0
.end method
