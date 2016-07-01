.class public Ljavafx/scene/shape/CubicCurve;
.super Ljavafx/scene/shape/Shape;
.source "CubicCurve.java"


# instance fields
.field private controlX1:Ljavafx/beans/property/DoubleProperty;

.field private controlX2:Ljavafx/beans/property/DoubleProperty;

.field private controlY1:Ljavafx/beans/property/DoubleProperty;

.field private controlY2:Ljavafx/beans/property/DoubleProperty;

.field private endX:Ljavafx/beans/property/DoubleProperty;

.field private endY:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/CubicCurve2D;

.field private startX:Ljavafx/beans/property/DoubleProperty;

.field private startY:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 63
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    .line 75
    return-void
.end method

.method public constructor <init>(DDDDDDDD)V
    .locals 23

    .prologue
    .line 91
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide/from16 v3, p1

    .local v3, "startX":D
    move-wide/from16 v5, p3

    .local v5, "startY":D
    move-wide/from16 v7, p5

    .local v7, "controlX1":D
    move-wide/from16 v9, p7

    .local v9, "controlY1":D
    move-wide/from16 v11, p9

    .local v11, "controlX2":D
    move-wide/from16 v13, p11

    .local v13, "controlY2":D
    move-wide/from16 v15, p13

    .local v15, "endX":D
    move-wide/from16 v17, p15

    .local v17, "endY":D
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 63
    move-object/from16 v19, v2

    new-instance v20, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object/from16 v22, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v22

    invoke-direct/range {v21 .. v21}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    .line 92
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setStartX(D)V

    .line 93
    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setStartY(D)V

    .line 94
    move-object/from16 v19, v2

    move-wide/from16 v20, v7

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setControlX1(D)V

    .line 95
    move-object/from16 v19, v2

    move-wide/from16 v20, v9

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setControlY1(D)V

    .line 96
    move-object/from16 v19, v2

    move-wide/from16 v20, v11

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setControlX2(D)V

    .line 97
    move-object/from16 v19, v2

    move-wide/from16 v20, v13

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setControlY2(D)V

    .line 98
    move-object/from16 v19, v2

    move-wide/from16 v20, v15

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setEndX(D)V

    .line 99
    move-object/from16 v19, v2

    move-wide/from16 v20, v17

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/shape/CubicCurve;->setEndY(D)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/shape/CubicCurve;)V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final controlX1Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 197
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$3;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final controlX2Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 281
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$5;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    .line 300
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final controlY1Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 239
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$4;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    .line 258
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final controlY2Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 323
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$6;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    .line 342
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final endXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 364
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$7;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    .line 383
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final endYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 405
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$8;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    .line 424
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final getControlX1()D
    .locals 4

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlX2()D
    .locals 4

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlY1()D
    .locals 4

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlY2()D
    .locals 4

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getEndX()D
    .locals 4

    .prologue
    .line 359
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getEndY()D
    .locals 4

    .prologue
    .line 400
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStartX()D
    .locals 4

    .prologue
    .line 109
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStartY()D
    .locals 4

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/CubicCurve2D;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getStartX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    .line 434
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getStartY()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    .line 435
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getControlX1()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    .line 436
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getControlY1()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    .line 437
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getControlX2()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    .line 438
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getControlY2()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    .line 439
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getEndX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    .line 440
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->getEndY()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    .line 441
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->shape:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurve;->impl_configShape()Lcom/sun/javafx/geom/CubicCurve2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGCubicCurve;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGCubicCurve;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 461
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/CubicCurve;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/CubicCurve;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGCubicCurve;

    move-object v1, v2

    .line 463
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/CubicCurve;->getStartX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 464
    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->getStartY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 465
    invoke-virtual {v5}, Ljavafx/scene/shape/CubicCurve;->getEndX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 466
    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getEndY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 467
    invoke-virtual {v7}, Ljavafx/scene/shape/CubicCurve;->getControlX1()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 468
    invoke-virtual {v8}, Ljavafx/scene/shape/CubicCurve;->getControlY1()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 469
    invoke-virtual {v9}, Ljavafx/scene/shape/CubicCurve;->getControlX2()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    .line 470
    invoke-virtual {v10}, Ljavafx/scene/shape/CubicCurve;->getControlY2()D

    move-result-wide v10

    double-to-float v10, v10

    .line 463
    invoke-virtual/range {v2 .. v10}, Lcom/sun/javafx/sg/prism/NGCubicCurve;->updateCubicCurve(FFFFFFFF)V

    .line 472
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    :cond_0
    return-void
.end method

.method public final setControlX1(D)V
    .locals 9

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 187
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->controlX1Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 189
    :cond_1
    return-void
.end method

.method public final setControlX2(D)V
    .locals 9

    .prologue
    .line 270
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 271
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->controlX2Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 273
    :cond_1
    return-void
.end method

.method public final setControlY1(D)V
    .locals 9

    .prologue
    .line 228
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 229
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->controlY1Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 231
    :cond_1
    return-void
.end method

.method public final setControlY2(D)V
    .locals 9

    .prologue
    .line 312
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->controlY2Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 315
    :cond_1
    return-void
.end method

.method public final setEndX(D)V
    .locals 9

    .prologue
    .line 353
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 354
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->endXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 356
    :cond_1
    return-void
.end method

.method public final setEndY(D)V
    .locals 9

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 395
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->endYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 397
    :cond_1
    return-void
.end method

.method public final setStartX(D)V
    .locals 9

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->startXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 106
    :cond_1
    return-void
.end method

.method public final setStartY(D)V
    .locals 9

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurve;->startYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 147
    :cond_1
    return-void
.end method

.method public final startXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 114
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$1;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    .line 133
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public final startYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 155
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurve$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurve$2;-><init>(Ljavafx/scene/shape/CubicCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    .line 174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 480
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurve;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "CubicCurve["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 482
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/CubicCurve;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 483
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 484
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

    .line 487
    :cond_0
    move-object v5, v2

    const-string v6, "startX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getStartX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 488
    move-object v5, v2

    const-string v6, ", startY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getStartY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 489
    move-object v5, v2

    const-string v6, ", controlX1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getControlX1()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 490
    move-object v5, v2

    const-string v6, ", controlY1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getControlY1()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 491
    move-object v5, v2

    const-string v6, ", controlX2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getControlX2()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 492
    move-object v5, v2

    const-string v6, ", controlY2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getControlY2()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 493
    move-object v5, v2

    const-string v6, ", endX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getEndX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 494
    move-object v5, v2

    const-string v6, ", endY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getEndY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 496
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 498
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/CubicCurve;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 499
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 500
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 501
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurve;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 504
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurve;
    return-object v1
.end method
