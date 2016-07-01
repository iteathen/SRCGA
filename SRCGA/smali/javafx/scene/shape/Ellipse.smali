.class public Ljavafx/scene/shape/Ellipse;
.super Ljavafx/scene/shape/Shape;
.source "Ellipse.java"


# static fields
.field private static final NON_RECTILINEAR_TYPE_MASK:I = -0x50


# instance fields
.field private centerX:Ljavafx/beans/property/DoubleProperty;

.field private centerY:Ljavafx/beans/property/DoubleProperty;

.field private final radiusX:Ljavafx/beans/property/DoubleProperty;

.field private final radiusY:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/Ellipse2D;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 57
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Ellipse;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 182
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Ellipse$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Ellipse$3;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v2, v1, Ljavafx/scene/shape/Ellipse;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Ellipse$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Ellipse$4;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v2, v1, Ljavafx/scene/shape/Ellipse;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 70
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-wide v1, p1

    .local v1, "radiusX":D
    move-wide v3, p3

    .local v3, "radiusY":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 57
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v6, v5, Ljavafx/scene/shape/Ellipse;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 182
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Ellipse$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/scene/shape/Ellipse$3;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v6, v5, Ljavafx/scene/shape/Ellipse;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 218
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Ellipse$4;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/scene/shape/Ellipse$4;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v6, v5, Ljavafx/scene/shape/Ellipse;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 78
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Ellipse;->setRadiusX(D)V

    .line 79
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Ellipse;->setRadiusY(D)V

    .line 80
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-wide/from16 v1, p1

    .local v1, "centerX":D
    move-wide/from16 v3, p3

    .local v3, "centerY":D
    move-wide/from16 v5, p5

    .local v5, "radiusX":D
    move-wide/from16 v7, p7

    .local v7, "radiusY":D
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v7

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/shape/Ellipse;-><init>(DD)V

    .line 91
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Ellipse;->setCenterX(D)V

    .line 92
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Ellipse;->setCenterY(D)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Ellipse;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Ellipse;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Ellipse;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Ellipse;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Ellipse;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Ellipse;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Ellipse;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Ellipse;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final centerXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 114
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Ellipse$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Ellipse$1;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v2, v1, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    .line 133
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public final centerYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 155
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Ellipse$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Ellipse$2;-><init>(Ljavafx/scene/shape/Ellipse;)V

    iput-object v2, v1, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    .line 174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/shape/StrokeLineJoin;
    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public final getCenterX()D
    .locals 4

    .prologue
    .line 109
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Ellipse;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Ellipse;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Ellipse;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCenterY()D
    .locals 4

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Ellipse;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Ellipse;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Ellipse;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRadiusX()D
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->radiusX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-wide v0
.end method

.method public final getRadiusY()D
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->radiusY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-wide v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/Ellipse;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/shape/Ellipse;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 286
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    .line 308
    .end local v3    # "this":Ljavafx/scene/shape/Ellipse;
    :goto_0
    return-object v3

    .line 288
    .restart local v3    # "this":Ljavafx/scene/shape/Ellipse;
    :cond_0
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v18

    const/16 v19, -0x50

    and-int/lit8 v18, v18, -0x50

    if-eqz v18, :cond_1

    .line 289
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/shape/Ellipse;->impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Ljavafx/scene/shape/Ellipse;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    goto :goto_0

    .line 293
    :cond_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Ellipse;->getCenterX()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v6, v18

    .line 294
    .local v6, "x":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Ellipse;->getCenterY()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v8, v18

    .line 295
    .local v8, "y":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 296
    .local v10, "width":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 299
    .local v12, "height":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/shape/Ellipse;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Ellipse;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v18

    sget-object v19, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 300
    :cond_2
    const-wide/16 v18, 0x0

    move-wide/from16 v33, v18

    move-wide/from16 v18, v33

    move-wide/from16 v20, v33

    move-wide/from16 v16, v20

    .local v16, "dpad":D
    move-wide/from16 v14, v18

    .line 308
    .local v14, "upad":D
    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-wide/from16 v21, v14

    move-wide/from16 v23, v16

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    invoke-virtual/range {v18 .. v32}, Ljavafx/scene/shape/Ellipse;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;DDDDDD)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 302
    .end local v14    # "upad":D
    .end local v16    # "dpad":D
    :cond_3
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Ellipse;->getStrokeWidth()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 303
    .restart local v14    # "upad":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Ellipse;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v18

    sget-object v19, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 304
    move-wide/from16 v18, v14

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 306
    :cond_4
    const-wide/16 v18, 0x0

    move-wide/from16 v16, v18

    .restart local v16    # "dpad":D
    goto :goto_1
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v2, v0

    .line 319
    invoke-virtual {v2}, Ljavafx/scene/shape/Ellipse;->getCenterX()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object v3, v0

    .line 320
    invoke-virtual {v3}, Ljavafx/scene/shape/Ellipse;->getCenterY()D

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    move-object v4, v0

    .line 321
    invoke-virtual {v4}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v0

    .line 322
    invoke-virtual {v5}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    double-to-float v5, v5

    .line 318
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 323
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Ellipse;->impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGEllipse;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGEllipse;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 335
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Ellipse;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Ellipse;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGEllipse;

    move-object v1, v2

    .line 337
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGEllipse;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Ellipse;->getCenterX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 338
    invoke-virtual {v4}, Ljavafx/scene/shape/Ellipse;->getCenterY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 339
    invoke-virtual {v5}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 340
    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v6

    double-to-float v6, v6

    .line 337
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGEllipse;->updateEllipse(FFFF)V

    .line 342
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGEllipse;
    :cond_0
    return-void
.end method

.method public final radiusXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public final radiusYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Ellipse;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v0
.end method

.method public final setCenterX(D)V
    .locals 9

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Ellipse;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Ellipse;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Ellipse;->centerXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 106
    :cond_1
    return-void
.end method

.method public final setCenterY(D)V
    .locals 9

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Ellipse;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Ellipse;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Ellipse;->centerYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 147
    :cond_1
    return-void
.end method

.method public final setRadiusX(D)V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Ellipse;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 203
    return-void
.end method

.method public final setRadiusY(D)V
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Ellipse;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Ellipse;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 350
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Ellipse;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Ellipse["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 352
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Ellipse;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 353
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 354
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

    .line 357
    :cond_0
    move-object v5, v2

    const-string v6, "centerX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getCenterX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    move-object v5, v2

    const-string v6, ", centerY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getCenterY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 359
    move-object v5, v2

    const-string v6, ", radiusX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getRadiusX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    move-object v5, v2

    const-string v6, ", radiusY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getRadiusY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Ellipse;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 365
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 366
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Ellipse;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Ellipse;
    return-object v1
.end method
