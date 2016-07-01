.class public Ljavafx/scene/layout/StackPaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "StackPaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/StackPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private alignment:Ljavafx/geometry/Pos;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/StackPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/StackPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/StackPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/StackPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/StackPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/StackPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/layout/StackPaneBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/layout/StackPane;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/StackPane;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/StackPaneBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/StackPaneBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPaneBuilder;->build()Ljavafx/scene/layout/StackPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPaneBuilder;->build()Ljavafx/scene/layout/StackPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPaneBuilder;->build()Ljavafx/scene/layout/StackPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/StackPane;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/layout/StackPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPaneBuilder;->applyTo(Ljavafx/scene/layout/StackPane;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/StackPaneBuilder;, "Ljavafx/scene/layout/StackPaneBuilder<TB;>;"
    return-object v0
.end method
