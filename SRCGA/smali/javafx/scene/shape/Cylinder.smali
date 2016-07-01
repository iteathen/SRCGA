.class public Ljavafx/scene/shape/Cylinder;
.super Ljavafx/scene/shape/Shape3D;
.source "Cylinder.java"


# static fields
.field static final DEFAULT_DIVISIONS:I = 0x40

.field static final DEFAULT_HEIGHT:D = 2.0

.field static final DEFAULT_RADIUS:D = 1.0


# instance fields
.field private divisions:I

.field private height:Ljavafx/beans/property/DoubleProperty;

.field private mesh:Ljavafx/scene/shape/TriangleMesh;

.field private radius:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/16 v6, 0x40

    invoke-direct/range {v1 .. v6}, Ljavafx/scene/shape/Cylinder;-><init>(DDI)V

    .line 65
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-wide v1, p1

    .local v1, "radius":D
    move-wide v3, p3

    .local v3, "height":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const/16 v10, 0x40

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/shape/Cylinder;-><init>(DDI)V

    .line 76
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 11

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-wide v2, p1

    .local v2, "radius":D
    move-wide v4, p3

    .local v4, "height":D
    move/from16 v6, p5

    .local v6, "divisions":I
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/shape/Shape3D;-><init>()V

    .line 56
    move-object v7, v1

    const/16 v8, 0x40

    iput v8, v7, Ljavafx/scene/shape/Cylinder;->divisions:I

    .line 90
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    const/4 v8, 0x3

    :goto_0
    iput v8, v7, Ljavafx/scene/shape/Cylinder;->divisions:I

    .line 91
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Cylinder;->setRadius(D)V

    .line 92
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Cylinder;->setHeight(D)V

    .line 93
    return-void

    .line 90
    :cond_0
    move v8, v6

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Cylinder;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Cylinder;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Cylinder;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Cylinder;)V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Cylinder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Cylinder;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Cylinder;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Cylinder;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Cylinder;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Cylinder;)V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Cylinder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Cylinder;->impl_geomChanged()V

    return-void
.end method

.method static createMesh(IFF)Ljavafx/scene/shape/TriangleMesh;
    .locals 32

    .prologue
    .line 382
    move/from16 v2, p0

    .local v2, "div":I
    move/from16 v3, p1

    .local v3, "h":F
    move/from16 v4, p2

    .local v4, "r":F
    move/from16 v24, v2

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v5, v24

    .line 383
    .local v5, "nPonits":I
    move/from16 v24, v2

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x4

    mul-int/lit8 v24, v24, 0x4

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v6, v24

    .line 384
    .local v6, "tcCount":I
    move/from16 v24, v2

    const/16 v25, 0x4

    mul-int/lit8 v24, v24, 0x4

    move/from16 v7, v24

    .line 386
    .local v7, "faceCount":I
    const/high16 v24, 0x3b800000    # 0.00390625f

    move/from16 v8, v24

    .line 388
    .local v8, "textureDelta":F
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v25, v2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v9, v24

    .line 389
    .local v9, "dA":F
    move/from16 v24, v3

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v24, v24, v25

    move/from16 v3, v24

    .line 391
    move/from16 v24, v5

    const/16 v25, 0x3

    mul-int/lit8 v24, v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    move-object/from16 v10, v24

    .line 392
    .local v10, "points":[F
    move/from16 v24, v6

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 393
    .local v11, "tPoints":[F
    move/from16 v24, v7

    const/16 v25, 0x6

    mul-int/lit8 v24, v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v12, v24

    .line 394
    .local v12, "faces":[I
    move/from16 v24, v7

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v13, v24

    .line 396
    .local v13, "smoothing":[I
    const/16 v24, 0x0

    move/from16 v14, v24

    .local v14, "pPos":I
    const/16 v24, 0x0

    move/from16 v15, v24

    .line 398
    .local v15, "tPos":I
    const/16 v24, 0x0

    move/from16 v16, v24

    .local v16, "i":I
    :goto_0
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 399
    move/from16 v24, v9

    move/from16 v25, v16

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 401
    .local v17, "a":D
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move/from16 v28, v4

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 402
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move/from16 v28, v4

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 403
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v3

    aput v26, v24, v25

    .line 404
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v9

    move/from16 v28, v16

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aput v26, v24, v25

    .line 405
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v8

    sub-float v26, v26, v27

    aput v26, v24, v25

    .line 406
    add-int/lit8 v14, v14, 0x3

    add-int/lit8 v15, v15, 0x2

    .line 398
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 410
    .end local v17    # "a":D
    :cond_0
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 411
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v8

    sub-float v26, v26, v27

    aput v26, v24, v25

    .line 412
    add-int/lit8 v15, v15, 0x2

    .line 414
    const/16 v24, 0x0

    move/from16 v16, v24

    :goto_1
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 415
    move/from16 v24, v9

    move/from16 v25, v16

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 416
    .restart local v17    # "a":D
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move/from16 v28, v4

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 417
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move/from16 v28, v4

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 418
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v3

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 419
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v9

    move/from16 v28, v16

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aput v26, v24, v25

    .line 420
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v8

    aput v26, v24, v25

    .line 421
    add-int/lit8 v14, v14, 0x3

    add-int/lit8 v15, v15, 0x2

    .line 414
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 425
    .end local v17    # "a":D
    :cond_1
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 426
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v8

    aput v26, v24, v25

    .line 427
    add-int/lit8 v15, v15, 0x2

    .line 430
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 431
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v3

    aput v26, v24, v25

    .line 432
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 433
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 434
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    move/from16 v26, v3

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 435
    move-object/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x5

    add-int/lit8 v25, v25, 0x5

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 436
    add-int/lit8 v14, v14, 0x6

    .line 440
    const/16 v24, 0x0

    move/from16 v16, v24

    :goto_2
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    .line 441
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    move/from16 v24, v9

    move/from16 v25, v16

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    :goto_3
    move-wide/from16 v17, v24

    .line 442
    .restart local v17    # "a":D
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 443
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move-wide/from16 v26, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 444
    add-int/lit8 v15, v15, 0x2

    .line 440
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 441
    .end local v17    # "a":D
    :cond_2
    const-wide/16 v24, 0x0

    goto :goto_3

    .line 448
    :cond_3
    const/16 v24, 0x0

    move/from16 v16, v24

    :goto_4
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_5

    .line 449
    move/from16 v24, v16

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    move/from16 v24, v9

    move/from16 v25, v16

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    :goto_5
    move-wide/from16 v17, v24

    .line 450
    .restart local v17    # "a":D
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/high16 v26, 0x3f000000    # 0.5f

    move-wide/from16 v27, v17

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 451
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    const/high16 v26, 0x3f000000    # 0.5f

    move-wide/from16 v27, v17

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    aput v26, v24, v25

    .line 452
    add-int/lit8 v15, v15, 0x2

    .line 448
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 449
    .end local v17    # "a":D
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_5

    .line 455
    :cond_5
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    const/high16 v26, 0x3f000000    # 0.5f

    aput v26, v24, v25

    .line 456
    move-object/from16 v24, v11

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    const/high16 v26, 0x3f000000    # 0.5f

    aput v26, v24, v25

    .line 457
    add-int/lit8 v15, v15, 0x2

    .line 459
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 462
    .local v16, "fIndex":I
    const/16 v24, 0x0

    move/from16 v17, v24

    .local v17, "p0":I
    :goto_6
    move/from16 v24, v17

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 463
    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v18, v24

    .line 464
    .local v18, "p1":I
    move/from16 v24, v17

    move/from16 v25, v2

    add-int v24, v24, v25

    move/from16 v19, v24

    .line 465
    .local v19, "p2":I
    move/from16 v24, v18

    move/from16 v25, v2

    add-int v24, v24, v25

    move/from16 v20, v24

    .line 468
    .local v20, "p3":I
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move/from16 v26, v17

    aput v26, v24, v25

    .line 469
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v17

    aput v26, v24, v25

    .line 470
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move/from16 v26, v19

    aput v26, v24, v25

    .line 471
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aput v26, v24, v25

    .line 472
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    move/from16 v26, v18

    move/from16 v27, v2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v26, 0x0

    :goto_7
    aput v26, v24, v25

    .line 473
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x5

    add-int/lit8 v25, v25, 0x5

    move/from16 v26, v18

    aput v26, v24, v25

    .line 474
    add-int/lit8 v16, v16, 0x6

    .line 478
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move/from16 v26, v20

    move/from16 v27, v2

    rem-int v26, v26, v27

    if-nez v26, :cond_7

    move/from16 v26, v20

    move/from16 v27, v2

    sub-int v26, v26, v27

    :goto_8
    aput v26, v24, v25

    .line 479
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v20

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aput v26, v24, v25

    .line 480
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move/from16 v26, v18

    move/from16 v27, v2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v26, 0x0

    :goto_9
    aput v26, v24, v25

    .line 481
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    move/from16 v26, v18

    aput v26, v24, v25

    .line 482
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    move/from16 v26, v19

    aput v26, v24, v25

    .line 483
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x5

    add-int/lit8 v25, v25, 0x5

    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aput v26, v24, v25

    .line 484
    add-int/lit8 v16, v16, 0x6

    .line 462
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 472
    :cond_6
    move/from16 v26, v18

    goto :goto_7

    .line 478
    :cond_7
    move/from16 v26, v20

    goto :goto_8

    .line 480
    :cond_8
    move/from16 v26, v18

    goto :goto_9

    .line 488
    .end local v18    # "p1":I
    .end local v19    # "p2":I
    .end local v20    # "p3":I
    :cond_9
    move/from16 v24, v2

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    move/from16 v17, v24

    .line 489
    .local v17, "tStart":I
    move/from16 v24, v2

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x4

    mul-int/lit8 v24, v24, 0x4

    move/from16 v18, v24

    .line 490
    .local v18, "t1":I
    move/from16 v24, v2

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    move/from16 v19, v24

    .line 493
    .local v19, "p1":I
    const/16 v24, 0x0

    move/from16 v20, v24

    .local v20, "p0":I
    :goto_a
    move/from16 v24, v20

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 494
    move/from16 v24, v20

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v21, v24

    .line 495
    .local v21, "p2":I
    move/from16 v24, v17

    move/from16 v25, v20

    add-int v24, v24, v25

    move/from16 v22, v24

    .line 496
    .local v22, "t0":I
    move/from16 v24, v22

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v23, v24

    .line 499
    .local v23, "t2":I
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move/from16 v26, v20

    aput v26, v24, v25

    .line 500
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v22

    aput v26, v24, v25

    .line 501
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move/from16 v26, v21

    move/from16 v27, v2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/16 v26, 0x0

    :goto_b
    aput v26, v24, v25

    .line 502
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    move/from16 v26, v23

    aput v26, v24, v25

    .line 503
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    move/from16 v26, v19

    aput v26, v24, v25

    .line 504
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x5

    add-int/lit8 v25, v25, 0x5

    move/from16 v26, v18

    aput v26, v24, v25

    .line 505
    add-int/lit8 v16, v16, 0x6

    .line 493
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 501
    :cond_a
    move/from16 v26, v21

    goto :goto_b

    .line 508
    .end local v21    # "p2":I
    .end local v22    # "t0":I
    .end local v23    # "t2":I
    :cond_b
    move/from16 v24, v2

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v19, v24

    .line 509
    move/from16 v24, v2

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x3

    mul-int/lit8 v24, v24, 0x3

    move/from16 v17, v24

    .line 512
    const/16 v24, 0x0

    move/from16 v20, v24

    :goto_c
    move/from16 v24, v20

    move/from16 v25, v2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 513
    move/from16 v24, v20

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v2

    add-int v24, v24, v25

    move/from16 v21, v24

    .line 514
    .restart local v21    # "p2":I
    move/from16 v24, v17

    move/from16 v25, v20

    add-int v24, v24, v25

    move/from16 v22, v24

    .line 515
    .restart local v22    # "t0":I
    move/from16 v24, v22

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v23, v24

    .line 518
    .restart local v23    # "t2":I
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x0

    add-int/lit8 v25, v25, 0x0

    move/from16 v26, v20

    move/from16 v27, v2

    add-int v26, v26, v27

    aput v26, v24, v25

    .line 519
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v22

    aput v26, v24, v25

    .line 520
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move/from16 v26, v19

    aput v26, v24, v25

    .line 521
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    move/from16 v26, v18

    aput v26, v24, v25

    .line 522
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x4

    add-int/lit8 v25, v25, 0x4

    move/from16 v26, v21

    move/from16 v27, v2

    rem-int v26, v26, v27

    if-nez v26, :cond_c

    move/from16 v26, v21

    move/from16 v27, v2

    sub-int v26, v26, v27

    :goto_d
    aput v26, v24, v25

    .line 523
    move-object/from16 v24, v12

    move/from16 v25, v16

    const/16 v26, 0x5

    add-int/lit8 v25, v25, 0x5

    move/from16 v26, v23

    aput v26, v24, v25

    .line 524
    add-int/lit8 v16, v16, 0x6

    .line 512
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 522
    :cond_c
    move/from16 v26, v21

    goto :goto_d

    .line 527
    .end local v21    # "p2":I
    .end local v22    # "t0":I
    .end local v23    # "t2":I
    :cond_d
    const/16 v24, 0x0

    move/from16 v20, v24

    .local v20, "i":I
    :goto_e
    move/from16 v24, v20

    move/from16 v25, v2

    const/16 v26, 0x2

    mul-int/lit8 v25, v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 528
    move-object/from16 v24, v13

    move/from16 v25, v20

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 527
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 530
    :cond_e
    move/from16 v24, v2

    const/16 v25, 0x2

    mul-int/lit8 v24, v24, 0x2

    move/from16 v20, v24

    :goto_f
    move/from16 v24, v20

    move/from16 v25, v2

    const/16 v26, 0x4

    mul-int/lit8 v25, v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 531
    move-object/from16 v24, v13

    move/from16 v25, v20

    const/16 v26, 0x2

    aput v26, v24, v25

    .line 530
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 534
    :cond_f
    new-instance v24, Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Ljavafx/scene/shape/TriangleMesh;-><init>(Z)V

    move-object/from16 v20, v24

    .line 535
    .local v20, "m":Ljavafx/scene/shape/TriangleMesh;
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/TriangleMesh;->getPoints()Ljavafx/collections/ObservableFloatArray;

    move-result-object v24

    move-object/from16 v25, v10

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 536
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/TriangleMesh;->getTexCoords()Ljavafx/collections/ObservableFloatArray;

    move-result-object v24

    move-object/from16 v25, v11

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 537
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/TriangleMesh;->getFaces()Ljavafx/scene/shape/ObservableFaceArray;

    move-result-object v24

    move-object/from16 v25, v12

    invoke-interface/range {v24 .. v25}, Ljavafx/scene/shape/ObservableFaceArray;->setAll([I)V

    .line 538
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/TriangleMesh;->getFaceSmoothingGroups()Ljavafx/collections/ObservableIntegerArray;

    move-result-object v24

    move-object/from16 v25, v13

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableIntegerArray;->setAll([I)V

    .line 540
    move-object/from16 v24, v20

    move-object/from16 v2, v24

    .end local v2    # "div":I
    return-object v2
.end method

.method private static generateKey(FFI)I
    .locals 6

    .prologue
    .line 544
    move v0, p0

    .local v0, "h":F
    move v1, p1

    .local v1, "r":F
    move v2, p2

    .local v2, "div":I
    const/4 v4, 0x7

    move v3, v4

    .line 545
    .local v3, "hash":I
    const/16 v4, 0x2f

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 546
    const/16 v4, 0x2f

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 547
    const/16 v4, 0x2f

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 548
    move v4, v3

    move v0, v4

    .end local v0    # "h":F
    return v0
.end method


# virtual methods
.method public getDivisions()I
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/Cylinder;->divisions:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Cylinder;
    return v0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Cylinder;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Cylinder;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Cylinder;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Cylinder;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 112
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Cylinder$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "height"

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Cylinder$1;-><init>(Ljavafx/scene/shape/Cylinder;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Cylinder;->height:Ljavafx/beans/property/DoubleProperty;

    .line 122
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Cylinder;
    return-object v1
.end method

.method protected impl_computeContains(DD)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Cylinder;->getRadius()D

    move-result-wide v10

    move-wide v6, v10

    .line 228
    .local v6, "w":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Cylinder;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    move-wide v8, v10

    .line 229
    .local v8, "hh":D
    move-wide v10, v6

    neg-double v10, v10

    move-wide v12, v2

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v2

    move-wide v12, v6

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v8

    neg-double v10, v10

    move-wide v12, v4

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v4

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/scene/shape/Cylinder;
    return v1

    .restart local v1    # "this":Ljavafx/scene/shape/Cylinder;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/Cylinder;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    move v3, v6

    .line 207
    .local v3, "h":F
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/Cylinder;->getRadius()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 209
    .local v4, "r":F
    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    move v6, v3

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 210
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v0, v6

    .line 217
    .end local v0    # "this":Ljavafx/scene/shape/Cylinder;
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "this":Ljavafx/scene/shape/Cylinder;
    :cond_1
    move v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 215
    .local v5, "hh":F
    move-object v6, v1

    move v7, v4

    neg-float v7, v7

    move v8, v5

    neg-float v8, v8

    move v9, v4

    neg-float v9, v9

    move v10, v4

    move v11, v5

    move v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 216
    move-object v6, v2

    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 217
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 69
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/Cylinder;
    move-object/from16 v3, p1

    .local v3, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v4, p2

    .local v4, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget v0, v0, Ljavafx/scene/shape/Cylinder;->divisions:I

    move/from16 v56, v0

    const/16 v57, 0x40

    move/from16 v0, v56

    move/from16 v1, v57

    if-ge v0, v1, :cond_a

    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget-object v0, v0, Ljavafx/scene/shape/Cylinder;->mesh:Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v56, v0

    if-eqz v56, :cond_a

    const/16 v56, 0x1

    :goto_0
    move/from16 v5, v56

    .line 243
    .local v5, "exactPicking":Z
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/shape/Cylinder;->getRadius()D

    move-result-wide v56

    move-wide/from16 v6, v56

    .line 244
    .local v6, "r":D
    move-object/from16 v56, v3

    invoke-virtual/range {v56 .. v56}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v56

    move-object/from16 v8, v56

    .line 245
    .local v8, "dir":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v56, v8

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v56, v0

    move-wide/from16 v9, v56

    .line 246
    .local v9, "dirX":D
    move-object/from16 v56, v8

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v56, v0

    move-wide/from16 v11, v56

    .line 247
    .local v11, "dirY":D
    move-object/from16 v56, v8

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v56, v0

    move-wide/from16 v13, v56

    .line 248
    .local v13, "dirZ":D
    move-object/from16 v56, v3

    invoke-virtual/range {v56 .. v56}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v56

    move-object/from16 v15, v56

    .line 249
    .local v15, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v56, v15

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v56, v0

    move-wide/from16 v16, v56

    .line 250
    .local v16, "originX":D
    move-object/from16 v56, v15

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v56, v0

    move-wide/from16 v18, v56

    .line 251
    .local v18, "originY":D
    move-object/from16 v56, v15

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v56, v0

    move-wide/from16 v20, v56

    .line 252
    .local v20, "originZ":D
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/shape/Cylinder;->getHeight()D

    move-result-wide v56

    move-wide/from16 v22, v56

    .line 253
    .local v22, "h":D
    move-wide/from16 v56, v22

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v24, v56

    .line 254
    .local v24, "halfHeight":D
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/shape/Cylinder;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v56

    move-object/from16 v26, v56

    .line 259
    .local v26, "cullFace":Ljavafx/scene/shape/CullFace;
    move-wide/from16 v56, v9

    move-wide/from16 v58, v9

    mul-double v56, v56, v58

    move-wide/from16 v58, v13

    move-wide/from16 v60, v13

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v27, v56

    .line 260
    .local v27, "a":D
    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    move-wide/from16 v58, v9

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    move-wide/from16 v60, v13

    move-wide/from16 v62, v20

    mul-double v60, v60, v62

    add-double v58, v58, v60

    mul-double v56, v56, v58

    move-wide/from16 v29, v56

    .line 261
    .local v29, "b":D
    move-wide/from16 v56, v16

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move-wide/from16 v58, v20

    move-wide/from16 v60, v20

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v58, v6

    move-wide/from16 v60, v6

    mul-double v58, v58, v60

    sub-double v56, v56, v58

    move-wide/from16 v31, v56

    .line 263
    .local v31, "c":D
    move-wide/from16 v56, v29

    move-wide/from16 v58, v29

    mul-double v56, v56, v58

    const-wide/high16 v58, 0x4010000000000000L    # 4.0

    move-wide/from16 v60, v27

    mul-double v58, v58, v60

    move-wide/from16 v60, v31

    mul-double v58, v58, v60

    sub-double v56, v56, v58

    move-wide/from16 v33, v56

    .line 265
    .local v33, "discriminant":D
    const-wide/high16 v56, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v39, v56

    .line 266
    .local v39, "t":D
    move-object/from16 v56, v3

    invoke-virtual/range {v56 .. v56}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v56

    move-wide/from16 v41, v56

    .line 267
    .local v41, "minDistance":D
    move-object/from16 v56, v3

    invoke-virtual/range {v56 .. v56}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v56

    move-wide/from16 v43, v56

    .line 269
    .local v43, "maxDistance":D
    move-wide/from16 v56, v33

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_4

    move-wide/from16 v56, v9

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-nez v56, :cond_0

    move-wide/from16 v56, v13

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-eqz v56, :cond_4

    .line 272
    :cond_0
    move-wide/from16 v56, v33

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    move-wide/from16 v45, v56

    .line 273
    .local v45, "distSqrt":D
    move-wide/from16 v56, v29

    const-wide/16 v58, 0x0

    cmpg-double v56, v56, v58

    if-gez v56, :cond_b

    move-wide/from16 v56, v29

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v45

    sub-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    :goto_1
    move-wide/from16 v47, v56

    .line 275
    .local v47, "q":D
    move-wide/from16 v56, v47

    move-wide/from16 v58, v27

    div-double v56, v56, v58

    move-wide/from16 v35, v56

    .line 276
    .local v35, "t0":D
    move-wide/from16 v56, v31

    move-wide/from16 v58, v47

    div-double v56, v56, v58

    move-wide/from16 v37, v56

    .line 278
    .local v37, "t1":D
    move-wide/from16 v56, v35

    move-wide/from16 v58, v37

    cmpl-double v56, v56, v58

    if-lez v56, :cond_1

    .line 279
    move-wide/from16 v56, v35

    move-wide/from16 v49, v56

    .line 280
    .local v49, "temp":D
    move-wide/from16 v56, v37

    move-wide/from16 v35, v56

    .line 281
    move-wide/from16 v56, v49

    move-wide/from16 v37, v56

    .line 285
    .end local v49    # "temp":D
    :cond_1
    move-wide/from16 v56, v18

    move-wide/from16 v58, v35

    move-wide/from16 v60, v11

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v49, v56

    .line 286
    .local v49, "y0":D
    move-wide/from16 v56, v35

    move-wide/from16 v58, v41

    cmpg-double v56, v56, v58

    if-ltz v56, :cond_2

    move-wide/from16 v56, v49

    move-wide/from16 v58, v24

    move-wide/from16 v0, v58

    neg-double v0, v0

    move-wide/from16 v58, v0

    cmpg-double v56, v56, v58

    if-ltz v56, :cond_2

    move-wide/from16 v56, v49

    move-wide/from16 v58, v24

    cmpl-double v56, v56, v58

    if-gtz v56, :cond_2

    move-object/from16 v56, v26

    sget-object v57, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_c

    .line 287
    :cond_2
    move-wide/from16 v56, v18

    move-wide/from16 v58, v37

    move-wide/from16 v60, v11

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v51, v56

    .line 288
    .local v51, "y1":D
    move-wide/from16 v56, v37

    move-wide/from16 v58, v41

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_4

    move-wide/from16 v56, v37

    move-wide/from16 v58, v43

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_4

    move-wide/from16 v56, v51

    move-wide/from16 v58, v24

    move-wide/from16 v0, v58

    neg-double v0, v0

    move-wide/from16 v58, v0

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_4

    move-wide/from16 v56, v51

    move-wide/from16 v58, v24

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_4

    .line 289
    move-object/from16 v56, v26

    sget-object v57, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_3

    move/from16 v56, v5

    if-eqz v56, :cond_4

    .line 295
    :cond_3
    move-wide/from16 v56, v37

    move-wide/from16 v39, v56

    .line 298
    .line 309
    .end local v35    # "t0":D
    .end local v37    # "t1":D
    .end local v45    # "distSqrt":D
    .end local v47    # "q":D
    .end local v49    # "y0":D
    .end local v51    # "y1":D
    :cond_4
    :goto_2
    const/16 v56, 0x0

    move/from16 v45, v56

    .local v45, "topCap":Z
    const/16 v56, 0x0

    move/from16 v46, v56

    .line 310
    .local v46, "bottomCap":Z
    move-wide/from16 v56, v39

    const-wide/high16 v58, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v56, v56, v58

    if-eqz v56, :cond_5

    move/from16 v56, v5

    if-nez v56, :cond_8

    .line 311
    :cond_5
    move-wide/from16 v56, v24

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v18

    sub-double v56, v56, v58

    move-wide/from16 v58, v11

    div-double v56, v56, v58

    move-wide/from16 v47, v56

    .line 312
    .local v47, "tBottom":D
    move-wide/from16 v56, v24

    move-wide/from16 v58, v18

    sub-double v56, v56, v58

    move-wide/from16 v58, v11

    div-double v56, v56, v58

    move-wide/from16 v49, v56

    .line 313
    .local v49, "tTop":D
    const/16 v56, 0x0

    move/from16 v51, v56

    .line 315
    .local v51, "isT0Bottom":Z
    move-wide/from16 v56, v47

    move-wide/from16 v58, v49

    cmpg-double v56, v56, v58

    if-gez v56, :cond_d

    .line 316
    move-wide/from16 v56, v47

    move-wide/from16 v35, v56

    .line 317
    .restart local v35    # "t0":D
    move-wide/from16 v56, v49

    move-wide/from16 v37, v56

    .line 318
    .restart local v37    # "t1":D
    const/16 v56, 0x1

    move/from16 v51, v56

    .line 324
    :goto_3
    move-wide/from16 v56, v35

    move-wide/from16 v58, v41

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_6

    move-wide/from16 v56, v35

    move-wide/from16 v58, v43

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_6

    move-wide/from16 v56, v35

    move-wide/from16 v58, v39

    cmpg-double v56, v56, v58

    if-gez v56, :cond_6

    move-object/from16 v56, v26

    sget-object v57, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_6

    .line 325
    move-wide/from16 v56, v16

    move-wide/from16 v58, v9

    move-wide/from16 v60, v35

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 326
    .local v52, "tX":D
    move-wide/from16 v56, v20

    move-wide/from16 v58, v13

    move-wide/from16 v60, v35

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v54, v56

    .line 327
    .local v54, "tZ":D
    move-wide/from16 v56, v52

    move-wide/from16 v58, v52

    mul-double v56, v56, v58

    move-wide/from16 v58, v54

    move-wide/from16 v60, v54

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v58, v6

    move-wide/from16 v60, v6

    mul-double v58, v58, v60

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_6

    .line 328
    move/from16 v56, v51

    move/from16 v46, v56

    move/from16 v56, v51

    if-nez v56, :cond_e

    const/16 v56, 0x1

    :goto_4
    move/from16 v45, v56

    .line 329
    move-wide/from16 v56, v35

    move-wide/from16 v39, v56

    .line 333
    .end local v52    # "tX":D
    .end local v54    # "tZ":D
    :cond_6
    move-wide/from16 v56, v37

    move-wide/from16 v58, v41

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_8

    move-wide/from16 v56, v37

    move-wide/from16 v58, v43

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_8

    move-wide/from16 v56, v37

    move-wide/from16 v58, v39

    cmpg-double v56, v56, v58

    if-gez v56, :cond_8

    move-object/from16 v56, v26

    sget-object v57, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_7

    move/from16 v56, v5

    if-eqz v56, :cond_8

    .line 334
    :cond_7
    move-wide/from16 v56, v16

    move-wide/from16 v58, v9

    move-wide/from16 v60, v37

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 335
    .restart local v52    # "tX":D
    move-wide/from16 v56, v20

    move-wide/from16 v58, v13

    move-wide/from16 v60, v37

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v54, v56

    .line 336
    .restart local v54    # "tZ":D
    move-wide/from16 v56, v52

    move-wide/from16 v58, v52

    mul-double v56, v56, v58

    move-wide/from16 v58, v54

    move-wide/from16 v60, v54

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v58, v6

    move-wide/from16 v60, v6

    mul-double v58, v58, v60

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_8

    .line 337
    move/from16 v56, v51

    move/from16 v45, v56

    move/from16 v56, v51

    if-nez v56, :cond_f

    const/16 v56, 0x1

    :goto_5
    move/from16 v46, v56

    .line 338
    move-wide/from16 v56, v37

    move-wide/from16 v39, v56

    .line 343
    .end local v35    # "t0":D
    .end local v37    # "t1":D
    .end local v47    # "tBottom":D
    .end local v49    # "tTop":D
    .end local v51    # "isT0Bottom":Z
    .end local v52    # "tX":D
    .end local v54    # "tZ":D
    :cond_8
    move-wide/from16 v56, v39

    invoke-static/range {v56 .. v57}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v56

    if-nez v56, :cond_9

    move-wide/from16 v56, v39

    invoke-static/range {v56 .. v57}, Ljava/lang/Double;->isNaN(D)Z

    move-result v56

    if-eqz v56, :cond_10

    .line 345
    :cond_9
    const/16 v56, 0x0

    move/from16 v2, v56

    .line 376
    .end local v2    # "this":Ljavafx/scene/shape/Cylinder;
    :goto_6
    return v2

    .line 241
    .end local v5    # "exactPicking":Z
    .end local v6    # "r":D
    .end local v8    # "dir":Lcom/sun/javafx/geom/Vec3d;
    .end local v9    # "dirX":D
    .end local v11    # "dirY":D
    .end local v13    # "dirZ":D
    .end local v15    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .end local v16    # "originX":D
    .end local v18    # "originY":D
    .end local v20    # "originZ":D
    .end local v22    # "h":D
    .end local v24    # "halfHeight":D
    .end local v26    # "cullFace":Ljavafx/scene/shape/CullFace;
    .end local v27    # "a":D
    .end local v29    # "b":D
    .end local v31    # "c":D
    .end local v33    # "discriminant":D
    .end local v39    # "t":D
    .end local v41    # "minDistance":D
    .end local v43    # "maxDistance":D
    .end local v45    # "topCap":Z
    .end local v46    # "bottomCap":Z
    .restart local v2    # "this":Ljavafx/scene/shape/Cylinder;
    :cond_a
    const/16 v56, 0x0

    goto/16 :goto_0

    .line 273
    .restart local v5    # "exactPicking":Z
    .restart local v6    # "r":D
    .restart local v8    # "dir":Lcom/sun/javafx/geom/Vec3d;
    .restart local v9    # "dirX":D
    .restart local v11    # "dirY":D
    .restart local v13    # "dirZ":D
    .restart local v15    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .restart local v16    # "originX":D
    .restart local v18    # "originY":D
    .restart local v20    # "originZ":D
    .restart local v22    # "h":D
    .restart local v24    # "halfHeight":D
    .restart local v26    # "cullFace":Ljavafx/scene/shape/CullFace;
    .restart local v27    # "a":D
    .restart local v29    # "b":D
    .restart local v31    # "c":D
    .restart local v33    # "discriminant":D
    .restart local v39    # "t":D
    .restart local v41    # "minDistance":D
    .restart local v43    # "maxDistance":D
    .local v45, "distSqrt":D
    :cond_b
    move-wide/from16 v56, v29

    move-wide/from16 v0, v56

    neg-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v45

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    goto/16 :goto_1

    .line 298
    .restart local v35    # "t0":D
    .restart local v37    # "t1":D
    .local v47, "q":D
    .local v49, "y0":D
    :cond_c
    move-wide/from16 v56, v35

    move-wide/from16 v58, v43

    cmpg-double v56, v56, v58

    if-gtz v56, :cond_4

    .line 300
    move-wide/from16 v56, v35

    move-wide/from16 v39, v56

    goto/16 :goto_2

    .line 320
    .end local v35    # "t0":D
    .end local v37    # "t1":D
    .local v45, "topCap":Z
    .restart local v46    # "bottomCap":Z
    .local v47, "tBottom":D
    .local v49, "tTop":D
    .restart local v51    # "isT0Bottom":Z
    :cond_d
    move-wide/from16 v56, v49

    move-wide/from16 v35, v56

    .line 321
    .restart local v35    # "t0":D
    move-wide/from16 v56, v47

    move-wide/from16 v37, v56

    .restart local v37    # "t1":D
    goto/16 :goto_3

    .line 328
    .restart local v52    # "tX":D
    .restart local v54    # "tZ":D
    :cond_e
    const/16 v56, 0x0

    goto/16 :goto_4

    .line 337
    :cond_f
    const/16 v56, 0x0

    goto :goto_5

    .line 348
    .end local v35    # "t0":D
    .end local v37    # "t1":D
    .end local v47    # "tBottom":D
    .end local v49    # "tTop":D
    .end local v51    # "isT0Bottom":Z
    .end local v52    # "tX":D
    .end local v54    # "tZ":D
    :cond_10
    move/from16 v56, v5

    if-eqz v56, :cond_11

    .line 349
    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget-object v0, v0, Ljavafx/scene/shape/Cylinder;->mesh:Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v56, v0

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move-object/from16 v59, v2

    move-object/from16 v60, v26

    const/16 v61, 0x0

    invoke-virtual/range {v56 .. v61}, Ljavafx/scene/shape/TriangleMesh;->impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;Ljavafx/scene/Node;Ljavafx/scene/shape/CullFace;Z)Z

    move-result v56

    move/from16 v2, v56

    goto :goto_6

    .line 352
    :cond_11
    move-object/from16 v56, v4

    if-eqz v56, :cond_12

    move-object/from16 v56, v4

    move-wide/from16 v57, v39

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/scene/input/PickResultChooser;->isCloser(D)Z

    move-result v56

    if-eqz v56, :cond_12

    .line 353
    move-object/from16 v56, v3

    move-wide/from16 v57, v39

    invoke-static/range {v56 .. v58}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v56

    move-object/from16 v47, v56

    .line 356
    .local v47, "point":Ljavafx/geometry/Point3D;
    move/from16 v56, v45

    if-eqz v56, :cond_13

    .line 357
    new-instance v56, Ljavafx/geometry/Point2D;

    move-object/from16 v68, v56

    move-object/from16 v56, v68

    move-object/from16 v57, v68

    const-wide/high16 v58, 0x3fe0000000000000L    # 0.5

    move-object/from16 v60, v47

    .line 358
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    move-wide/from16 v64, v6

    mul-double v62, v62, v64

    div-double v60, v60, v62

    add-double v58, v58, v60

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    move-object/from16 v62, v47

    .line 359
    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v62

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    move-wide/from16 v66, v6

    mul-double v64, v64, v66

    div-double v62, v62, v64

    add-double v60, v60, v62

    invoke-direct/range {v57 .. v61}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v48, v56

    .line 374
    .local v48, "txCoords":Ljavafx/geometry/Point2D;
    :goto_7
    move-object/from16 v56, v4

    move-object/from16 v57, v2

    move-wide/from16 v58, v39

    const/16 v60, -0x1

    move-object/from16 v61, v47

    move-object/from16 v62, v48

    invoke-virtual/range {v56 .. v62}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v56

    .line 376
    .end local v47    # "point":Ljavafx/geometry/Point3D;
    .end local v48    # "txCoords":Ljavafx/geometry/Point2D;
    :cond_12
    const/16 v56, 0x1

    move/from16 v2, v56

    goto/16 :goto_6

    .line 360
    .restart local v47    # "point":Ljavafx/geometry/Point3D;
    :cond_13
    move/from16 v56, v46

    if-eqz v56, :cond_14

    .line 361
    new-instance v56, Ljavafx/geometry/Point2D;

    move-object/from16 v68, v56

    move-object/from16 v56, v68

    move-object/from16 v57, v68

    const-wide/high16 v58, 0x3fe0000000000000L    # 0.5

    move-object/from16 v60, v47

    .line 362
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    move-wide/from16 v64, v6

    mul-double v62, v62, v64

    div-double v60, v60, v62

    add-double v58, v58, v60

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    move-object/from16 v62, v47

    .line 363
    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v62

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    move-wide/from16 v66, v6

    mul-double v64, v64, v66

    div-double v62, v62, v64

    sub-double v60, v60, v62

    invoke-direct/range {v57 .. v61}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v48, v56

    .restart local v48    # "txCoords":Ljavafx/geometry/Point2D;
    goto :goto_7

    .line 365
    .end local v48    # "txCoords":Ljavafx/geometry/Point2D;
    :cond_14
    new-instance v56, Ljavafx/geometry/Point3D;

    move-object/from16 v68, v56

    move-object/from16 v56, v68

    move-object/from16 v57, v68

    move-object/from16 v58, v47

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v58

    const-wide/16 v60, 0x0

    move-object/from16 v62, v47

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v62

    invoke-direct/range {v57 .. v63}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v49, v56

    .line 366
    .local v49, "proj":Ljavafx/geometry/Point3D;
    move-object/from16 v56, v49

    sget-object v57, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v56 .. v57}, Ljavafx/geometry/Point3D;->crossProduct(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v56

    move-object/from16 v50, v56

    .line 367
    .local v50, "cross":Ljavafx/geometry/Point3D;
    move-object/from16 v56, v49

    sget-object v57, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v56 .. v57}, Ljavafx/geometry/Point3D;->angle(Ljavafx/geometry/Point3D;)D

    move-result-wide v56

    move-wide/from16 v51, v56

    .line 368
    .local v51, "angle":D
    move-object/from16 v56, v50

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v56

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-lez v56, :cond_15

    .line 369
    const-wide v56, 0x4076800000000000L    # 360.0

    move-wide/from16 v58, v51

    sub-double v56, v56, v58

    move-wide/from16 v51, v56

    .line 371
    :cond_15
    new-instance v56, Ljavafx/geometry/Point2D;

    move-object/from16 v68, v56

    move-object/from16 v56, v68

    move-object/from16 v57, v68

    const-wide/high16 v58, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v60, v51

    const-wide v62, 0x4076800000000000L    # 360.0

    div-double v60, v60, v62

    sub-double v58, v58, v60

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    move-object/from16 v62, v47

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v62

    move-wide/from16 v64, v22

    div-double v62, v62, v64

    add-double v60, v60, v62

    invoke-direct/range {v57 .. v61}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v48, v56

    .restart local v48    # "txCoords":Ljavafx/geometry/Point2D;
    goto/16 :goto_7
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGCylinder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGCylinder;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Cylinder;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/shape/Shape3D;->impl_updatePeer()V

    .line 172
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Cylinder;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Cylinder;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/sg/prism/NGCylinder;

    move-object v1, v4

    .line 174
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGCylinder;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Cylinder;->getHeight()D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 175
    .local v2, "h":F
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Cylinder;->getRadius()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 176
    .local v3, "r":F
    move v4, v2

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 177
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGCylinder;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    .line 187
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCylinder;
    .end local v2    # "h":F
    .end local v3    # "r":F
    :cond_1
    :goto_0
    return-void

    .line 179
    .restart local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCylinder;
    .restart local v2    # "h":F
    .restart local v3    # "r":F
    :cond_2
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/shape/Cylinder;->key:I

    if-nez v4, :cond_3

    .line 180
    move-object v4, v0

    move v5, v2

    move v6, v3

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/shape/Cylinder;->divisions:I

    invoke-static {v5, v6, v7}, Ljavafx/scene/shape/Cylinder;->generateKey(FFI)I

    move-result v5

    iput v5, v4, Ljavafx/scene/shape/Cylinder;->key:I

    .line 182
    :cond_3
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/Cylinder;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    move v6, v2

    move v7, v3

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/shape/Cylinder;->divisions:I

    move-object v9, v0

    iget v9, v9, Ljavafx/scene/shape/Cylinder;->key:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/shape/PredefinedMeshManager;->getCylinderMesh(FFII)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/shape/Cylinder;->mesh:Ljavafx/scene/shape/TriangleMesh;

    .line 183
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Cylinder;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->impl_updatePG()V

    .line 184
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/Cylinder;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v5}, Ljavafx/scene/shape/TriangleMesh;->impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGCylinder;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    goto :goto_0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Cylinder;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 142
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Cylinder$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "radius"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Cylinder$2;-><init>(Ljavafx/scene/shape/Cylinder;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Cylinder;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 152
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Cylinder;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Cylinder;
    return-object v1
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Cylinder;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 104
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Cylinder;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Cylinder;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 134
    return-void
.end method
