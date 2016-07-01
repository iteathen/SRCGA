.class public Ljavafx/scene/shape/SVGPathBuilder;
.super Ljavafx/scene/shape/ShapeBuilder;
.source "SVGPathBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/SVGPathBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/SVGPath;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private content:Ljava/lang/String;

.field private fillRule:Ljavafx/scene/shape/FillRule;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/ShapeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/SVGPathBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/SVGPathBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/SVGPathBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/SVGPathBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/SVGPath;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/SVGPath;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->applyTo(Ljavafx/scene/shape/Shape;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/shape/SVGPathBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/SVGPathBuilder;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/SVGPath;->setContent(Ljava/lang/String;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/SVGPathBuilder;->fillRule:Ljavafx/scene/shape/FillRule;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/SVGPath;->setFillRule(Ljavafx/scene/shape/FillRule;)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/SVGPathBuilder;->build()Ljavafx/scene/shape/SVGPath;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/SVGPath;
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/SVGPath;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/SVGPath;-><init>()V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/scene/shape/SVGPath;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/SVGPathBuilder;->applyTo(Ljavafx/scene/shape/SVGPath;)V

    .line 82
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    return-object v0
.end method

.method public content(Ljava/lang/String;)Ljavafx/scene/shape/SVGPathBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/SVGPathBuilder;->content:Ljava/lang/String;

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/shape/SVGPathBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/shape/SVGPathBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    return-object v0
.end method

.method public fillRule(Ljavafx/scene/shape/FillRule;)Ljavafx/scene/shape/SVGPathBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/FillRule;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/FillRule;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/SVGPathBuilder;->fillRule:Ljavafx/scene/shape/FillRule;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/shape/SVGPathBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/shape/SVGPathBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/SVGPathBuilder;, "Ljavafx/scene/shape/SVGPathBuilder<TB;>;"
    return-object v0
.end method
