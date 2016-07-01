.class public Ljavafx/scene/shape/CubicCurveTo;
.super Ljavafx/scene/shape/PathElement;
.source "CubicCurveTo.java"


# instance fields
.field private controlX1:Ljavafx/beans/property/DoubleProperty;

.field private controlX2:Ljavafx/beans/property/DoubleProperty;

.field private controlY1:Ljavafx/beans/property/DoubleProperty;

.field private controlY2:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 17

    .prologue
    .line 87
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide/from16 v1, p1

    .local v1, "controlX1":D
    move-wide/from16 v3, p3

    .local v3, "controlY1":D
    move-wide/from16 v5, p5

    .local v5, "controlX2":D
    move-wide/from16 v7, p7

    .local v7, "controlY2":D
    move-wide/from16 v9, p9

    .local v9, "x":D
    move-wide/from16 v11, p11

    .local v11, "y":D
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 88
    move-object v13, v0

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setControlX1(D)V

    .line 89
    move-object v13, v0

    move-wide v14, v3

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setControlY1(D)V

    .line 90
    move-object v13, v0

    move-wide v14, v5

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setControlX2(D)V

    .line 91
    move-object v13, v0

    move-wide v14, v7

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setControlY2(D)V

    .line 92
    move-object v13, v0

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setX(D)V

    .line 93
    move-object v13, v0

    move-wide v14, v11

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/CubicCurveTo;->setY(D)V

    .line 94
    return-void
.end method


# virtual methods
.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 16

    .prologue
    .line 346
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object/from16 v1, p1

    .local v1, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurveTo;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/CubicCurveTo;->getControlX1()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/CubicCurveTo;->getControlY1()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 348
    invoke-virtual {v9}, Ljavafx/scene/shape/CubicCurveTo;->getControlX2()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/shape/CubicCurveTo;->getControlY2()D

    move-result-wide v10

    double-to-float v10, v10

    move-object v11, v0

    .line 349
    invoke-virtual {v11}, Ljavafx/scene/shape/CubicCurveTo;->getX()D

    move-result-wide v11

    double-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/shape/CubicCurveTo;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    .line 347
    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/sg/prism/NGPath;->addCubicTo(FFFFFF)V

    .line 357
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-wide v2, v6

    .line 352
    .local v2, "dx":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v6

    float-to-double v6, v6

    move-wide v4, v6

    .line 353
    .local v4, "dy":D
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/CubicCurveTo;->getControlX1()D

    move-result-wide v7

    move-wide v9, v2

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/CubicCurveTo;->getControlY1()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v0

    .line 354
    invoke-virtual {v9}, Ljavafx/scene/shape/CubicCurveTo;->getControlX2()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/shape/CubicCurveTo;->getControlY2()D

    move-result-wide v10

    move-wide v12, v4

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object v11, v0

    .line 355
    invoke-virtual {v11}, Ljavafx/scene/shape/CubicCurveTo;->getX()D

    move-result-wide v11

    move-wide v13, v2

    add-double/2addr v11, v13

    double-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/shape/CubicCurveTo;->getY()D

    move-result-wide v12

    move-wide v14, v4

    add-double/2addr v12, v14

    double-to-float v12, v12

    .line 353
    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/sg/prism/NGPath;->addCubicTo(FFFFFF)V

    goto :goto_0
.end method

.method public final controlX1Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$1;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    .line 134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method

.method public final controlX2Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 198
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$3;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method

.method public final controlY1Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$2;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    .line 175
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method

.method public final controlY2Property()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 239
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$4;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    .line 257
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method

.method public final getControlX1()D
    .locals 4

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlX2()D
    .locals 4

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlY1()D
    .locals 4

    .prologue
    .line 152
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getControlY2()D
    .locals 4

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 274
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 315
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 365
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object/from16 v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/CubicCurveTo;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/CubicCurveTo;->getControlX1()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/CubicCurveTo;->getControlY1()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 367
    invoke-virtual {v9}, Ljavafx/scene/shape/CubicCurveTo;->getControlX2()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/shape/CubicCurveTo;->getControlY2()D

    move-result-wide v10

    double-to-float v10, v10

    move-object v11, v0

    .line 368
    invoke-virtual {v11}, Ljavafx/scene/shape/CubicCurveTo;->getX()D

    move-result-wide v11

    double-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/shape/CubicCurveTo;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    .line 366
    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-wide v2, v6

    .line 371
    .local v2, "dx":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v6

    float-to-double v6, v6

    move-wide v4, v6

    .line 372
    .local v4, "dy":D
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/CubicCurveTo;->getControlX1()D

    move-result-wide v7

    move-wide v9, v2

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/CubicCurveTo;->getControlY1()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v0

    .line 373
    invoke-virtual {v9}, Ljavafx/scene/shape/CubicCurveTo;->getControlX2()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/shape/CubicCurveTo;->getControlY2()D

    move-result-wide v10

    move-wide v12, v4

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object v11, v0

    .line 374
    invoke-virtual {v11}, Ljavafx/scene/shape/CubicCurveTo;->getX()D

    move-result-wide v11

    move-wide v13, v2

    add-double/2addr v11, v13

    double-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/shape/CubicCurveTo;->getY()D

    move-result-wide v12

    move-wide v14, v4

    add-double/2addr v12, v14

    double-to-float v12, v12

    .line 372
    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    goto :goto_0
.end method

.method public final setControlX1(D)V
    .locals 9

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->controlX1:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 106
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->controlX1Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 108
    :cond_1
    return-void
.end method

.method public final setControlX2(D)V
    .locals 9

    .prologue
    .line 187
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->controlX2:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 188
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->controlX2Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 190
    :cond_1
    return-void
.end method

.method public final setControlY1(D)V
    .locals 9

    .prologue
    .line 146
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->controlY1:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 147
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->controlY1Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 149
    :cond_1
    return-void
.end method

.method public final setControlY2(D)V
    .locals 9

    .prologue
    .line 228
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->controlY2:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 229
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->controlY2Property()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 231
    :cond_1
    return-void
.end method

.method public final setX(D)V
    .locals 9

    .prologue
    .line 268
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 269
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 271
    :cond_1
    return-void
.end method

.method public final setY(D)V
    .locals 9

    .prologue
    .line 309
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 310
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 312
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 384
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/CubicCurveTo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "CubicCurveTo["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 386
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    move-object v3, v2

    const-string v4, ", controlX1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getControlX1()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    move-object v3, v2

    const-string v4, ", controlY1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getControlY1()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 390
    move-object v3, v2

    const-string v4, ", controlX2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getControlX2()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 391
    move-object v3, v2

    const-string v4, ", controlY2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/CubicCurveTo;->getControlY2()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v1
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 279
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$5;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 297
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 320
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/CubicCurveTo$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/CubicCurveTo$6;-><init>(Ljavafx/scene/shape/CubicCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    .line 338
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo;
    return-object v0
.end method
