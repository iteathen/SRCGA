.class public abstract Ljavafx/scene/shape/ShapeBuilder;
.super Ljavafx/scene/NodeBuilder;
.source "ShapeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;>",
        "Ljavafx/scene/NodeBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private fill:Ljavafx/scene/paint/Paint;

.field private smooth:Z

.field private stroke:Ljavafx/scene/paint/Paint;

.field private strokeDashArray:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private strokeDashOffset:D

.field private strokeLineCap:Ljavafx/scene/shape/StrokeLineCap;

.field private strokeLineJoin:Ljavafx/scene/shape/StrokeLineJoin;

.field private strokeMiterLimit:D

.field private strokeType:Ljavafx/scene/shape/StrokeType;

.field private strokeWidth:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/NodeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/shape/ShapeBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/shape/ShapeBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/shape/Shape;)V
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/shape/Shape;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/NodeBuilder;->applyTo(Ljavafx/scene/Node;)V

    .line 47
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/shape/ShapeBuilder;->__set:I

    move v3, v5

    .line 48
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 49
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 50
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 51
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 63
    :goto_1
    goto :goto_0

    .line 52
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setFill(Ljavafx/scene/paint/Paint;)V

    goto :goto_1

    .line 53
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/shape/ShapeBuilder;->smooth:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setSmooth(Z)V

    goto :goto_1

    .line 54
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->stroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setStroke(Ljavafx/scene/paint/Paint;)V

    goto :goto_1

    .line 55
    :pswitch_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/shape/Shape;->getStrokeDashArray()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeDashArray:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 56
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeDashOffset:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Shape;->setStrokeDashOffset(D)V

    goto :goto_1

    .line 57
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeLineCap:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setStrokeLineCap(Ljavafx/scene/shape/StrokeLineCap;)V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeLineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    goto :goto_1

    .line 59
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeMiterLimit:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Shape;->setStrokeMiterLimit(D)V

    goto :goto_1

    .line 60
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeType:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Shape;->setStrokeType(Ljavafx/scene/shape/StrokeType;)V

    goto :goto_1

    .line 61
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/shape/ShapeBuilder;->strokeWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Shape;->setStrokeWidth(D)V

    goto :goto_1

    .line 64
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public fill(Ljavafx/scene/paint/Paint;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->fill:Ljavafx/scene/paint/Paint;

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public smooth(Z)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/ShapeBuilder;->smooth:Z

    .line 84
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public stroke(Ljavafx/scene/paint/Paint;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->stroke:Ljavafx/scene/paint/Paint;

    .line 95
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 96
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeDashArray(Ljava/util/Collection;)Ljavafx/scene/shape/ShapeBuilder;
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
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->strokeDashArray:Ljava/util/Collection;

    .line 106
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public varargs strokeDashArray([Ljava/lang/Double;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Double;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/Double;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->strokeDashArray(Ljava/util/Collection;)Ljavafx/scene/shape/ShapeBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeDashOffset(D)Ljavafx/scene/shape/ShapeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ShapeBuilder;->strokeDashOffset:D

    .line 124
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 125
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeLineCap(Ljavafx/scene/shape/StrokeLineCap;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/StrokeLineCap;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/StrokeLineCap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->strokeLineCap:Ljavafx/scene/shape/StrokeLineCap;

    .line 135
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 136
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->strokeLineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    .line 146
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 147
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeMiterLimit(D)Ljavafx/scene/shape/ShapeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ShapeBuilder;->strokeMiterLimit:D

    .line 157
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 158
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeType(Ljavafx/scene/shape/StrokeType;)Ljavafx/scene/shape/ShapeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/StrokeType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/StrokeType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ShapeBuilder;->strokeType:Ljavafx/scene/shape/StrokeType;

    .line 168
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 169
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method

.method public strokeWidth(D)Ljavafx/scene/shape/ShapeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/shape/ShapeBuilder;->strokeWidth:D

    .line 179
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ShapeBuilder;->__set(I)V

    .line 180
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/ShapeBuilder;, "Ljavafx/scene/shape/ShapeBuilder<TB;>;"
    return-object v0
.end method
