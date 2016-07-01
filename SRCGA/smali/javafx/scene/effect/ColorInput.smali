.class public Ljavafx/scene/effect/ColorInput;
.super Ljavafx/scene/effect/Effect;
.source "ColorInput.java"


# instance fields
.field private height:Ljavafx/beans/property/DoubleProperty;

.field private paint:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDLjavafx/scene/paint/Paint;)V
    .locals 15

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "width":D
    move-wide/from16 v8, p7

    .local v8, "height":D
    move-object/from16 v10, p9

    .local v10, "paint":Ljavafx/scene/paint/Paint;
    move-object v11, v1

    invoke-direct {v11}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 72
    move-object v11, v1

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/ColorInput;->setX(D)V

    .line 73
    move-object v11, v1

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/ColorInput;->setY(D)V

    .line 74
    move-object v11, v1

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/ColorInput;->setWidth(D)V

    .line 75
    move-object v11, v1

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/ColorInput;->setHeight(D)V

    .line 76
    move-object v11, v1

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/ColorInput;->setPaint(Ljavafx/scene/paint/Paint;)V

    .line 77
    return-void
.end method

.method private getPaintInternal()Ljavafx/scene/paint/Paint;
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/ColorInput;->getPaint()Ljavafx/scene/paint/Paint;

    move-result-object v2

    move-object v1, v2

    .line 314
    .local v1, "p":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final getHeight()D
    .locals 4

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPaint()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->paint:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->paint:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 239
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 147
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ColorInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ColorInput;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 290
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorInput$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorInput$5;-><init>(Ljavafx/scene/effect/ColorInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorInput;->height:Ljavafx/beans/property/DoubleProperty;

    .line 309
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 3

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return v0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ColorInput;
    new-instance v2, Ljavafx/scene/effect/ColorInput;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/ColorInput;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorInput;->getY()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/ColorInput;->getWidth()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/effect/ColorInput;->getHeight()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/effect/ColorInput;->getPaint()Ljavafx/scene/paint/Paint;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/effect/ColorInput;-><init>(DDDDLjavafx/scene/paint/Paint;)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v1
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ColorInput;->impl_createImpl()Lcom/sun/scenario/effect/Flood;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/Flood;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    new-instance v1, Lcom/sun/scenario/effect/Flood;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    .line 82
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v3

    sget-object v4, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/Flood;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    new-instance v6, Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    .line 344
    invoke-virtual {v8}, Ljavafx/scene/effect/ColorInput;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/ColorInput;->getY()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    .line 345
    invoke-virtual {v10}, Ljavafx/scene/effect/ColorInput;->getX()D

    move-result-wide v10

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/effect/ColorInput;->getWidth()D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object v11, v0

    .line 346
    invoke-virtual {v11}, Ljavafx/scene/effect/ColorInput;->getY()D

    move-result-wide v11

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/effect/ColorInput;->getHeight()D

    move-result-wide v13

    add-double/2addr v11, v13

    double-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v5, v6

    .line 347
    .local v5, "ret":Lcom/sun/javafx/geom/RectBounds;
    move-object v6, v2

    move-object v7, v5

    invoke-static {v6, v7}, Ljavafx/scene/effect/ColorInput;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method impl_update()V
    .locals 13

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v2, v0

    .line 320
    invoke-virtual {v2}, Ljavafx/scene/effect/ColorInput;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/Flood;

    move-object v1, v2

    .line 321
    .local v1, "peer":Lcom/sun/scenario/effect/Flood;
    move-object v2, v1

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v3

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/ColorInput;->getPaintInternal()Ljavafx/scene/paint/Paint;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Flood;->setPaint(Ljava/lang/Object;)V

    .line 322
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    .line 323
    invoke-virtual {v5}, Ljavafx/scene/effect/ColorInput;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ColorInput;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 324
    invoke-virtual {v7}, Ljavafx/scene/effect/ColorInput;->getX()D

    move-result-wide v7

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/ColorInput;->getWidth()D

    move-result-wide v9

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    .line 325
    invoke-virtual {v8}, Ljavafx/scene/effect/ColorInput;->getY()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/ColorInput;->getHeight()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    .line 322
    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Flood;->setFloodBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 326
    return-void
.end method

.method public final paintProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->paint:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorInput$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/ColorInput$1;-><init>(Ljavafx/scene/effect/ColorInput;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorInput;->paint:Ljavafx/beans/property/ObjectProperty;

    .line 125
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->paint:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorInput;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 282
    return-void
.end method

.method public final setPaint(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/ColorInput;->paintProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorInput;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 236
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorInput;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 144
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ColorInput;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 190
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 244
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorInput$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorInput$4;-><init>(Ljavafx/scene/effect/ColorInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorInput;->width:Ljavafx/beans/property/DoubleProperty;

    .line 263
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 152
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorInput$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorInput$2;-><init>(Ljavafx/scene/effect/ColorInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorInput;->x:Ljavafx/beans/property/DoubleProperty;

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 198
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ColorInput$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ColorInput$3;-><init>(Ljavafx/scene/effect/ColorInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ColorInput;->y:Ljavafx/beans/property/DoubleProperty;

    .line 217
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput;
    return-object v0
.end method
