.class public Ljavafx/scene/control/TitledPaneBuilder;
.super Ljavafx/scene/control/LabeledBuilder;
.source "TitledPaneBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TitledPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/LabeledBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private animated:Z

.field private collapsible:Z

.field private content:Ljavafx/scene/Node;

.field private expanded:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/LabeledBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TitledPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TitledPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TitledPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TitledPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public animated(Z)Ljavafx/scene/control/TitledPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->animated:Z

    .line 63
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    .line 64
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/control/TitledPane;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TitledPane;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/LabeledBuilder;->applyTo(Ljavafx/scene/control/Labeled;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TitledPaneBuilder;->animated:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setAnimated(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TitledPaneBuilder;->collapsible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setCollapsible(Z)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TitledPaneBuilder;->content:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setContent(Ljavafx/scene/Node;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TitledPaneBuilder;->expanded:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TitledPaneBuilder;->build()Ljavafx/scene/control/TitledPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TitledPane;
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/TitledPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TitledPane;-><init>()V

    move-object v1, v2

    .line 105
    .local v1, "x":Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TitledPaneBuilder;->applyTo(Ljavafx/scene/control/TitledPane;)V

    .line 106
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method

.method public collapsible(Z)Ljavafx/scene/control/TitledPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->collapsible:Z

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method

.method public content(Ljavafx/scene/Node;)Ljavafx/scene/control/TitledPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->content:Ljavafx/scene/Node;

    .line 85
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    .line 86
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method

.method public expanded(Z)Ljavafx/scene/control/TitledPaneBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->expanded:Z

    .line 96
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/TitledPaneBuilder;->__set:I

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPaneBuilder;, "Ljavafx/scene/control/TitledPaneBuilder<TB;>;"
    return-object v0
.end method
