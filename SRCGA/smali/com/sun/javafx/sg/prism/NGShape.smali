.class public abstract Lcom/sun/javafx/sg/prism/NGShape;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/NGShape$Mode;
    }
.end annotation


# static fields
.field static final THRESHOLD:D = 0.00390625


# instance fields
.field private cached3D:Lcom/sun/prism/RTTexture;

.field private cachedH:D

.field private cachedW:D

.field protected drawPaint:Lcom/sun/prism/paint/Paint;

.field protected drawStroke:Lcom/sun/prism/BasicStroke;

.field protected fillPaint:Lcom/sun/prism/paint/Paint;

.field protected mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

.field protected shapeRep:Lcom/sun/prism/shape/ShapeRep;

.field private smooth:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 59
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    return-void
.end method

.method private static hypot(DDD)D
    .locals 12

    .prologue
    .line 181
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "z":D
    move-wide v6, v0

    move-wide v8, v0

    mul-double/2addr v6, v8

    move-wide v8, v2

    move-wide v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "x":D
    return-wide v0
.end method


# virtual methods
.method protected createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->createPathRep()Lcom/sun/prism/shape/ShapeRep;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return-object v0
.end method

.method protected geometryChanged()V
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->geometryChanged()V

    .line 317
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->shapeRep:Lcom/sun/prism/shape/ShapeRep;

    if-eqz v1, :cond_0

    .line 318
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->shapeRep:Lcom/sun/prism/shape/ShapeRep;

    sget-object v2, Lcom/sun/prism/shape/ShapeRep$InvalidationType;->LOCATION_AND_GEOMETRY:Lcom/sun/prism/shape/ShapeRep$InvalidationType;

    invoke-interface {v1, v2}, Lcom/sun/prism/shape/ShapeRep;->invalidate(Lcom/sun/prism/shape/ShapeRep$InvalidationType;)V

    .line 322
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_1

    .line 323
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 324
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    .line 326
    :cond_1
    return-void
.end method

.method public getFillPaint()Lcom/sun/prism/paint/Paint;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return-object v0
.end method

.method public getMode()Lcom/sun/javafx/sg/prism/NGShape$Mode;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return-object v0
.end method

.method public abstract getShape()Lcom/sun/javafx/geom/Shape;
.end method

.method protected getStrokeShape()Lcom/sun/javafx/geom/Shape;
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return-object v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGShape;->getMode()Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-result-object v3

    move-object v1, v3

    .line 331
    .local v1, "mode":Lcom/sun/javafx/sg/prism/NGShape$Mode;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGShape;->getFillPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v3

    move-object v2, v3

    .line 332
    .local v2, "fillPaint":Lcom/sun/prism/paint/Paint;
    move-object v3, v0

    invoke-super {v3}, Lcom/sun/javafx/sg/prism/NGNode;->hasOpaqueRegion()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 334
    invoke-virtual {v3}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected hasOverlappingContents()Z
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmooth()Z
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->smooth:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGShape;
    return v0
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 32

    .prologue
    .line 191
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 192
    .line 263
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sun/prism/PrinterGraphics;

    move/from16 v22, v0

    move/from16 v5, v22

    .line 200
    .local v5, "printing":Z
    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v22

    move-object/from16 v6, v22

    .line 201
    .local v6, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v22

    if-nez v22, :cond_4

    const/16 v22, 0x1

    :goto_1
    move/from16 v7, v22

    .line 207
    .local v7, "needs3D":Z
    move/from16 v22, v7

    if-eqz v22, :cond_7

    .line 208
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v22

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v24

    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v26

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/sg/prism/NGShape;->hypot(DDD)D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 209
    .local v8, "scaleX":D
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v22

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v24

    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v26

    invoke-static/range {v22 .. v27}, Lcom/sun/javafx/sg/prism/NGShape;->hypot(DDD)D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 210
    .local v10, "scaleY":D
    move-wide/from16 v22, v8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 211
    .local v12, "scaledW":D
    move-wide/from16 v22, v10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 212
    .local v14, "scaledH":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 213
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->lock()V

    .line 214
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v22

    if-nez v22, :cond_1

    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cachedW:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    .line 215
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v24, v14

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cachedH:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x3f70000000000000L    # 0.00390625

    cmpl-double v22, v22, v24

    if-lez v22, :cond_2

    .line 217
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 218
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 219
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    .line 224
    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 225
    move-wide/from16 v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    .line 226
    .local v16, "w":I
    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v17, v22

    .line 227
    .local v17, "h":I
    move-object/from16 v22, v3

    move-wide/from16 v23, v12

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/sun/javafx/sg/prism/NGShape;->cachedW:D

    .line 228
    move-object/from16 v22, v3

    move-wide/from16 v23, v14

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/sun/javafx/sg/prism/NGShape;->cachedH:D

    .line 231
    move/from16 v22, v16

    if-lez v22, :cond_3

    move/from16 v22, v17

    if-gtz v22, :cond_5

    .line 232
    :cond_3
    goto/16 :goto_0

    .line 201
    .end local v7    # "needs3D":Z
    .end local v8    # "scaleX":D
    .end local v10    # "scaleY":D
    .end local v12    # "scaledW":D
    .end local v14    # "scaledH":D
    .end local v16    # "w":I
    .end local v17    # "h":I
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 234
    .restart local v7    # "needs3D":Z
    .restart local v8    # "scaleX":D
    .restart local v10    # "scaleY":D
    .restart local v12    # "scaledW":D
    .restart local v14    # "scaledH":D
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v23

    move/from16 v24, v16

    move/from16 v25, v17

    sget-object v26, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    const/16 v27, 0x0

    invoke-interface/range {v23 .. v27}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    .line 237
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/NGShape;->isSmooth()Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/RTTexture;->setLinearFiltering(Z)V

    .line 238
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 239
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v22

    move-object/from16 v18, v22

    .line 242
    .local v18, "textureGraphics":Lcom/sun/prism/Graphics;
    move-object/from16 v22, v18

    move-wide/from16 v23, v8

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 243
    move-object/from16 v22, v18

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 244
    move-object/from16 v22, v3

    move-object/from16 v23, v18

    move/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/sg/prism/NGShape;->renderContent2D(Lcom/sun/prism/Graphics;Z)V

    .line 247
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "textureGraphics":Lcom/sun/prism/Graphics;
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v22

    move/from16 v16, v22

    .line 248
    .local v16, "rtWidth":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v22

    move/from16 v17, v22

    .line 249
    .local v17, "rtHeight":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v22

    move/from16 v18, v22

    .line 250
    .local v18, "dx0":F
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v19, v22

    .line 251
    .local v19, "dy0":F
    move/from16 v22, v18

    move/from16 v23, v16

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v25, v8

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v20, v22

    .line 252
    .local v20, "dx1":F
    move/from16 v22, v19

    move/from16 v23, v17

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v25, v10

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v21, v22

    .line 253
    .local v21, "dy1":F
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v23, v0

    move/from16 v24, v18

    move/from16 v25, v19

    move/from16 v26, v20

    move/from16 v27, v21

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v30, v16

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v17

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-interface/range {v22 .. v31}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 254
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 255
    .line 263
    .end local v8    # "scaleX":D
    .end local v10    # "scaleY":D
    .end local v12    # "scaledW":D
    .end local v14    # "scaledH":D
    .end local v16    # "rtWidth":I
    .end local v17    # "rtHeight":I
    .end local v18    # "dx0":F
    .end local v19    # "dy0":F
    .end local v20    # "dx1":F
    .end local v21    # "dy1":F
    :goto_2
    goto/16 :goto_0

    .line 256
    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 257
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 258
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    .line 261
    :cond_8
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/sg/prism/NGShape;->renderContent2D(Lcom/sun/prism/Graphics;Z)V

    goto :goto_2
.end method

.method protected renderContent2D(Lcom/sun/prism/Graphics;Z)V
    .locals 11

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move v2, p2

    .local v2, "printing":Z
    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->isAntialiasedShape()Z

    move-result v7

    move v3, v7

    .line 276
    .local v3, "saveAA":Z
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGShape;->isSmooth()Z

    move-result v7

    move v4, v7

    .line 277
    .local v4, "isAA":Z
    move v7, v4

    move v8, v3

    if-eq v7, v8, :cond_0

    .line 278
    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setAntialiasedShape(Z)V

    .line 281
    :cond_0
    move v7, v2

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_0
    move-object v5, v7

    .line 282
    .local v5, "localShapeRep":Lcom/sun/prism/shape/ShapeRep;
    move-object v7, v5

    if-nez v7, :cond_1

    .line 283
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGShape;->createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;

    move-result-object v7

    move-object v5, v7

    .line 285
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGShape;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v7

    move-object v6, v7

    .line 286
    .local v6, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v8, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v7, v8, :cond_2

    .line 287
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 288
    move-object v7, v5

    move-object v8, v1

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/prism/shape/ShapeRep;->fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V

    .line 290
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v8, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    invoke-virtual {v7}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 291
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGShape;->drawPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 292
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 293
    move-object v7, v5

    move-object v8, v1

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGShape;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/prism/shape/ShapeRep;->draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V

    .line 296
    :cond_3
    move v7, v4

    move v8, v3

    if-eq v7, v8, :cond_4

    .line 297
    move-object v7, v1

    move v8, v3

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setAntialiasedShape(Z)V

    .line 299
    :cond_4
    move v7, v2

    if-nez v7, :cond_5

    .line 300
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/javafx/sg/prism/NGShape;->shapeRep:Lcom/sun/prism/shape/ShapeRep;

    .line 302
    :cond_5
    return-void

    .line 281
    .end local v5    # "localShapeRep":Lcom/sun/prism/shape/ShapeRep;
    .end local v6    # "shape":Lcom/sun/javafx/geom/Shape;
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGShape;->shapeRep:Lcom/sun/prism/shape/ShapeRep;

    goto :goto_0
.end method

.method public setDrawPaint(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "drawPaint":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGShape;->drawPaint:Lcom/sun/prism/paint/Paint;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape;->drawPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape;->drawPaint:Lcom/sun/prism/paint/Paint;

    .line 102
    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Paint;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape;->drawPaint:Lcom/sun/prism/paint/Paint;

    .line 105
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->visualsChanged()V

    .line 107
    :cond_1
    return-void
.end method

.method public setDrawStroke(FLjavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V
    .locals 20

    .prologue
    .line 123
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move/from16 v1, p1

    .local v1, "strokeWidth":F
    move-object/from16 v2, p2

    .local v2, "strokeType":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v3, p3

    .local v3, "lineCap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v4, p4

    .local v4, "lineJoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v5, p5

    .local v5, "strokeMiterLimit":F
    move-object/from16 v6, p6

    .local v6, "strokeDashArray":[F
    move/from16 v7, p7

    .local v7, "strokeDashOffset":F
    move-object v11, v2

    sget-object v12, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v11, v12, :cond_0

    .line 124
    const/4 v11, 0x0

    move v8, v11

    .line 132
    .local v8, "type":I
    :goto_0
    move-object v11, v3

    sget-object v12, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    if-ne v11, v12, :cond_2

    .line 133
    const/4 v11, 0x0

    move v9, v11

    .line 141
    .local v9, "cap":I
    :goto_1
    move-object v11, v4

    sget-object v12, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    if-ne v11, v12, :cond_4

    .line 142
    const/4 v11, 0x2

    move v10, v11

    .line 149
    .local v10, "join":I
    :goto_2
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    if-nez v11, :cond_6

    .line 150
    move-object v11, v0

    new-instance v12, Lcom/sun/prism/BasicStroke;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move v14, v8

    move v15, v1

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lcom/sun/prism/BasicStroke;-><init>(IFIIF)V

    iput-object v12, v11, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    .line 154
    :goto_3
    move-object v11, v6

    array-length v11, v11

    if-lez v11, :cond_7

    .line 155
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    move-object v12, v6

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/sun/prism/BasicStroke;->set([FF)V

    .line 160
    :goto_4
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGShape;->geometryChanged()V

    .line 161
    return-void

    .line 125
    .end local v8    # "type":I
    .end local v9    # "cap":I
    .end local v10    # "join":I
    :cond_0
    move-object v11, v2

    sget-object v12, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v11, v12, :cond_1

    .line 126
    const/4 v11, 0x1

    move v8, v11

    .restart local v8    # "type":I
    goto :goto_0

    .line 128
    .end local v8    # "type":I
    :cond_1
    const/4 v11, 0x2

    move v8, v11

    .restart local v8    # "type":I
    goto :goto_0

    .line 134
    :cond_2
    move-object v11, v3

    sget-object v12, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    if-ne v11, v12, :cond_3

    .line 135
    const/4 v11, 0x2

    move v9, v11

    .restart local v9    # "cap":I
    goto :goto_1

    .line 137
    .end local v9    # "cap":I
    :cond_3
    const/4 v11, 0x1

    move v9, v11

    .restart local v9    # "cap":I
    goto :goto_1

    .line 143
    :cond_4
    move-object v11, v4

    sget-object v12, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    if-ne v11, v12, :cond_5

    .line 144
    const/4 v11, 0x0

    move v10, v11

    .restart local v10    # "join":I
    goto :goto_2

    .line 146
    .end local v10    # "join":I
    :cond_5
    const/4 v11, 0x1

    move v10, v11

    .restart local v10    # "join":I
    goto :goto_2

    .line 152
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    move v12, v8

    move v13, v1

    move v14, v9

    move v15, v10

    move/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    goto :goto_3

    .line 157
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    const/4 v12, 0x0

    check-cast v12, [F

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sun/prism/BasicStroke;->set([FF)V

    goto :goto_4
.end method

.method public setDrawStroke(Lcom/sun/prism/BasicStroke;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "drawStroke":Lcom/sun/prism/BasicStroke;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 111
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape;->drawStroke:Lcom/sun/prism/BasicStroke;

    .line 112
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->geometryChanged()V

    .line 114
    :cond_0
    return-void
.end method

.method public setFillPaint(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "fillPaint":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 88
    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Paint;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 91
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->visualsChanged()V

    .line 92
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->invalidateOpaqueRegion()V

    .line 94
    :cond_1
    return-void
.end method

.method public setMode(Lcom/sun/javafx/sg/prism/NGShape$Mode;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/javafx/sg/prism/NGShape$Mode;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v2, v3, :cond_0

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGShape;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    .line 66
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->geometryChanged()V

    .line 68
    :cond_0
    return-void
.end method

.method public setSmooth(Z)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move v1, p1

    .local v1, "smooth":Z
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->forceNonAntialiasedShape:Z

    if-nez v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 76
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/sg/prism/NGShape;->smooth:Z

    if-eq v2, v3, :cond_0

    .line 77
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGShape;->smooth:Z

    .line 78
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGShape;->visualsChanged()V

    .line 80
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected visualsChanged()V
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 174
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 176
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGShape;->cached3D:Lcom/sun/prism/RTTexture;

    .line 178
    :cond_0
    return-void
.end method
