.class public Ljavafx/scene/layout/AnchorPaneBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "AnchorPaneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/AnchorPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/AnchorPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/AnchorPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/AnchorPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/AnchorPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/AnchorPaneBuilder;->build()Ljavafx/scene/layout/AnchorPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/AnchorPane;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/AnchorPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/AnchorPane;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/layout/AnchorPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/AnchorPaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/AnchorPaneBuilder;->build()Ljavafx/scene/layout/AnchorPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/AnchorPaneBuilder;->build()Ljavafx/scene/layout/AnchorPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/AnchorPaneBuilder;, "Ljavafx/scene/layout/AnchorPaneBuilder<TB;>;"
    return-object v0
.end method
