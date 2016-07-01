.class public Ljavafx/scene/control/ToggleGroupBuilder;
.super Ljava/lang/Object;
.source "ToggleGroupBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/ToggleGroupBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/ToggleGroup;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private toggles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/Toggle;",
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

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/ToggleGroupBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ToggleGroupBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ToggleGroupBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ToggleGroupBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ToggleGroup;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/ToggleGroupBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleGroupBuilder;->toggles:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 49
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroupBuilder;->build()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ToggleGroup;
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/ToggleGroup;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ToggleGroup;-><init>()V

    move-object v1, v2

    .line 74
    .local v1, "x":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ToggleGroupBuilder;->applyTo(Ljavafx/scene/control/ToggleGroup;)V

    .line 75
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    return-object v0
.end method

.method public toggles(Ljava/util/Collection;)Ljavafx/scene/control/ToggleGroupBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/Toggle;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/Toggle;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ToggleGroupBuilder;->toggles:Ljava/util/Collection;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/ToggleGroupBuilder;->__set:Z

    .line 59
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    return-object v0
.end method

.method public varargs toggles([Ljavafx/scene/control/Toggle;)Ljavafx/scene/control/ToggleGroupBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/Toggle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/Toggle;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ToggleGroupBuilder;->toggles(Ljava/util/Collection;)Ljavafx/scene/control/ToggleGroupBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroupBuilder;, "Ljavafx/scene/control/ToggleGroupBuilder<TB;>;"
    return-object v0
.end method
