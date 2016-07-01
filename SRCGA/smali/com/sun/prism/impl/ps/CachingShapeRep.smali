.class public Lcom/sun/prism/impl/ps/CachingShapeRep;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"

# interfaces
.implements Lcom/sun/prism/shape/ShapeRep;


# instance fields
.field private drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

.field private fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method createState()Lcom/sun/prism/impl/ps/CachingShapeRepState;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    new-instance v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-eqz v1, :cond_0

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->dispose()V

    .line 119
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    .line 121
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-eqz v1, :cond_1

    .line 122
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    invoke-virtual {v1}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->dispose()V

    .line 123
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    .line 125
    :cond_1
    return-void
.end method

.method public draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-nez v4, :cond_0

    .line 111
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/impl/ps/CachingShapeRep;->createState()Lcom/sun/prism/impl/ps/CachingShapeRepState;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    .line 113
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    check-cast v7, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Graphics;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->render(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/BasicStroke;)V

    .line 114
    return-void
.end method

.method public fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 9

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-nez v4, :cond_0

    .line 104
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/impl/ps/CachingShapeRep;->createState()Lcom/sun/prism/impl/ps/CachingShapeRepState;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    .line 106
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    check-cast v7, Lcom/sun/javafx/geom/RectBounds;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->render(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/BasicStroke;)V

    .line 107
    return-void
.end method

.method public invalidate(Lcom/sun/prism/shape/ShapeRep$InvalidationType;)V
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/shape/ShapeRep$InvalidationType;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRep;->fillState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    invoke-virtual {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->invalidate()V

    .line 97
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    if-eqz v2, :cond_1

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRep;->drawState:Lcom/sun/prism/impl/ps/CachingShapeRepState;

    invoke-virtual {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->invalidate()V

    .line 100
    :cond_1
    return-void
.end method

.method public is3DCapable()Z
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRep;
    return v0
.end method
