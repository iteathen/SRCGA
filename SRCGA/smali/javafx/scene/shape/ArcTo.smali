.class public Ljavafx/scene/shape/ArcTo;
.super Ljavafx/scene/shape/PathElement;
.source "ArcTo.java"


# instance fields
.field private largeArcFlag:Ljavafx/beans/property/BooleanProperty;

.field private radiusX:Ljavafx/beans/property/DoubleProperty;

.field private radiusY:Ljavafx/beans/property/DoubleProperty;

.field private sweepFlag:Ljavafx/beans/property/BooleanProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private xAxisRotation:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 128
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$1;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 163
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$2;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 99
    return-void
.end method

.method public constructor <init>(DDDDDZZ)V
    .locals 19

    .prologue
    .line 113
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-wide/from16 v1, p1

    .local v1, "radiusX":D
    move-wide/from16 v3, p3

    .local v3, "radiusY":D
    move-wide/from16 v5, p5

    .local v5, "xAxisRotation":D
    move-wide/from16 v7, p7

    .local v7, "x":D
    move-wide/from16 v9, p9

    .local v9, "y":D
    move/from16 v11, p11

    .local v11, "largeArcFlag":Z
    move/from16 v12, p12

    .local v12, "sweepFlag":Z
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 128
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/ArcTo$1;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/ArcTo$1;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v14, v13, Ljavafx/scene/shape/ArcTo;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 163
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/ArcTo$2;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/ArcTo$2;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v14, v13, Ljavafx/scene/shape/ArcTo;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 114
    move-object v13, v0

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/ArcTo;->setRadiusX(D)V

    .line 115
    move-object v13, v0

    move-wide v14, v3

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/ArcTo;->setRadiusY(D)V

    .line 116
    move-object v13, v0

    move-wide v14, v5

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/ArcTo;->setXAxisRotation(D)V

    .line 117
    move-object v13, v0

    move-wide v14, v7

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/ArcTo;->setX(D)V

    .line 118
    move-object v13, v0

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/ArcTo;->setY(D)V

    .line 119
    move-object v13, v0

    move v14, v11

    invoke-virtual {v13, v14}, Ljavafx/scene/shape/ArcTo;->setLargeArcFlag(Z)V

    .line 120
    move-object v13, v0

    move v14, v12

    invoke-virtual {v13, v14}, Ljavafx/scene/shape/ArcTo;->setSweepFlag(Z)V

    .line 121
    return-void
.end method

.method private addArcTo(Lcom/sun/javafx/sg/prism/NGPath;Lcom/sun/javafx/geom/Path2D;DD)V
    .locals 101

    .prologue
    .line 429
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/ArcTo;
    move-object/from16 v3, p1

    .local v3, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object/from16 v4, p2

    .local v4, "path":Lcom/sun/javafx/geom/Path2D;
    move-wide/from16 v5, p3

    .local v5, "x0":D
    move-wide/from16 v7, p5

    .local v7, "y0":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->getX()D

    move-result-wide v90

    move-wide/from16 v9, v90

    .line 430
    .local v9, "localX":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->getY()D

    move-result-wide v90

    move-wide/from16 v11, v90

    .line 431
    .local v11, "localY":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->isSweepFlag()Z

    move-result v90

    move/from16 v13, v90

    .line 432
    .local v13, "localSweepFlag":Z
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->isLargeArcFlag()Z

    move-result v90

    move/from16 v14, v90

    .line 435
    .local v14, "localLargeArcFlag":Z
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->isAbsolute()Z

    move-result v90

    if-eqz v90, :cond_2

    move-wide/from16 v90, v9

    :goto_0
    move-wide/from16 v15, v90

    .line 436
    .local v15, "xto":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->isAbsolute()Z

    move-result v90

    if-eqz v90, :cond_3

    move-wide/from16 v90, v11

    :goto_1
    move-wide/from16 v17, v90

    .line 438
    .local v17, "yto":D
    move-wide/from16 v90, v5

    move-wide/from16 v92, v15

    sub-double v90, v90, v92

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    div-double v90, v90, v92

    move-wide/from16 v19, v90

    .line 439
    .local v19, "dx2":D
    move-wide/from16 v90, v7

    move-wide/from16 v92, v17

    sub-double v90, v90, v92

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    div-double v90, v90, v92

    move-wide/from16 v21, v90

    .line 441
    .local v21, "dy2":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->getXAxisRotation()D

    move-result-wide v90

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v90

    move-wide/from16 v23, v90

    .line 442
    .local v23, "xAxisRotationR":D
    move-wide/from16 v90, v23

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->cos(D)D

    move-result-wide v90

    move-wide/from16 v25, v90

    .line 443
    .local v25, "cosAngle":D
    move-wide/from16 v90, v23

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->sin(D)D

    move-result-wide v90

    move-wide/from16 v27, v90

    .line 448
    .local v27, "sinAngle":D
    move-wide/from16 v90, v25

    move-wide/from16 v92, v19

    mul-double v90, v90, v92

    move-wide/from16 v92, v27

    move-wide/from16 v94, v21

    mul-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v29, v90

    .line 449
    .local v29, "x1":D
    move-wide/from16 v90, v27

    move-wide/from16 v0, v90

    neg-double v0, v0

    move-wide/from16 v90, v0

    move-wide/from16 v92, v19

    mul-double v90, v90, v92

    move-wide/from16 v92, v25

    move-wide/from16 v94, v21

    mul-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v31, v90

    .line 451
    .local v31, "y1":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->getRadiusX()D

    move-result-wide v90

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->abs(D)D

    move-result-wide v90

    move-wide/from16 v33, v90

    .line 452
    .local v33, "rx":D
    move-object/from16 v90, v2

    invoke-virtual/range {v90 .. v90}, Ljavafx/scene/shape/ArcTo;->getRadiusY()D

    move-result-wide v90

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->abs(D)D

    move-result-wide v90

    move-wide/from16 v35, v90

    .line 453
    .local v35, "ry":D
    move-wide/from16 v90, v33

    move-wide/from16 v92, v33

    mul-double v90, v90, v92

    move-wide/from16 v37, v90

    .line 454
    .local v37, "Prx":D
    move-wide/from16 v90, v35

    move-wide/from16 v92, v35

    mul-double v90, v90, v92

    move-wide/from16 v39, v90

    .line 455
    .local v39, "Pry":D
    move-wide/from16 v90, v29

    move-wide/from16 v92, v29

    mul-double v90, v90, v92

    move-wide/from16 v41, v90

    .line 456
    .local v41, "Px1":D
    move-wide/from16 v90, v31

    move-wide/from16 v92, v31

    mul-double v90, v90, v92

    move-wide/from16 v43, v90

    .line 458
    .local v43, "Py1":D
    move-wide/from16 v90, v41

    move-wide/from16 v92, v37

    div-double v90, v90, v92

    move-wide/from16 v92, v43

    move-wide/from16 v94, v39

    div-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v45, v90

    .line 459
    .local v45, "radiiCheck":D
    move-wide/from16 v90, v45

    const-wide/high16 v92, 0x3ff0000000000000L    # 1.0

    cmpl-double v90, v90, v92

    if-lez v90, :cond_0

    .line 460
    move-wide/from16 v90, v45

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v90

    move-wide/from16 v92, v33

    mul-double v90, v90, v92

    move-wide/from16 v33, v90

    .line 461
    move-wide/from16 v90, v45

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v90

    move-wide/from16 v92, v35

    mul-double v90, v90, v92

    move-wide/from16 v35, v90

    .line 462
    move-wide/from16 v90, v33

    move-wide/from16 v92, v33

    cmpl-double v90, v90, v92

    if-nez v90, :cond_4

    move-wide/from16 v90, v35

    move-wide/from16 v92, v35

    cmpl-double v90, v90, v92

    if-nez v90, :cond_4

    .line 470
    move-wide/from16 v90, v33

    move-wide/from16 v92, v33

    mul-double v90, v90, v92

    move-wide/from16 v37, v90

    .line 471
    move-wide/from16 v90, v35

    move-wide/from16 v92, v35

    mul-double v90, v90, v92

    move-wide/from16 v39, v90

    .line 477
    :cond_0
    move/from16 v90, v14

    move/from16 v91, v13

    move/from16 v0, v90

    move/from16 v1, v91

    if-ne v0, v1, :cond_6

    const-wide/high16 v90, -0x4010000000000000L    # -1.0

    :goto_2
    move-wide/from16 v47, v90

    .line 478
    .local v47, "sign":D
    move-wide/from16 v90, v37

    move-wide/from16 v92, v39

    mul-double v90, v90, v92

    move-wide/from16 v92, v37

    move-wide/from16 v94, v43

    mul-double v92, v92, v94

    sub-double v90, v90, v92

    move-wide/from16 v92, v39

    move-wide/from16 v94, v41

    mul-double v92, v92, v94

    sub-double v90, v90, v92

    move-wide/from16 v92, v37

    move-wide/from16 v94, v43

    mul-double v92, v92, v94

    move-wide/from16 v94, v39

    move-wide/from16 v96, v41

    mul-double v94, v94, v96

    add-double v92, v92, v94

    div-double v90, v90, v92

    move-wide/from16 v49, v90

    .line 479
    .local v49, "sq":D
    move-wide/from16 v90, v49

    const-wide/16 v92, 0x0

    cmpg-double v90, v90, v92

    if-gez v90, :cond_7

    const-wide/16 v90, 0x0

    :goto_3
    move-wide/from16 v49, v90

    .line 480
    move-wide/from16 v90, v47

    move-wide/from16 v92, v49

    invoke-static/range {v92 .. v93}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v92

    mul-double v90, v90, v92

    move-wide/from16 v51, v90

    .line 481
    .local v51, "coef":D
    move-wide/from16 v90, v51

    move-wide/from16 v92, v33

    move-wide/from16 v94, v31

    mul-double v92, v92, v94

    move-wide/from16 v94, v35

    div-double v92, v92, v94

    mul-double v90, v90, v92

    move-wide/from16 v53, v90

    .line 482
    .local v53, "cx1":D
    move-wide/from16 v90, v51

    move-wide/from16 v92, v35

    move-wide/from16 v94, v29

    mul-double v92, v92, v94

    move-wide/from16 v94, v33

    div-double v92, v92, v94

    move-wide/from16 v0, v92

    neg-double v0, v0

    move-wide/from16 v92, v0

    mul-double v90, v90, v92

    move-wide/from16 v55, v90

    .line 487
    .local v55, "cy1":D
    move-wide/from16 v90, v5

    move-wide/from16 v92, v15

    add-double v90, v90, v92

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    div-double v90, v90, v92

    move-wide/from16 v57, v90

    .line 488
    .local v57, "sx2":D
    move-wide/from16 v90, v7

    move-wide/from16 v92, v17

    add-double v90, v90, v92

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    div-double v90, v90, v92

    move-wide/from16 v59, v90

    .line 489
    .local v59, "sy2":D
    move-wide/from16 v90, v57

    move-wide/from16 v92, v25

    move-wide/from16 v94, v53

    mul-double v92, v92, v94

    move-wide/from16 v94, v27

    move-wide/from16 v96, v55

    mul-double v94, v94, v96

    sub-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v61, v90

    .line 490
    .local v61, "cx":D
    move-wide/from16 v90, v59

    move-wide/from16 v92, v27

    move-wide/from16 v94, v53

    mul-double v92, v92, v94

    move-wide/from16 v94, v25

    move-wide/from16 v96, v55

    mul-double v94, v94, v96

    add-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v63, v90

    .line 495
    .local v63, "cy":D
    move-wide/from16 v90, v29

    move-wide/from16 v92, v53

    sub-double v90, v90, v92

    move-wide/from16 v92, v33

    div-double v90, v90, v92

    move-wide/from16 v65, v90

    .line 496
    .local v65, "ux":D
    move-wide/from16 v90, v31

    move-wide/from16 v92, v55

    sub-double v90, v90, v92

    move-wide/from16 v92, v35

    div-double v90, v90, v92

    move-wide/from16 v67, v90

    .line 497
    .local v67, "uy":D
    move-wide/from16 v90, v29

    move-wide/from16 v0, v90

    neg-double v0, v0

    move-wide/from16 v90, v0

    move-wide/from16 v92, v53

    sub-double v90, v90, v92

    move-wide/from16 v92, v33

    div-double v90, v90, v92

    move-wide/from16 v69, v90

    .line 498
    .local v69, "vx":D
    move-wide/from16 v90, v31

    move-wide/from16 v0, v90

    neg-double v0, v0

    move-wide/from16 v90, v0

    move-wide/from16 v92, v55

    sub-double v90, v90, v92

    move-wide/from16 v92, v35

    div-double v90, v90, v92

    move-wide/from16 v71, v90

    .line 500
    .local v71, "vy":D
    move-wide/from16 v90, v65

    move-wide/from16 v92, v65

    mul-double v90, v90, v92

    move-wide/from16 v92, v67

    move-wide/from16 v94, v67

    mul-double v92, v92, v94

    add-double v90, v90, v92

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v90

    move-wide/from16 v73, v90

    .line 501
    .local v73, "n":D
    move-wide/from16 v90, v65

    move-wide/from16 v75, v90

    .line 502
    .local v75, "p":D
    move-wide/from16 v90, v67

    const-wide/16 v92, 0x0

    cmpg-double v90, v90, v92

    if-gez v90, :cond_8

    const-wide/high16 v90, -0x4010000000000000L    # -1.0

    :goto_4
    move-wide/from16 v47, v90

    .line 503
    move-wide/from16 v90, v47

    move-wide/from16 v92, v75

    move-wide/from16 v94, v73

    div-double v92, v92, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/Math;->acos(D)D

    move-result-wide v92

    mul-double v90, v90, v92

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v90

    move-wide/from16 v77, v90

    .line 506
    .local v77, "angleStart":D
    move-wide/from16 v90, v65

    move-wide/from16 v92, v65

    mul-double v90, v90, v92

    move-wide/from16 v92, v67

    move-wide/from16 v94, v67

    mul-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v92, v69

    move-wide/from16 v94, v69

    mul-double v92, v92, v94

    move-wide/from16 v94, v71

    move-wide/from16 v96, v71

    mul-double v94, v94, v96

    add-double v92, v92, v94

    mul-double v90, v90, v92

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v90

    move-wide/from16 v73, v90

    .line 507
    move-wide/from16 v90, v65

    move-wide/from16 v92, v69

    mul-double v90, v90, v92

    move-wide/from16 v92, v67

    move-wide/from16 v94, v71

    mul-double v92, v92, v94

    add-double v90, v90, v92

    move-wide/from16 v75, v90

    .line 508
    move-wide/from16 v90, v65

    move-wide/from16 v92, v71

    mul-double v90, v90, v92

    move-wide/from16 v92, v67

    move-wide/from16 v94, v69

    mul-double v92, v92, v94

    sub-double v90, v90, v92

    const-wide/16 v92, 0x0

    cmpg-double v90, v90, v92

    if-gez v90, :cond_9

    const-wide/high16 v90, -0x4010000000000000L    # -1.0

    :goto_5
    move-wide/from16 v47, v90

    .line 509
    move-wide/from16 v90, v47

    move-wide/from16 v92, v75

    move-wide/from16 v94, v73

    div-double v92, v92, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/Math;->acos(D)D

    move-result-wide v92

    mul-double v90, v90, v92

    invoke-static/range {v90 .. v91}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v90

    move-wide/from16 v79, v90

    .line 510
    .local v79, "angleExtent":D
    move/from16 v90, v13

    if-nez v90, :cond_a

    move-wide/from16 v90, v79

    const-wide/16 v92, 0x0

    cmpl-double v90, v90, v92

    if-lez v90, :cond_a

    .line 511
    move-wide/from16 v90, v79

    const-wide v92, 0x4076800000000000L    # 360.0

    sub-double v90, v90, v92

    move-wide/from16 v79, v90

    .line 515
    :cond_1
    :goto_6
    move-wide/from16 v90, v79

    const-wide v92, 0x4076800000000000L    # 360.0

    rem-double v90, v90, v92

    move-wide/from16 v79, v90

    .line 516
    move-wide/from16 v90, v77

    const-wide v92, 0x4076800000000000L    # 360.0

    rem-double v90, v90, v92

    move-wide/from16 v77, v90

    .line 521
    move-wide/from16 v90, v61

    move-wide/from16 v92, v33

    sub-double v90, v90, v92

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v81, v90

    .line 522
    .local v81, "arcX":F
    move-wide/from16 v90, v63

    move-wide/from16 v92, v35

    sub-double v90, v90, v92

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v82, v90

    .line 523
    .local v82, "arcY":F
    move-wide/from16 v90, v33

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    mul-double v90, v90, v92

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v83, v90

    .line 524
    .local v83, "arcW":F
    move-wide/from16 v90, v35

    const-wide/high16 v92, 0x4000000000000000L    # 2.0

    mul-double v90, v90, v92

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v84, v90

    .line 525
    .local v84, "arcH":F
    move-wide/from16 v90, v77

    move-wide/from16 v0, v90

    neg-double v0, v0

    move-wide/from16 v90, v0

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v85, v90

    .line 526
    .local v85, "arcStart":F
    move-wide/from16 v90, v79

    move-wide/from16 v0, v90

    neg-double v0, v0

    move-wide/from16 v90, v0

    move-wide/from16 v0, v90

    double-to-float v0, v0

    move/from16 v90, v0

    move/from16 v86, v90

    .line 528
    .local v86, "arcExtent":F
    move-object/from16 v90, v3

    if-nez v90, :cond_c

    .line 529
    new-instance v90, Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v99, v90

    move-object/from16 v90, v99

    move-object/from16 v91, v99

    move/from16 v92, v81

    move/from16 v93, v82

    move/from16 v94, v83

    move/from16 v95, v84

    move/from16 v96, v85

    move/from16 v97, v86

    const/16 v98, 0x0

    invoke-direct/range {v91 .. v98}, Lcom/sun/javafx/geom/Arc2D;-><init>(FFFFFFI)V

    move-object/from16 v87, v90

    .line 532
    .local v87, "arc":Lcom/sun/javafx/geom/Arc2D;
    move-wide/from16 v90, v23

    const-wide/16 v92, 0x0

    cmpl-double v90, v90, v92

    if-nez v90, :cond_b

    const/16 v90, 0x0

    .line 533
    :goto_7
    move-object/from16 v88, v90

    .line 534
    .local v88, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v90, v87

    move-object/from16 v91, v88

    invoke-virtual/range {v90 .. v91}, Lcom/sun/javafx/geom/Arc2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v90

    move-object/from16 v89, v90

    .line 538
    .local v89, "pi":Lcom/sun/javafx/geom/PathIterator;
    move-object/from16 v90, v89

    invoke-interface/range {v90 .. v90}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 539
    move-object/from16 v90, v4

    move-object/from16 v91, v89

    const/16 v92, 0x1

    invoke-virtual/range {v90 .. v92}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 540
    .line 544
    .end local v47    # "sign":D
    .end local v49    # "sq":D
    .end local v51    # "coef":D
    .end local v53    # "cx1":D
    .end local v55    # "cy1":D
    .end local v57    # "sx2":D
    .end local v59    # "sy2":D
    .end local v61    # "cx":D
    .end local v63    # "cy":D
    .end local v65    # "ux":D
    .end local v67    # "uy":D
    .end local v69    # "vx":D
    .end local v71    # "vy":D
    .end local v73    # "n":D
    .end local v75    # "p":D
    .end local v77    # "angleStart":D
    .end local v79    # "angleExtent":D
    .end local v81    # "arcX":F
    .end local v82    # "arcY":F
    .end local v83    # "arcW":F
    .end local v84    # "arcH":F
    .end local v85    # "arcStart":F
    .end local v86    # "arcExtent":F
    .end local v87    # "arc":Lcom/sun/javafx/geom/Arc2D;
    .end local v88    # "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v89    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_8
    return-void

    .line 435
    .end local v15    # "xto":D
    .end local v17    # "yto":D
    .end local v19    # "dx2":D
    .end local v21    # "dy2":D
    .end local v23    # "xAxisRotationR":D
    .end local v25    # "cosAngle":D
    .end local v27    # "sinAngle":D
    .end local v29    # "x1":D
    .end local v31    # "y1":D
    .end local v33    # "rx":D
    .end local v35    # "ry":D
    .end local v37    # "Prx":D
    .end local v39    # "Pry":D
    .end local v41    # "Px1":D
    .end local v43    # "Py1":D
    .end local v45    # "radiiCheck":D
    :cond_2
    move-wide/from16 v90, v9

    move-wide/from16 v92, v5

    add-double v90, v90, v92

    goto/16 :goto_0

    .line 436
    .restart local v15    # "xto":D
    :cond_3
    move-wide/from16 v90, v11

    move-wide/from16 v92, v7

    add-double v90, v90, v92

    goto/16 :goto_1

    .line 463
    .restart local v17    # "yto":D
    .restart local v19    # "dx2":D
    .restart local v21    # "dy2":D
    .restart local v23    # "xAxisRotationR":D
    .restart local v25    # "cosAngle":D
    .restart local v27    # "sinAngle":D
    .restart local v29    # "x1":D
    .restart local v31    # "y1":D
    .restart local v33    # "rx":D
    .restart local v35    # "ry":D
    .restart local v37    # "Prx":D
    .restart local v39    # "Pry":D
    .restart local v41    # "Px1":D
    .restart local v43    # "Py1":D
    .restart local v45    # "radiiCheck":D
    :cond_4
    move-object/from16 v90, v3

    if-nez v90, :cond_5

    .line 464
    move-object/from16 v90, v4

    move-wide/from16 v91, v15

    move-wide/from16 v0, v91

    double-to-float v0, v0

    move/from16 v91, v0

    move-wide/from16 v92, v17

    move-wide/from16 v0, v92

    double-to-float v0, v0

    move/from16 v92, v0

    invoke-virtual/range {v90 .. v92}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 468
    :goto_9
    goto :goto_8

    .line 466
    :cond_5
    move-object/from16 v90, v3

    move-wide/from16 v91, v15

    move-wide/from16 v0, v91

    double-to-float v0, v0

    move/from16 v91, v0

    move-wide/from16 v92, v17

    move-wide/from16 v0, v92

    double-to-float v0, v0

    move/from16 v92, v0

    invoke-virtual/range {v90 .. v92}, Lcom/sun/javafx/sg/prism/NGPath;->addLineTo(FF)V

    goto :goto_9

    .line 477
    :cond_6
    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2

    .line 479
    .restart local v47    # "sign":D
    .restart local v49    # "sq":D
    :cond_7
    move-wide/from16 v90, v49

    goto/16 :goto_3

    .line 502
    .restart local v51    # "coef":D
    .restart local v53    # "cx1":D
    .restart local v55    # "cy1":D
    .restart local v57    # "sx2":D
    .restart local v59    # "sy2":D
    .restart local v61    # "cx":D
    .restart local v63    # "cy":D
    .restart local v65    # "ux":D
    .restart local v67    # "uy":D
    .restart local v69    # "vx":D
    .restart local v71    # "vy":D
    .restart local v73    # "n":D
    .restart local v75    # "p":D
    :cond_8
    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_4

    .line 508
    .restart local v77    # "angleStart":D
    :cond_9
    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_5

    .line 512
    .restart local v79    # "angleExtent":D
    :cond_a
    move/from16 v90, v13

    if-eqz v90, :cond_1

    move-wide/from16 v90, v79

    const-wide/16 v92, 0x0

    cmpg-double v90, v90, v92

    if-gez v90, :cond_1

    .line 513
    move-wide/from16 v90, v79

    const-wide v92, 0x4076800000000000L    # 360.0

    add-double v90, v90, v92

    move-wide/from16 v79, v90

    goto/16 :goto_6

    .line 532
    .restart local v81    # "arcX":F
    .restart local v82    # "arcY":F
    .restart local v83    # "arcW":F
    .restart local v84    # "arcH":F
    .restart local v85    # "arcStart":F
    .restart local v86    # "arcExtent":F
    .restart local v87    # "arc":Lcom/sun/javafx/geom/Arc2D;
    :cond_b
    move-wide/from16 v90, v23

    move-wide/from16 v92, v61

    move-wide/from16 v94, v63

    .line 533
    invoke-static/range {v90 .. v95}, Lcom/sun/javafx/geom/transform/BaseTransform;->getRotateInstance(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v90

    goto/16 :goto_7

    .line 541
    .end local v87    # "arc":Lcom/sun/javafx/geom/Arc2D;
    :cond_c
    move-object/from16 v90, v3

    move/from16 v91, v81

    move/from16 v92, v82

    move/from16 v93, v83

    move/from16 v94, v84

    move/from16 v95, v85

    move/from16 v96, v86

    move-wide/from16 v97, v23

    move-wide/from16 v0, v97

    double-to-float v0, v0

    move/from16 v97, v0

    invoke-virtual/range {v90 .. v97}, Lcom/sun/javafx/sg/prism/NGPath;->addArcTo(FFFFFFF)V

    goto/16 :goto_8
.end method


# virtual methods
.method public final XAxisRotationProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 224
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$3;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    .line 242
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 10

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-object v2, p1

    .local v2, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v8

    float-to-double v8, v8

    invoke-direct/range {v3 .. v9}, Ljavafx/scene/shape/ArcTo;->addArcTo(Lcom/sun/javafx/sg/prism/NGPath;Lcom/sun/javafx/geom/Path2D;DD)V

    .line 412
    return-void
.end method

.method public final getRadiusX()D
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->radiusX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-wide v0
.end method

.method public final getRadiusY()D
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->radiusY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-wide v0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 341
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/ArcTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/ArcTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getXAxisRotation()D
    .locals 4

    .prologue
    .line 215
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/ArcTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/ArcTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 383
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/ArcTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/ArcTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-object v2, p1

    .local v2, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v8

    float-to-double v8, v8

    invoke-direct/range {v3 .. v9}, Ljavafx/scene/shape/ArcTo;->addArcTo(Lcom/sun/javafx/sg/prism/NGPath;Lcom/sun/javafx/geom/Path2D;DD)V

    .line 421
    return-void
.end method

.method public final isLargeArcFlag()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/ArcTo;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSweepFlag()Z
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/ArcTo;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final largeArcFlagProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 264
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$4;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    .line 282
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method public final radiusXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method public final radiusYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method public final setLargeArcFlag(Z)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->largeArcFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcTo;->largeArcFlagProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 256
    :cond_1
    return-void
.end method

.method public final setRadiusX(D)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/ArcTo;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 148
    return-void
.end method

.method public final setRadiusY(D)V
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/ArcTo;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 183
    return-void
.end method

.method public final setSweepFlag(Z)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcTo;->sweepFlagProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 296
    :cond_1
    return-void
.end method

.method public final setX(D)V
    .locals 9

    .prologue
    .line 335
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 336
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 338
    :cond_1
    return-void
.end method

.method public final setXAxisRotation(D)V
    .locals 9

    .prologue
    .line 205
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/ArcTo;->xAxisRotation:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->XAxisRotationProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 208
    :cond_1
    return-void
.end method

.method public final setY(D)V
    .locals 9

    .prologue
    .line 377
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 378
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 380
    :cond_1
    return-void
.end method

.method public final sweepFlagProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 304
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$5;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    .line 322
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->sweepFlag:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 552
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/ArcTo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ArcTo["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 554
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 556
    move-object v3, v2

    const-string v4, ", radiusX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->getRadiusX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 557
    move-object v3, v2

    const-string v4, ", radiusY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->getRadiusY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 558
    move-object v3, v2

    const-string v4, ", xAxisRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcTo;->getXAxisRotation()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 560
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/ArcTo;->isLargeArcFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    move-object v3, v2

    const-string v4, ", lartArcFlag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 564
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/ArcTo;->isSweepFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    move-object v3, v2

    const-string v4, ", sweepFlag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 568
    :cond_1
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v1
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 346
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$6;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 364
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 388
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/ArcTo$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/ArcTo$7;-><init>(Ljavafx/scene/shape/ArcTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    .line 406
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo;
    return-object v0
.end method
