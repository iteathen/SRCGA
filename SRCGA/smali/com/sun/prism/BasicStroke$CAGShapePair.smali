.class Lcom/sun/prism/BasicStroke$CAGShapePair;
.super Lcom/sun/javafx/geom/GeneralShapePair;
.source "BasicStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/BasicStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CAGShapePair"
.end annotation


# instance fields
.field private cagshape:Lcom/sun/javafx/geom/Shape;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V
    .locals 8

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke$CAGShapePair;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/Shape;
    move v3, p3

    .local v3, "type":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/geom/GeneralShapePair;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;I)V

    .line 805
    return-void
.end method


# virtual methods
.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/BasicStroke$CAGShapePair;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/BasicStroke$CAGShapePair;->cagshape:Lcom/sun/javafx/geom/Shape;

    if-nez v4, :cond_0

    .line 810
    new-instance v4, Lcom/sun/javafx/geom/Area;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/BasicStroke$CAGShapePair;->getOuterShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v2, v4

    .line 811
    .local v2, "o":Lcom/sun/javafx/geom/Area;
    new-instance v4, Lcom/sun/javafx/geom/Area;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/BasicStroke$CAGShapePair;->getInnerShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v3, v4

    .line 812
    .local v3, "i":Lcom/sun/javafx/geom/Area;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/BasicStroke$CAGShapePair;->getCombinationType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 813
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Area;->intersect(Lcom/sun/javafx/geom/Area;)V

    .line 817
    :goto_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/BasicStroke$CAGShapePair;->cagshape:Lcom/sun/javafx/geom/Shape;

    .line 819
    .end local v2    # "o":Lcom/sun/javafx/geom/Area;
    .end local v3    # "i":Lcom/sun/javafx/geom/Area;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/BasicStroke$CAGShapePair;->cagshape:Lcom/sun/javafx/geom/Shape;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/BasicStroke$CAGShapePair;
    return-object v0

    .line 815
    .restart local v0    # "this":Lcom/sun/prism/BasicStroke$CAGShapePair;
    .restart local v2    # "o":Lcom/sun/javafx/geom/Area;
    .restart local v3    # "i":Lcom/sun/javafx/geom/Area;
    :cond_1
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Area;->subtract(Lcom/sun/javafx/geom/Area;)V

    goto :goto_0
.end method
