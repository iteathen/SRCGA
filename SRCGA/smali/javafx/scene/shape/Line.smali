.class public Ljavafx/scene/shape/Line;
.super Ljavafx/scene/shape/Shape;
.source "Line.java"


# instance fields
.field private final endX:Ljavafx/beans/property/DoubleProperty;

.field private final endY:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/Line2D;

.field private final startX:Ljavafx/beans/property/DoubleProperty;

.field private final startY:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Line2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/Line2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Line;->shape:Lcom/sun/javafx/geom/Line2D;

    .line 66
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 67
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 95
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Line$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Line$1;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v2, v1, Ljavafx/scene/shape/Line;->startX:Ljavafx/beans/property/DoubleProperty;

    .line 132
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Line$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Line$2;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v2, v1, Ljavafx/scene/shape/Line;->startY:Ljavafx/beans/property/DoubleProperty;

    .line 169
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Line$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Line$3;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v2, v1, Ljavafx/scene/shape/Line;->endX:Ljavafx/beans/property/DoubleProperty;

    .line 207
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Line$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Line$4;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v2, v1, Ljavafx/scene/shape/Line;->endY:Ljavafx/beans/property/DoubleProperty;

    .line 74
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-wide/from16 v1, p1

    .local v1, "startX":D
    move-wide/from16 v3, p3

    .local v3, "startY":D
    move-wide/from16 v5, p5

    .local v5, "endX":D
    move-wide/from16 v7, p7

    .local v7, "endY":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v9, v0

    new-instance v10, Lcom/sun/javafx/geom/Line2D;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lcom/sun/javafx/geom/Line2D;-><init>()V

    iput-object v10, v9, Ljavafx/scene/shape/Line;->shape:Lcom/sun/javafx/geom/Line2D;

    .line 66
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/shape/Line;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    check-cast v9, Ljavafx/css/StyleableProperty;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 67
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/shape/Line;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    check-cast v9, Ljavafx/css/StyleableProperty;

    const/4 v10, 0x0

    sget-object v11, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v9, v10, v11}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 95
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/Line$1;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Line$1;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v10, v9, Ljavafx/scene/shape/Line;->startX:Ljavafx/beans/property/DoubleProperty;

    .line 132
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/Line$2;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Line$2;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v10, v9, Ljavafx/scene/shape/Line;->startY:Ljavafx/beans/property/DoubleProperty;

    .line 169
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/Line$3;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Line$3;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v10, v9, Ljavafx/scene/shape/Line;->endX:Ljavafx/beans/property/DoubleProperty;

    .line 207
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/Line$4;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Line$4;-><init>(Ljavafx/scene/shape/Line;)V

    iput-object v10, v9, Ljavafx/scene/shape/Line;->endY:Ljavafx/beans/property/DoubleProperty;

    .line 84
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Line;->setStartX(D)V

    .line 85
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Line;->setStartY(D)V

    .line 86
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 87
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Line;->setEndY(D)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Line;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Line;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Line;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Line;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final endXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->endX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public final endYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->endY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public final getEndX()D
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->endX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-wide v0
.end method

.method public final getEndY()D
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->endY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-wide v0
.end method

.method public final getStartX()D
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->startX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-wide v0
.end method

.method public final getStartY()D
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->startY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-wide v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/Line;
    move-object/from16 v3, p1

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v4, p2

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/shape/Line;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v26, v0

    sget-object v27, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/shape/Line;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v26, v0

    sget-object v27, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v26, v2

    .line 259
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v26

    move-object/from16 v2, v26

    .line 348
    .end local v2    # "this":Ljavafx/scene/shape/Line;
    :goto_0
    return-object v2

    .line 264
    .restart local v2    # "this":Ljavafx/scene/shape/Line;
    :cond_1
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStartX()D

    move-result-wide v26

    move-wide/from16 v5, v26

    .line 265
    .local v5, "x1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getEndX()D

    move-result-wide v26

    move-wide/from16 v7, v26

    .line 266
    .local v7, "x2":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStartY()D

    move-result-wide v26

    move-wide/from16 v9, v26

    .line 267
    .local v9, "y1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getEndY()D

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 269
    .local v11, "y2":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeWidth()D

    move-result-wide v26

    move-wide/from16 v13, v26

    .line 270
    .local v13, "wpad":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 271
    move-wide/from16 v26, v13

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v13, v26

    .line 274
    :cond_2
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 277
    move-wide/from16 v26, v13

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v13, v26

    .line 278
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 279
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v26

    move-wide/from16 v19, v26

    .line 280
    .local v19, "ddx":D
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v26

    move-wide/from16 v21, v26

    .line 281
    .local v21, "ddy":D
    move-wide/from16 v26, v5

    move-wide/from16 v28, v19

    add-double v26, v26, v28

    move-wide/from16 v5, v26

    .line 282
    move-wide/from16 v26, v9

    move-wide/from16 v28, v21

    add-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 283
    move-wide/from16 v26, v7

    move-wide/from16 v28, v19

    add-double v26, v26, v28

    move-wide/from16 v7, v26

    .line 284
    move-wide/from16 v26, v11

    move-wide/from16 v28, v21

    add-double v26, v26, v28

    move-wide/from16 v11, v26

    .line 286
    .end local v19    # "ddx":D
    .end local v21    # "ddy":D
    :cond_3
    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    cmpl-double v26, v26, v28

    if-nez v26, :cond_7

    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_7

    .line 287
    move-wide/from16 v26, v13

    move-wide/from16 v17, v26

    .line 288
    .local v17, "ypad":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    const-wide/16 v26, 0x0

    :goto_1
    move-wide/from16 v15, v26

    .line 298
    .local v15, "xpad":D
    :goto_2
    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    cmpl-double v26, v26, v28

    if-lez v26, :cond_4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v26

    .local v19, "t":D
    move-wide/from16 v26, v7

    move-wide/from16 v5, v26

    move-wide/from16 v26, v19

    move-wide/from16 v7, v26

    .line 299
    .end local v19    # "t":D
    :cond_4
    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    cmpl-double v26, v26, v28

    if-lez v26, :cond_5

    move-wide/from16 v26, v9

    move-wide/from16 v19, v26

    .restart local v19    # "t":D
    move-wide/from16 v26, v11

    move-wide/from16 v9, v26

    move-wide/from16 v26, v19

    move-wide/from16 v11, v26

    .line 301
    .end local v19    # "t":D
    :cond_5
    move-wide/from16 v26, v5

    move-wide/from16 v28, v15

    sub-double v26, v26, v28

    move-wide/from16 v5, v26

    .line 302
    move-wide/from16 v26, v9

    move-wide/from16 v28, v17

    sub-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 303
    move-wide/from16 v26, v7

    move-wide/from16 v28, v15

    add-double v26, v26, v28

    move-wide/from16 v7, v26

    .line 304
    move-wide/from16 v26, v11

    move-wide/from16 v28, v17

    add-double v26, v26, v28

    move-wide/from16 v11, v26

    .line 305
    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    move-wide/from16 v28, v9

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-wide/from16 v30, v7

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-wide/from16 v31, v11

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v26 .. v32}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v26

    move-object/from16 v3, v26

    .line 307
    move-object/from16 v26, v3

    move-object/from16 v2, v26

    goto/16 :goto_0

    .line 288
    .end local v15    # "xpad":D
    :cond_6
    move-wide/from16 v26, v13

    goto :goto_1

    .line 289
    .end local v17    # "ypad":D
    :cond_7
    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    cmpl-double v26, v26, v28

    if-nez v26, :cond_9

    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_9

    .line 290
    move-wide/from16 v26, v13

    move-wide/from16 v15, v26

    .line 291
    .restart local v15    # "xpad":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    const-wide/16 v26, 0x0

    :goto_3
    move-wide/from16 v17, v26

    .restart local v17    # "ypad":D
    goto/16 :goto_2

    .end local v17    # "ypad":D
    :cond_8
    move-wide/from16 v26, v13

    goto :goto_3

    .line 293
    .end local v15    # "xpad":D
    :cond_9
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 294
    move-wide/from16 v26, v13

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v13, v26

    .line 296
    :cond_a
    move-wide/from16 v26, v13

    move-wide/from16 v33, v26

    move-wide/from16 v26, v33

    move-wide/from16 v28, v33

    move-wide/from16 v17, v28

    .restart local v17    # "ypad":D
    move-wide/from16 v15, v26

    .restart local v15    # "xpad":D
    goto/16 :goto_2

    .line 310
    .end local v15    # "xpad":D
    .end local v17    # "ypad":D
    :cond_b
    move-wide/from16 v26, v7

    move-wide/from16 v28, v5

    sub-double v26, v26, v28

    move-wide/from16 v15, v26

    .line 311
    .local v15, "dx":D
    move-wide/from16 v26, v11

    move-wide/from16 v28, v9

    sub-double v26, v26, v28

    move-wide/from16 v17, v26

    .line 312
    .local v17, "dy":D
    move-wide/from16 v26, v15

    move-wide/from16 v28, v15

    mul-double v26, v26, v28

    move-wide/from16 v28, v17

    move-wide/from16 v30, v17

    mul-double v28, v28, v30

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v19, v26

    .line 313
    .local v19, "len":D
    move-wide/from16 v26, v19

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_c

    .line 314
    move-wide/from16 v26, v13

    move-wide/from16 v15, v26

    .line 315
    const-wide/16 v26, 0x0

    move-wide/from16 v17, v26

    .line 322
    :goto_4
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Line;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v26

    sget-object v27, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 323
    move-wide/from16 v26, v15

    move-wide/from16 v21, v26

    .line 324
    .local v21, "ecx":D
    move-wide/from16 v26, v17

    move-wide/from16 v23, v26

    .line 328
    .local v23, "ecy":D
    :goto_5
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [D

    move-object/from16 v26, v0

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x0

    move-wide/from16 v29, v5

    move-wide/from16 v31, v17

    sub-double v29, v29, v31

    move-wide/from16 v31, v21

    sub-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x1

    move-wide/from16 v29, v9

    move-wide/from16 v31, v15

    add-double v29, v29, v31

    move-wide/from16 v31, v23

    sub-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x2

    move-wide/from16 v29, v5

    move-wide/from16 v31, v17

    add-double v29, v29, v31

    move-wide/from16 v31, v21

    sub-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x3

    move-wide/from16 v29, v9

    move-wide/from16 v31, v15

    sub-double v29, v29, v31

    move-wide/from16 v31, v23

    sub-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x4

    move-wide/from16 v29, v7

    move-wide/from16 v31, v17

    add-double v29, v29, v31

    move-wide/from16 v31, v21

    add-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x5

    move-wide/from16 v29, v11

    move-wide/from16 v31, v15

    sub-double v29, v29, v31

    move-wide/from16 v31, v23

    add-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x6

    move-wide/from16 v29, v7

    move-wide/from16 v31, v17

    sub-double v29, v29, v31

    move-wide/from16 v31, v21

    add-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x7

    move-wide/from16 v29, v11

    move-wide/from16 v31, v15

    add-double v29, v29, v31

    move-wide/from16 v31, v23

    add-double v29, v29, v31

    aput-wide v29, v27, v28

    move-object/from16 v25, v26

    .line 333
    .local v25, "corners":[D
    move-object/from16 v26, v4

    move-object/from16 v27, v25

    const/16 v28, 0x0

    move-object/from16 v29, v25

    const/16 v30, 0x0

    const/16 v31, 0x4

    invoke-virtual/range {v26 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([DI[DII)V

    .line 334
    move-object/from16 v26, v25

    const/16 v27, 0x0

    aget-wide v26, v26, v27

    move-object/from16 v28, v25

    const/16 v29, 0x2

    aget-wide v28, v28, v29

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-object/from16 v28, v25

    const/16 v29, 0x4

    aget-wide v28, v28, v29

    move-object/from16 v30, v25

    const/16 v31, 0x6

    aget-wide v30, v30, v31

    .line 335
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    .line 334
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v5, v26

    .line 336
    move-object/from16 v26, v25

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    move-object/from16 v28, v25

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-object/from16 v28, v25

    const/16 v29, 0x5

    aget-wide v28, v28, v29

    move-object/from16 v30, v25

    const/16 v31, 0x7

    aget-wide v30, v30, v31

    .line 337
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    .line 336
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v9, v26

    .line 338
    move-object/from16 v26, v25

    const/16 v27, 0x0

    aget-wide v26, v26, v27

    move-object/from16 v28, v25

    const/16 v29, 0x2

    aget-wide v28, v28, v29

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-object/from16 v28, v25

    const/16 v29, 0x4

    aget-wide v28, v28, v29

    move-object/from16 v30, v25

    const/16 v31, 0x6

    aget-wide v30, v30, v31

    .line 339
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    .line 338
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v7, v26

    .line 340
    move-object/from16 v26, v25

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    move-object/from16 v28, v25

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-object/from16 v28, v25

    const/16 v29, 0x5

    aget-wide v28, v28, v29

    move-object/from16 v30, v25

    const/16 v31, 0x7

    aget-wide v30, v30, v31

    .line 341
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    .line 340
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 342
    move-wide/from16 v26, v5

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    sub-double v26, v26, v28

    move-wide/from16 v5, v26

    .line 343
    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    sub-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 344
    move-wide/from16 v26, v7

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v7, v26

    .line 345
    move-wide/from16 v26, v11

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v11, v26

    .line 346
    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    move-wide/from16 v28, v9

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-wide/from16 v30, v7

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-wide/from16 v31, v11

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v26 .. v32}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v26

    move-object/from16 v3, v26

    .line 348
    move-object/from16 v26, v3

    move-object/from16 v2, v26

    goto/16 :goto_0

    .line 317
    .end local v21    # "ecx":D
    .end local v23    # "ecy":D
    .end local v25    # "corners":[D
    :cond_c
    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    mul-double v26, v26, v28

    move-wide/from16 v28, v19

    div-double v26, v26, v28

    move-wide/from16 v15, v26

    .line 318
    move-wide/from16 v26, v13

    move-wide/from16 v28, v17

    mul-double v26, v26, v28

    move-wide/from16 v28, v19

    div-double v26, v26, v28

    move-wide/from16 v17, v26

    goto/16 :goto_4

    .line 326
    :cond_d
    const-wide/16 v26, 0x0

    move-wide/from16 v33, v26

    move-wide/from16 v26, v33

    move-wide/from16 v28, v33

    move-wide/from16 v23, v28

    .restart local v23    # "ecy":D
    move-wide/from16 v21, v26

    .restart local v21    # "ecx":D
    goto/16 :goto_5
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Line2D;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->shape:Lcom/sun/javafx/geom/Line2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Line;->getStartX()D

    move-result-wide v2

    double-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Line;->getStartY()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Line;->getEndX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Line;->getEndY()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/javafx/geom/Line2D;->setLine(FFFF)V

    .line 359
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->shape:Lcom/sun/javafx/geom/Line2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Line;->impl_configShape()Lcom/sun/javafx/geom/Line2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGLine;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGLine;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method protected impl_cssGetFillInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method protected impl_cssGetStrokeInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 371
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Line;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Line;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGLine;

    move-object v1, v2

    .line 373
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGLine;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Line;->getStartX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 374
    invoke-virtual {v4}, Ljavafx/scene/shape/Line;->getStartY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 375
    invoke-virtual {v5}, Ljavafx/scene/shape/Line;->getEndX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 376
    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getEndY()D

    move-result-wide v6

    double-to-float v6, v6

    .line 373
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGLine;->updateLine(FFFF)V

    .line 378
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGLine;
    :cond_0
    return-void
.end method

.method public final setEndX(D)V
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Line;->endX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 192
    return-void
.end method

.method public final setEndY(D)V
    .locals 7

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Line;->endY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 228
    return-void
.end method

.method public final setStartX(D)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Line;->startX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 117
    return-void
.end method

.method public final setStartY(D)V
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Line;->startY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 154
    return-void
.end method

.method public final startXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->startX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public final startYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line;->startY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Line;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Line["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 418
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Line;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 419
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 420
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 423
    :cond_0
    move-object v5, v2

    const-string v6, "startX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getStartX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    move-object v5, v2

    const-string v6, ", startY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getStartY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    move-object v5, v2

    const-string v6, ", endX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getEndX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 426
    move-object v5, v2

    const-string v6, ", endY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getEndY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Line;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 429
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 430
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 431
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Line;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 434
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Line;
    return-object v1
.end method
