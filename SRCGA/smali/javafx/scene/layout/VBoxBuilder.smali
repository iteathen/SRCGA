.class public Ljavafx/scene/layout/VBoxBuilder;
.super Ljavafx/scene/layout/PaneBuilder;
.source "VBoxBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/layout/VBoxBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/PaneBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private alignment:Ljavafx/geometry/Pos;

.field private fillWidth:Z

.field private spacing:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/PaneBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/layout/VBoxBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/layout/VBoxBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/layout/VBoxBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/VBoxBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/layout/VBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/VBoxBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/layout/VBox;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/layout/VBox;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/layout/PaneBuilder;->applyTo(Ljavafx/scene/layout/Pane;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/VBoxBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/VBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/layout/VBoxBuilder;->fillWidth:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/VBox;->setFillWidth(Z)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/VBoxBuilder;->spacing:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 53
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/VBoxBuilder;->build()Ljavafx/scene/layout/VBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/VBoxBuilder;->build()Ljavafx/scene/layout/VBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/VBoxBuilder;->build()Ljavafx/scene/layout/VBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/layout/VBox;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/layout/VBox;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/layout/VBox;-><init>()V

    move-object v1, v2

    .line 93
    .local v1, "x":Ljavafx/scene/layout/VBox;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/VBoxBuilder;->applyTo(Ljavafx/scene/layout/VBox;)V

    .line 94
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public fillWidth(Z)Ljavafx/scene/layout/VBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/layout/VBoxBuilder;->fillWidth:Z

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method

.method public spacing(D)Ljavafx/scene/layout/VBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/VBoxBuilder;->spacing:D

    .line 84
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/layout/VBoxBuilder;->__set:I

    .line 85
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/VBoxBuilder;, "Ljavafx/scene/layout/VBoxBuilder<TB;>;"
    return-object v0
.end method
