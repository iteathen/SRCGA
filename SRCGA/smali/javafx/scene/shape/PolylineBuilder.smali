.class public Ljavafx/scene/shape/PolylineBuilder;
.super Ljavafx/scene/shape/ShapeBuilder;
.source "PolylineBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/PolylineBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/Polyline;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private points:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Double;",
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

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/ShapeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/PolylineBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/PolylineBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/PolylineBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/PolylineBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/Polyline;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/Polyline;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->applyTo(Ljavafx/scene/shape/Shape;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/PolylineBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/PolylineBuilder;->points:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/PolylineBuilder;->build()Ljavafx/scene/shape/Polyline;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/Polyline;
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/Polyline;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/Polyline;-><init>()V

    move-object v1, v2

    .line 75
    .local v1, "x":Ljavafx/scene/shape/Polyline;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/PolylineBuilder;->applyTo(Ljavafx/scene/shape/Polyline;)V

    .line 76
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    return-object v0
.end method

.method public points(Ljava/util/Collection;)Ljavafx/scene/shape/PolylineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Double;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/PolylineBuilder;->points:Ljava/util/Collection;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/PolylineBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    return-object v0
.end method

.method public varargs points([Ljava/lang/Double;)Ljavafx/scene/shape/PolylineBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Double;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Double;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/PolylineBuilder;->points(Ljava/util/Collection;)Ljavafx/scene/shape/PolylineBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/PolylineBuilder;, "Ljavafx/scene/shape/PolylineBuilder<TB;>;"
    return-object v0
.end method
