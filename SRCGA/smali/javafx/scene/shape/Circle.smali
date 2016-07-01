.class public Ljavafx/scene/shape/Circle;
.super Ljavafx/scene/shape/Shape;
.source "Circle.java"


# instance fields
.field private centerX:Ljavafx/beans/property/DoubleProperty;

.field private centerY:Ljavafx/beans/property/DoubleProperty;

.field private final radius:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/Ellipse2D;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 59
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 202
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Circle$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Circle$3;-><init>(Ljavafx/scene/shape/Circle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 83
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-wide v1, p1

    .local v1, "radius":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 59
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 202
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Circle$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/shape/Circle$3;-><init>(Ljavafx/scene/shape/Circle;)V

    iput-object v4, v3, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 66
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Circle;->setRadius(D)V

    .line 67
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 13

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-wide v1, p1

    .local v1, "centerX":D
    move-wide/from16 v3, p3

    .local v3, "centerY":D
    move-wide/from16 v5, p5

    .local v5, "radius":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 59
    move-object v7, v0

    new-instance v8, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v8, v7, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 202
    move-object v7, v0

    new-instance v8, Ljavafx/scene/shape/Circle$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/shape/Circle$3;-><init>(Ljavafx/scene/shape/Circle;)V

    iput-object v8, v7, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 92
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Circle;->setCenterX(D)V

    .line 93
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Circle;->setCenterY(D)V

    .line 94
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Circle;->setRadius(D)V

    .line 95
    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/paint/Paint;)V
    .locals 15

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-wide/from16 v2, p1

    .local v2, "centerX":D
    move-wide/from16 v4, p3

    .local v4, "centerY":D
    move-wide/from16 v6, p5

    .local v6, "radius":D
    move-object/from16 v8, p7

    .local v8, "fill":Ljavafx/scene/paint/Paint;
    move-object v9, v1

    invoke-direct {v9}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 59
    move-object v9, v1

    new-instance v10, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v10, v9, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 202
    move-object v9, v1

    new-instance v10, Ljavafx/scene/shape/Circle$3;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Ljavafx/scene/shape/Circle$3;-><init>(Ljavafx/scene/shape/Circle;)V

    iput-object v10, v9, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 105
    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Circle;->setCenterX(D)V

    .line 106
    move-object v9, v1

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Circle;->setCenterY(D)V

    .line 107
    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Circle;->setRadius(D)V

    .line 108
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Circle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 109
    return-void
.end method

.method public constructor <init>(DLjavafx/scene/paint/Paint;)V
    .locals 11

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-wide v2, p1

    .local v2, "radius":D
    move-object v4, p3

    .local v4, "fill":Ljavafx/scene/paint/Paint;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 59
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/geom/Ellipse2D;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sun/javafx/geom/Ellipse2D;-><init>()V

    iput-object v6, v5, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    .line 202
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Circle$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/shape/Circle$3;-><init>(Ljavafx/scene/shape/Circle;)V

    iput-object v6, v5, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 75
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Circle;->setRadius(D)V

    .line 76
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Circle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Circle;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Circle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Circle;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Circle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Circle;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Circle;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final centerXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 131
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 132
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Circle$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Circle$1;-><init>(Ljavafx/scene/shape/Circle;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    .line 151
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-object v1
.end method

.method public final centerYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 174
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 175
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Circle$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Circle$2;-><init>(Ljavafx/scene/shape/Circle;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    .line 194
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-object v1
.end method

.method convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/shape/StrokeLineJoin;
    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Circle;
    return-object v0
.end method

.method public final getCenterX()D
    .locals 4

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Circle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCenterY()D
    .locals 4

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Circle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle;
    return-wide v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 37
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/Circle;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/shape/Circle;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 272
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v3, v22

    .line 309
    .end local v3    # "this":Ljavafx/scene/shape/Circle;
    :goto_0
    return-object v3

    .line 275
    .restart local v3    # "this":Ljavafx/scene/shape/Circle;
    :cond_0
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getCenterX()D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 276
    .local v6, "cX":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getCenterY()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 278
    .local v8, "cY":D
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v22

    const/16 v23, -0x1a

    and-int/lit8 v22, v22, -0x1a

    if-nez v22, :cond_3

    .line 280
    move-wide/from16 v22, v6

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v24, v8

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 281
    .local v10, "tCX":D
    move-wide/from16 v22, v6

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v24, v8

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 282
    .local v12, "tCY":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getRadius()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 284
    .local v14, "r":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/shape/Circle;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v22

    sget-object v23, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 285
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getStrokeWidth()D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 286
    .local v16, "upad":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v22

    sget-object v23, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 287
    move-wide/from16 v22, v16

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 289
    :cond_1
    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 292
    .end local v16    # "upad":D
    :cond_2
    move-object/from16 v22, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v14

    sub-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-wide/from16 v26, v10

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move-wide/from16 v27, v12

    move-wide/from16 v29, v14

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v28}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 294
    .end local v10    # "tCX":D
    .end local v12    # "tCY":D
    .end local v14    # "r":D
    :cond_3
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v22

    const/16 v23, -0x48

    and-int/lit8 v22, v22, -0x48

    if-nez v22, :cond_6

    .line 295
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getRadius()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 296
    .local v10, "r":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getCenterX()D

    move-result-wide v22

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 297
    .local v12, "x":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getCenterY()D

    move-result-wide v22

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 298
    .local v14, "y":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 299
    .local v16, "width":D
    move-wide/from16 v22, v16

    move-wide/from16 v18, v22

    .line 301
    .local v18, "height":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/shape/Circle;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v22

    sget-object v23, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 302
    :cond_4
    const-wide/16 v22, 0x0

    move-wide/from16 v20, v22

    .line 306
    .local v20, "upad":D
    :goto_1
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-wide/from16 v25, v20

    const-wide/16 v27, 0x0

    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    move-wide/from16 v33, v16

    move-wide/from16 v35, v18

    invoke-virtual/range {v22 .. v36}, Ljavafx/scene/shape/Circle;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;DDDDDD)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 304
    .end local v20    # "upad":D
    :cond_5
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/Circle;->getStrokeWidth()D

    move-result-wide v22

    move-wide/from16 v20, v22

    .restart local v20    # "upad":D
    goto :goto_1

    .line 309
    .end local v10    # "r":D
    .end local v12    # "x":D
    .end local v14    # "y":D
    .end local v16    # "width":D
    .end local v18    # "height":D
    .end local v20    # "upad":D
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/shape/Circle;->impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Ljavafx/scene/shape/Circle;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Circle;->getRadius()D

    move-result-wide v4

    move-wide v2, v4

    .line 319
    .local v2, "r":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v5, v1

    .line 320
    invoke-virtual {v5}, Ljavafx/scene/shape/Circle;->getCenterX()D

    move-result-wide v5

    move-wide v7, v2

    sub-double/2addr v5, v7

    double-to-float v5, v5

    move-object v6, v1

    .line 321
    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getCenterY()D

    move-result-wide v6

    move-wide v8, v2

    sub-double/2addr v6, v8

    double-to-float v6, v6

    move-wide v7, v2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    double-to-float v7, v7

    move-wide v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 319
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/Ellipse2D;->setFrame(FFFF)V

    .line 324
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Circle;->shape:Lcom/sun/javafx/geom/Ellipse2D;

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-object v1
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Circle;->impl_configShape()Lcom/sun/javafx/geom/Ellipse2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGCircle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGCircle;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 335
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Circle;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/Circle;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGCircle;

    move-object v2, v3

    .line 337
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGCircle;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Circle;->getCenterX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    .line 338
    invoke-virtual {v5}, Ljavafx/scene/shape/Circle;->getCenterY()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    .line 339
    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getRadius()D

    move-result-wide v6

    double-to-float v6, v6

    .line 337
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGCircle;->updateCircle(FFF)V

    .line 341
    .end local v2    # "peer":Lcom/sun/javafx/sg/prism/NGCircle;
    :cond_0
    return-void
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle;
    return-object v0
.end method

.method public final setCenterX(D)V
    .locals 9

    .prologue
    .line 121
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Circle;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 122
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Circle;->centerXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 124
    :cond_1
    return-void
.end method

.method public final setCenterY(D)V
    .locals 9

    .prologue
    .line 164
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Circle;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 165
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Circle;->centerYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 167
    :cond_1
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Circle;->radius:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 349
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Circle;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Circle["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 351
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Circle;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 352
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 353
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

    .line 356
    :cond_0
    move-object v5, v2

    const-string v6, "centerX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getCenterX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 357
    move-object v5, v2

    const-string v6, ", centerY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getCenterY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    move-object v5, v2

    const-string v6, ", radius="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getRadius()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Circle;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 363
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 364
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Circle;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Circle;
    return-object v1
.end method
