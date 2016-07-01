.class public Ljavafx/scene/shape/Sphere;
.super Ljavafx/scene/shape/Shape3D;
.source "Sphere.java"


# static fields
.field static final DEFAULT_DIVISIONS:I = 0x40

.field static final DEFAULT_RADIUS:D = 1.0


# instance fields
.field private divisions:I

.field private mesh:Ljavafx/scene/shape/TriangleMesh;

.field private radius:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/shape/Sphere;-><init>(DI)V

    .line 63
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    move-wide v1, p1

    .local v1, "radius":D
    move-object v3, v0

    move-wide v4, v1

    const/16 v6, 0x40

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/shape/Sphere;-><init>(DI)V

    .line 73
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 9

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Sphere;
    move-wide v2, p1

    .local v2, "radius":D
    move v4, p3

    .local v4, "divisions":I
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/shape/Shape3D;-><init>()V

    .line 54
    move-object v5, v1

    const/16 v6, 0x40

    iput v6, v5, Ljavafx/scene/shape/Sphere;->divisions:I

    .line 88
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, v5, Ljavafx/scene/shape/Sphere;->divisions:I

    .line 89
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Sphere;->setRadius(D)V

    .line 90
    return-void

    .line 88
    :cond_0
    move v6, v4

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Sphere;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Sphere;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Sphere;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Sphere;)V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Sphere;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Sphere;->impl_geomChanged()V

    return-void
.end method

.method private static correctDivisions(I)I
    .locals 3

    .prologue
    .line 288
    move v0, p0

    .local v0, "div":I
    move v1, v0

    const/4 v2, 0x3

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    move v0, v1

    .end local v0    # "div":I
    return v0
.end method

.method static createMesh(IF)Ljavafx/scene/shape/TriangleMesh;
    .locals 35

    .prologue
    .line 292
    move/from16 v3, p0

    .local v3, "div":I
    move/from16 v4, p1

    .local v4, "r":F
    move/from16 v28, v3

    invoke-static/range {v28 .. v28}, Ljavafx/scene/shape/Sphere;->correctDivisions(I)I

    move-result v28

    move/from16 v3, v28

    .line 295
    move/from16 v28, v3

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    move/from16 v5, v28

    .line 297
    .local v5, "div2":I
    move/from16 v28, v3

    move/from16 v29, v5

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    mul-int v28, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v28, v28, 0x2

    move/from16 v6, v28

    .line 298
    .local v6, "nPoints":I
    move/from16 v28, v3

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v29, v5

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    mul-int v28, v28, v29

    move/from16 v29, v3

    const/16 v30, 0x2

    mul-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move/from16 v7, v28

    .line 299
    .local v7, "nTPoints":I
    move/from16 v28, v3

    move/from16 v29, v5

    const/16 v30, 0x2

    add-int/lit8 v29, v29, -0x2

    mul-int v28, v28, v29

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    move/from16 v29, v3

    const/16 v30, 0x2

    mul-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move/from16 v8, v28

    .line 301
    .local v8, "nFaces":I
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v29, v3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v9, v28

    .line 303
    .local v9, "rDiv":F
    move/from16 v28, v6

    const/16 v29, 0x3

    mul-int/lit8 v28, v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v10, v28

    .line 304
    .local v10, "points":[F
    move/from16 v28, v7

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v11, v28

    .line 305
    .local v11, "tPoints":[F
    move/from16 v28, v8

    const/16 v29, 0x6

    mul-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v12, v28

    .line 307
    .local v12, "faces":[I
    const/16 v28, 0x0

    move/from16 v13, v28

    .local v13, "pPos":I
    const/16 v28, 0x0

    move/from16 v14, v28

    .line 309
    .local v14, "tPos":I
    const/16 v28, 0x0

    move/from16 v15, v28

    .local v15, "y":I
    :goto_0
    move/from16 v28, v15

    move/from16 v29, v5

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 310
    move/from16 v28, v9

    move/from16 v29, v15

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v5

    const/16 v31, 0x2

    div-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    const v29, 0x40490fdb    # (float)Math.PI

    mul-float v28, v28, v29

    move/from16 v16, v28

    .line 311
    .local v16, "va":F
    move/from16 v28, v16

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v17, v28

    .line 312
    .local v17, "sin_va":F
    move/from16 v28, v16

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v18, v28

    .line 314
    .local v18, "cos_va":F
    const/high16 v28, 0x3f000000    # 0.5f

    move/from16 v29, v17

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v19, v28

    .line 315
    .local v19, "ty":F
    const/16 v28, 0x0

    move/from16 v20, v28

    .local v20, "i":I
    :goto_1
    move/from16 v28, v20

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 316
    move/from16 v28, v9

    move/from16 v29, v20

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    const v29, 0x40490fdb    # (float)Math.PI

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v21, v28

    .line 317
    .local v21, "a":D
    move-wide/from16 v28, v21

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v23, v28

    .line 318
    .local v23, "hSin":F
    move-wide/from16 v28, v21

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v24, v28

    .line 319
    .local v24, "hCos":F
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move/from16 v30, v23

    move/from16 v31, v18

    mul-float v30, v30, v31

    move/from16 v31, v4

    mul-float v30, v30, v31

    aput v30, v28, v29

    .line 320
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v30, v24

    move/from16 v31, v18

    mul-float v30, v30, v31

    move/from16 v31, v4

    mul-float v30, v30, v31

    aput v30, v28, v29

    .line 321
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v17

    move/from16 v31, v4

    mul-float v30, v30, v31

    aput v30, v28, v29

    .line 322
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v31, v9

    move/from16 v32, v20

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 323
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v19

    aput v30, v28, v29

    .line 324
    add-int/lit8 v13, v13, 0x3

    .line 325
    add-int/lit8 v14, v14, 0x2

    .line 315
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 327
    .end local v21    # "a":D
    .end local v23    # "hSin":F
    .end local v24    # "hCos":F
    :cond_0
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 328
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v19

    aput v30, v28, v29

    .line 329
    add-int/lit8 v14, v14, 0x2

    .line 309
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 332
    .end local v16    # "va":F
    .end local v17    # "sin_va":F
    .end local v18    # "cos_va":F
    .end local v19    # "ty":F
    .end local v20    # "i":I
    :cond_1
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 333
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v4

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 334
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 335
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 336
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x4

    add-int/lit8 v29, v29, 0x4

    move/from16 v30, v4

    aput v30, v28, v29

    .line 337
    move-object/from16 v28, v10

    move/from16 v29, v13

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 338
    add-int/lit8 v13, v13, 0x6

    .line 340
    move/from16 v28, v5

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v3

    mul-int v28, v28, v29

    move/from16 v15, v28

    .line 342
    .local v15, "pS":I
    const/high16 v28, 0x3b800000    # 0.00390625f

    move/from16 v16, v28

    .line 343
    .local v16, "textureDelta":F
    const/16 v28, 0x0

    move/from16 v17, v28

    .local v17, "i":I
    :goto_2
    move/from16 v28, v17

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 344
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v31, v9

    const/high16 v32, 0x3f000000    # 0.5f

    move/from16 v33, v17

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 345
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v16

    aput v30, v28, v29

    .line 346
    add-int/lit8 v14, v14, 0x2

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 349
    :cond_2
    const/16 v28, 0x0

    move/from16 v17, v28

    :goto_3
    move/from16 v28, v17

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 350
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v31, v9

    const/high16 v32, 0x3f000000    # 0.5f

    move/from16 v33, v17

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 351
    move-object/from16 v28, v11

    move/from16 v29, v14

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v31, v16

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 352
    add-int/lit8 v14, v14, 0x2

    .line 349
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 355
    :cond_3
    const/16 v28, 0x0

    move/from16 v17, v28

    .line 356
    .local v17, "fIndex":I
    const/16 v28, 0x0

    move/from16 v18, v28

    .local v18, "y":I
    :goto_4
    move/from16 v28, v18

    move/from16 v29, v5

    const/16 v30, 0x2

    add-int/lit8 v29, v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 357
    const/16 v28, 0x0

    move/from16 v19, v28

    .local v19, "x":I
    :goto_5
    move/from16 v28, v19

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 358
    move/from16 v28, v18

    move/from16 v29, v3

    mul-int v28, v28, v29

    move/from16 v29, v19

    add-int v28, v28, v29

    move/from16 v20, v28

    .line 359
    .local v20, "p0":I
    move/from16 v28, v20

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v21, v28

    .line 360
    .local v21, "p1":I
    move/from16 v28, v20

    move/from16 v29, v3

    add-int v28, v28, v29

    move/from16 v22, v28

    .line 361
    .local v22, "p2":I
    move/from16 v28, v21

    move/from16 v29, v3

    add-int v28, v28, v29

    move/from16 v23, v28

    .line 363
    .local v23, "p3":I
    move/from16 v28, v20

    move/from16 v29, v18

    add-int v28, v28, v29

    move/from16 v24, v28

    .line 364
    .local v24, "t0":I
    move/from16 v28, v24

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v25, v28

    .line 365
    .local v25, "t1":I
    move/from16 v28, v24

    move/from16 v29, v3

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    add-int v28, v28, v29

    move/from16 v26, v28

    .line 366
    .local v26, "t2":I
    move/from16 v28, v25

    move/from16 v29, v3

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    add-int v28, v28, v29

    move/from16 v27, v28

    .line 369
    .local v27, "t3":I
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move/from16 v30, v20

    aput v30, v28, v29

    .line 370
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v24

    aput v30, v28, v29

    .line 371
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v30, v21

    move/from16 v31, v3

    rem-int v30, v30, v31

    if-nez v30, :cond_4

    move/from16 v30, v21

    move/from16 v31, v3

    sub-int v30, v30, v31

    :goto_6
    aput v30, v28, v29

    .line 372
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    move/from16 v30, v25

    aput v30, v28, v29

    .line 373
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x4

    add-int/lit8 v29, v29, 0x4

    move/from16 v30, v22

    aput v30, v28, v29

    .line 374
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    move/from16 v30, v26

    aput v30, v28, v29

    .line 375
    add-int/lit8 v17, v17, 0x6

    .line 378
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move/from16 v30, v23

    move/from16 v31, v3

    rem-int v30, v30, v31

    if-nez v30, :cond_5

    move/from16 v30, v23

    move/from16 v31, v3

    sub-int v30, v30, v31

    :goto_7
    aput v30, v28, v29

    .line 379
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v27

    aput v30, v28, v29

    .line 380
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v30, v22

    aput v30, v28, v29

    .line 381
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    move/from16 v30, v26

    aput v30, v28, v29

    .line 382
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x4

    add-int/lit8 v29, v29, 0x4

    move/from16 v30, v21

    move/from16 v31, v3

    rem-int v30, v30, v31

    if-nez v30, :cond_6

    move/from16 v30, v21

    move/from16 v31, v3

    sub-int v30, v30, v31

    :goto_8
    aput v30, v28, v29

    .line 383
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    move/from16 v30, v25

    aput v30, v28, v29

    .line 384
    add-int/lit8 v17, v17, 0x6

    .line 357
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 371
    :cond_4
    move/from16 v30, v21

    goto/16 :goto_6

    .line 378
    :cond_5
    move/from16 v30, v23

    goto :goto_7

    .line 382
    :cond_6
    move/from16 v30, v21

    goto :goto_8

    .line 356
    .end local v20    # "p0":I
    .end local v21    # "p1":I
    .end local v22    # "p2":I
    .end local v23    # "p3":I
    .end local v24    # "t0":I
    .end local v25    # "t1":I
    .end local v26    # "t2":I
    .end local v27    # "t3":I
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 388
    .end local v19    # "x":I
    :cond_8
    move/from16 v28, v15

    move/from16 v18, v28

    .line 389
    .local v18, "p0":I
    move/from16 v28, v5

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v3

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    mul-int v28, v28, v29

    move/from16 v19, v28

    .line 390
    .local v19, "tB":I
    const/16 v28, 0x0

    move/from16 v20, v28

    .local v20, "x":I
    :goto_9
    move/from16 v28, v20

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 391
    move/from16 v28, v20

    move/from16 v21, v28

    .local v21, "p2":I
    move/from16 v28, v20

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v22, v28

    .local v22, "p1":I
    move/from16 v28, v19

    move/from16 v29, v20

    add-int v28, v28, v29

    move/from16 v23, v28

    .line 392
    .local v23, "t0":I
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move/from16 v30, v18

    aput v30, v28, v29

    .line 393
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v23

    aput v30, v28, v29

    .line 394
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v30, v22

    move/from16 v31, v3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v30, 0x0

    :goto_a
    aput v30, v28, v29

    .line 395
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    move/from16 v30, v22

    aput v30, v28, v29

    .line 396
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x4

    add-int/lit8 v29, v29, 0x4

    move/from16 v30, v21

    aput v30, v28, v29

    .line 397
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    move/from16 v30, v21

    aput v30, v28, v29

    .line 398
    add-int/lit8 v17, v17, 0x6

    .line 390
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 394
    :cond_9
    move/from16 v30, v22

    goto :goto_a

    .line 401
    .end local v21    # "p2":I
    .end local v22    # "p1":I
    .end local v23    # "t0":I
    :cond_a
    move/from16 v28, v18

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v18, v28

    .line 402
    move/from16 v28, v19

    move/from16 v29, v3

    add-int v28, v28, v29

    move/from16 v19, v28

    .line 403
    move/from16 v28, v5

    const/16 v29, 0x2

    add-int/lit8 v28, v28, -0x2

    move/from16 v29, v3

    mul-int v28, v28, v29

    move/from16 v20, v28

    .line 405
    .local v20, "pB":I
    const/16 v28, 0x0

    move/from16 v21, v28

    .local v21, "x":I
    :goto_b
    move/from16 v28, v21

    move/from16 v29, v3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 406
    move/from16 v28, v20

    move/from16 v29, v21

    add-int v28, v28, v29

    move/from16 v22, v28

    .restart local v22    # "p1":I
    move/from16 v28, v20

    move/from16 v29, v21

    add-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v23, v28

    .local v23, "p2":I
    move/from16 v28, v19

    move/from16 v29, v21

    add-int v28, v28, v29

    move/from16 v24, v28

    .line 407
    .restart local v24    # "t0":I
    move/from16 v28, v5

    const/16 v29, 0x2

    add-int/lit8 v28, v28, -0x2

    move/from16 v29, v3

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    mul-int v28, v28, v29

    move/from16 v29, v21

    add-int v28, v28, v29

    move/from16 v25, v28

    .restart local v25    # "t1":I
    move/from16 v28, v25

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v26, v28

    .line 408
    .restart local v26    # "t2":I
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move/from16 v30, v18

    aput v30, v28, v29

    .line 409
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v24

    aput v30, v28, v29

    .line 410
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move/from16 v30, v22

    aput v30, v28, v29

    .line 411
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x3

    add-int/lit8 v29, v29, 0x3

    move/from16 v30, v25

    aput v30, v28, v29

    .line 412
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x4

    add-int/lit8 v29, v29, 0x4

    move/from16 v30, v23

    move/from16 v31, v3

    rem-int v30, v30, v31

    if-nez v30, :cond_b

    move/from16 v30, v23

    move/from16 v31, v3

    sub-int v30, v30, v31

    :goto_c
    aput v30, v28, v29

    .line 413
    move-object/from16 v28, v12

    move/from16 v29, v17

    const/16 v30, 0x5

    add-int/lit8 v29, v29, 0x5

    move/from16 v30, v26

    aput v30, v28, v29

    .line 414
    add-int/lit8 v17, v17, 0x6

    .line 405
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 412
    :cond_b
    move/from16 v30, v23

    goto :goto_c

    .line 417
    .end local v22    # "p1":I
    .end local v23    # "p2":I
    .end local v24    # "t0":I
    .end local v25    # "t1":I
    .end local v26    # "t2":I
    :cond_c
    new-instance v28, Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljavafx/scene/shape/TriangleMesh;-><init>(Z)V

    move-object/from16 v21, v28

    .line 418
    .local v21, "m":Ljavafx/scene/shape/TriangleMesh;
    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/TriangleMesh;->getPoints()Ljavafx/collections/ObservableFloatArray;

    move-result-object v28

    move-object/from16 v29, v10

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 419
    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/TriangleMesh;->getTexCoords()Ljavafx/collections/ObservableFloatArray;

    move-result-object v28

    move-object/from16 v29, v11

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 420
    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/TriangleMesh;->getFaces()Ljavafx/scene/shape/ObservableFaceArray;

    move-result-object v28

    move-object/from16 v29, v12

    invoke-interface/range {v28 .. v29}, Ljavafx/scene/shape/ObservableFaceArray;->setAll([I)V

    .line 421
    move-object/from16 v28, v21

    move-object/from16 v3, v28

    .end local v3    # "div":I
    return-object v3
.end method

.method private static generateKey(FI)I
    .locals 5

    .prologue
    .line 425
    move v0, p0

    .local v0, "r":F
    move v1, p1

    .local v1, "div":I
    const/4 v3, 0x5

    move v2, v3

    .line 426
    .local v2, "hash":I
    const/16 v3, 0x17

    move v4, v2

    mul-int/2addr v3, v4

    move v4, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 427
    const/16 v3, 0x17

    move v4, v2

    mul-int/2addr v3, v4

    move v4, v1

    add-int/2addr v3, v4

    move v2, v3

    .line 428
    move v3, v2

    move v0, v3

    .end local v0    # "r":F
    return v0
.end method


# virtual methods
.method public getDivisions()I
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/Sphere;->divisions:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Sphere;
    return v0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Sphere;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Sphere;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Sphere;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Sphere;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Sphere;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_computeContains(DD)Z
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/shape/Sphere;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/shape/Sphere;->getRadius()D

    move-result-wide v10

    move-wide v6, v10

    .line 190
    .local v6, "r":D
    move-wide v10, v2

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-wide v12, v4

    move-wide v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v8, v10

    .line 191
    .local v8, "n2":D
    move-wide v10, v8

    move-wide v12, v6

    move-wide v14, v6

    mul-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/scene/shape/Sphere;
    return v1

    .restart local v1    # "this":Ljavafx/scene/shape/Sphere;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Sphere;->getRadius()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 173
    .local v3, "r":F
    move v4, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 174
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    .line 179
    .end local v0    # "this":Ljavafx/scene/shape/Sphere;
    :goto_0
    return-object v0

    .line 177
    .restart local v0    # "this":Ljavafx/scene/shape/Sphere;
    :cond_0
    move-object v4, v1

    move v5, v3

    neg-float v5, v5

    move v6, v3

    neg-float v6, v6

    move v7, v3

    neg-float v7, v7

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 178
    move-object v4, v2

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 179
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 65
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/Sphere;
    move-object/from16 v4, p1

    .local v4, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v5, p2

    .local v5, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget v0, v0, Ljavafx/scene/shape/Sphere;->divisions:I

    move/from16 v52, v0

    const/16 v53, 0x40

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/shape/Sphere;->mesh:Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v52, v0

    if-eqz v52, :cond_0

    const/16 v52, 0x1

    :goto_0
    move/from16 v6, v52

    .line 204
    .local v6, "exactPicking":Z
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/shape/Sphere;->getRadius()D

    move-result-wide v52

    move-wide/from16 v7, v52

    .line 205
    .local v7, "r":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v52

    move-object/from16 v9, v52

    .line 206
    .local v9, "dir":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v52, v9

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v52, v0

    move-wide/from16 v10, v52

    .line 207
    .local v10, "dirX":D
    move-object/from16 v52, v9

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v52, v0

    move-wide/from16 v12, v52

    .line 208
    .local v12, "dirY":D
    move-object/from16 v52, v9

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v52, v0

    move-wide/from16 v14, v52

    .line 209
    .local v14, "dirZ":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v52

    move-object/from16 v16, v52

    .line 210
    .local v16, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v52, v16

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v52, v0

    move-wide/from16 v17, v52

    .line 211
    .local v17, "originX":D
    move-object/from16 v52, v16

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v52, v0

    move-wide/from16 v19, v52

    .line 212
    .local v19, "originY":D
    move-object/from16 v52, v16

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v52, v0

    move-wide/from16 v21, v52

    .line 215
    .local v21, "originZ":D
    move-wide/from16 v52, v10

    move-wide/from16 v54, v10

    mul-double v52, v52, v54

    move-wide/from16 v54, v12

    move-wide/from16 v56, v12

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v14

    move-wide/from16 v56, v14

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v23, v52

    .line 216
    .local v23, "a":D
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    move-wide/from16 v54, v10

    move-wide/from16 v56, v17

    mul-double v54, v54, v56

    move-wide/from16 v56, v12

    move-wide/from16 v58, v19

    mul-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v56, v14

    move-wide/from16 v58, v21

    mul-double v56, v56, v58

    add-double v54, v54, v56

    mul-double v52, v52, v54

    move-wide/from16 v25, v52

    .line 217
    .local v25, "b":D
    move-wide/from16 v52, v17

    move-wide/from16 v54, v17

    mul-double v52, v52, v54

    move-wide/from16 v54, v19

    move-wide/from16 v56, v19

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v21

    move-wide/from16 v56, v21

    mul-double v54, v54, v56

    add-double v52, v52, v54

    move-wide/from16 v54, v7

    move-wide/from16 v56, v7

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    move-wide/from16 v27, v52

    .line 219
    .local v27, "c":D
    move-wide/from16 v52, v25

    move-wide/from16 v54, v25

    mul-double v52, v52, v54

    const-wide/high16 v54, 0x4010000000000000L    # 4.0

    move-wide/from16 v56, v23

    mul-double v54, v54, v56

    move-wide/from16 v56, v27

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    move-wide/from16 v29, v52

    .line 220
    .local v29, "discriminant":D
    move-wide/from16 v52, v29

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_1

    .line 222
    const/16 v52, 0x0

    move/from16 v3, v52

    .line 284
    .end local v3    # "this":Ljavafx/scene/shape/Sphere;
    :goto_1
    return v3

    .line 202
    .end local v6    # "exactPicking":Z
    .end local v7    # "r":D
    .end local v9    # "dir":Lcom/sun/javafx/geom/Vec3d;
    .end local v10    # "dirX":D
    .end local v12    # "dirY":D
    .end local v14    # "dirZ":D
    .end local v16    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .end local v17    # "originX":D
    .end local v19    # "originY":D
    .end local v21    # "originZ":D
    .end local v23    # "a":D
    .end local v25    # "b":D
    .end local v27    # "c":D
    .end local v29    # "discriminant":D
    .restart local v3    # "this":Ljavafx/scene/shape/Sphere;
    :cond_0
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 225
    .restart local v6    # "exactPicking":Z
    .restart local v7    # "r":D
    .restart local v9    # "dir":Lcom/sun/javafx/geom/Vec3d;
    .restart local v10    # "dirX":D
    .restart local v12    # "dirY":D
    .restart local v14    # "dirZ":D
    .restart local v16    # "origin":Lcom/sun/javafx/geom/Vec3d;
    .restart local v17    # "originX":D
    .restart local v19    # "originY":D
    .restart local v21    # "originZ":D
    .restart local v23    # "a":D
    .restart local v25    # "b":D
    .restart local v27    # "c":D
    .restart local v29    # "discriminant":D
    :cond_1
    move-wide/from16 v52, v29

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    move-wide/from16 v31, v52

    .line 226
    .local v31, "distSqrt":D
    move-wide/from16 v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_4

    move-wide/from16 v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v54, v31

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    :goto_2
    move-wide/from16 v33, v52

    .line 228
    .local v33, "q":D
    move-wide/from16 v52, v33

    move-wide/from16 v54, v23

    div-double v52, v52, v54

    move-wide/from16 v35, v52

    .line 229
    .local v35, "t0":D
    move-wide/from16 v52, v27

    move-wide/from16 v54, v33

    div-double v52, v52, v54

    move-wide/from16 v37, v52

    .line 231
    .local v37, "t1":D
    move-wide/from16 v52, v35

    move-wide/from16 v54, v37

    cmpl-double v52, v52, v54

    if-lez v52, :cond_2

    .line 232
    move-wide/from16 v52, v35

    move-wide/from16 v39, v52

    .line 233
    .local v39, "temp":D
    move-wide/from16 v52, v37

    move-wide/from16 v35, v52

    .line 234
    move-wide/from16 v52, v39

    move-wide/from16 v37, v52

    .line 237
    .end local v39    # "temp":D
    :cond_2
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v52

    move-wide/from16 v39, v52

    .line 238
    .local v39, "minDistance":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v52

    move-wide/from16 v41, v52

    .line 240
    .local v41, "maxDistance":D
    move-wide/from16 v52, v37

    move-wide/from16 v54, v39

    cmpg-double v52, v52, v54

    if-ltz v52, :cond_3

    move-wide/from16 v52, v35

    move-wide/from16 v54, v41

    cmpl-double v52, v52, v54

    if-lez v52, :cond_5

    .line 242
    :cond_3
    const/16 v52, 0x0

    move/from16 v3, v52

    goto :goto_1

    .line 226
    .end local v33    # "q":D
    .end local v35    # "t0":D
    .end local v37    # "t1":D
    .end local v39    # "minDistance":D
    .end local v41    # "maxDistance":D
    :cond_4
    move-wide/from16 v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v54, v31

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    goto :goto_2

    .line 245
    .restart local v33    # "q":D
    .restart local v35    # "t0":D
    .restart local v37    # "t1":D
    .restart local v39    # "minDistance":D
    .restart local v41    # "maxDistance":D
    :cond_5
    move-wide/from16 v52, v35

    move-wide/from16 v43, v52

    .line 246
    .local v43, "t":D
    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/shape/Sphere;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v52

    move-object/from16 v45, v52

    .line 247
    .local v45, "cullFace":Ljavafx/scene/shape/CullFace;
    move-wide/from16 v52, v35

    move-wide/from16 v54, v39

    cmpg-double v52, v52, v54

    if-ltz v52, :cond_6

    move-object/from16 v52, v45

    sget-object v53, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_7

    .line 248
    :cond_6
    move-wide/from16 v52, v37

    move-wide/from16 v54, v41

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_9

    move-object/from16 v52, v3

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/shape/Sphere;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v52

    sget-object v53, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-eq v0, v1, :cond_9

    .line 250
    move-wide/from16 v52, v37

    move-wide/from16 v43, v52

    .line 261
    :cond_7
    move-wide/from16 v52, v43

    invoke-static/range {v52 .. v53}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v52

    if-nez v52, :cond_8

    move-wide/from16 v52, v43

    invoke-static/range {v52 .. v53}, Ljava/lang/Double;->isNaN(D)Z

    move-result v52

    if-eqz v52, :cond_a

    .line 263
    :cond_8
    const/16 v52, 0x0

    move/from16 v3, v52

    goto/16 :goto_1

    .line 255
    :cond_9
    move/from16 v52, v6

    if-nez v52, :cond_7

    .line 256
    const/16 v52, 0x0

    move/from16 v3, v52

    goto/16 :goto_1

    .line 266
    :cond_a
    move/from16 v52, v6

    if-eqz v52, :cond_b

    .line 267
    move-object/from16 v52, v3

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/shape/Sphere;->mesh:Ljavafx/scene/shape/TriangleMesh;

    move-object/from16 v52, v0

    move-object/from16 v53, v4

    move-object/from16 v54, v5

    move-object/from16 v55, v3

    move-object/from16 v56, v45

    const/16 v57, 0x0

    invoke-virtual/range {v52 .. v57}, Ljavafx/scene/shape/TriangleMesh;->impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;Ljavafx/scene/Node;Ljavafx/scene/shape/CullFace;Z)Z

    move-result v52

    move/from16 v3, v52

    goto/16 :goto_1

    .line 270
    :cond_b
    move-object/from16 v52, v5

    if-eqz v52, :cond_d

    move-object/from16 v52, v5

    move-wide/from16 v53, v43

    invoke-virtual/range {v52 .. v54}, Lcom/sun/javafx/scene/input/PickResultChooser;->isCloser(D)Z

    move-result v52

    if-eqz v52, :cond_d

    .line 271
    move-object/from16 v52, v4

    move-wide/from16 v53, v43

    invoke-static/range {v52 .. v54}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v52

    move-object/from16 v46, v52

    .line 274
    .local v46, "point":Ljavafx/geometry/Point3D;
    new-instance v52, Ljavafx/geometry/Point3D;

    move-object/from16 v64, v52

    move-object/from16 v52, v64

    move-object/from16 v53, v64

    move-object/from16 v54, v46

    invoke-virtual/range {v54 .. v54}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v54

    const-wide/16 v56, 0x0

    move-object/from16 v58, v46

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v58

    invoke-direct/range {v53 .. v59}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v47, v52

    .line 275
    .local v47, "proj":Ljavafx/geometry/Point3D;
    move-object/from16 v52, v47

    sget-object v53, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v52 .. v53}, Ljavafx/geometry/Point3D;->crossProduct(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v52

    move-object/from16 v48, v52

    .line 276
    .local v48, "cross":Ljavafx/geometry/Point3D;
    move-object/from16 v52, v47

    sget-object v53, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v52 .. v53}, Ljavafx/geometry/Point3D;->angle(Ljavafx/geometry/Point3D;)D

    move-result-wide v52

    move-wide/from16 v49, v52

    .line 277
    .local v49, "angle":D
    move-object/from16 v52, v48

    invoke-virtual/range {v52 .. v52}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v52

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-lez v52, :cond_c

    .line 278
    const-wide v52, 0x4076800000000000L    # 360.0

    move-wide/from16 v54, v49

    sub-double v52, v52, v54

    move-wide/from16 v49, v52

    .line 280
    :cond_c
    new-instance v52, Ljavafx/geometry/Point2D;

    move-object/from16 v64, v52

    move-object/from16 v52, v64

    move-object/from16 v53, v64

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v56, v49

    const-wide v58, 0x4076800000000000L    # 360.0

    div-double v56, v56, v58

    sub-double v54, v54, v56

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    move-object/from16 v58, v46

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v58

    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    move-wide/from16 v62, v7

    mul-double v60, v60, v62

    div-double v58, v58, v60

    add-double v56, v56, v58

    invoke-direct/range {v53 .. v57}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v51, v52

    .line 282
    .local v51, "txtCoords":Ljavafx/geometry/Point2D;
    move-object/from16 v52, v5

    move-object/from16 v53, v3

    move-wide/from16 v54, v43

    const/16 v56, -0x1

    move-object/from16 v57, v46

    move-object/from16 v58, v51

    invoke-virtual/range {v52 .. v58}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v52

    .line 284
    .end local v46    # "point":Ljavafx/geometry/Point3D;
    .end local v47    # "proj":Ljavafx/geometry/Point3D;
    .end local v48    # "cross":Ljavafx/geometry/Point3D;
    .end local v49    # "angle":D
    .end local v51    # "txtCoords":Ljavafx/geometry/Point2D;
    :cond_d
    const/16 v52, 0x1

    move/from16 v3, v52

    goto/16 :goto_1
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGSphere;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGSphere;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Sphere;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Sphere;
    move-object v4, v1

    invoke-super {v4}, Ljavafx/scene/shape/Shape3D;->impl_updatePeer()V

    .line 148
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Sphere;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Sphere;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/sg/prism/NGSphere;

    move-object v2, v4

    .line 150
    .local v2, "pgSphere":Lcom/sun/javafx/sg/prism/NGSphere;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Sphere;->getRadius()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 151
    .local v3, "r":F
    move v4, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 152
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGSphere;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    .line 162
    .end local v2    # "pgSphere":Lcom/sun/javafx/sg/prism/NGSphere;
    .end local v3    # "r":F
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v2    # "pgSphere":Lcom/sun/javafx/sg/prism/NGSphere;
    .restart local v3    # "r":F
    :cond_1
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/shape/Sphere;->key:I

    if-nez v4, :cond_2

    .line 155
    move-object v4, v1

    move v5, v3

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/shape/Sphere;->divisions:I

    invoke-static {v5, v6}, Ljavafx/scene/shape/Sphere;->generateKey(FI)I

    move-result v5

    iput v5, v4, Ljavafx/scene/shape/Sphere;->key:I

    .line 157
    :cond_2
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/shape/Sphere;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    move v6, v3

    move-object v7, v1

    iget v7, v7, Ljavafx/scene/shape/Sphere;->divisions:I

    move-object v8, v1

    iget v8, v8, Ljavafx/scene/shape/Sphere;->key:I

    invoke-virtual {v5, v6, v7, v8}, Ljavafx/scene/shape/PredefinedMeshManager;->getSphereMesh(FII)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/shape/Sphere;->mesh:Ljavafx/scene/shape/TriangleMesh;

    .line 158
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Sphere;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->impl_updatePG()V

    .line 159
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/shape/Sphere;->mesh:Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v5}, Ljavafx/scene/shape/TriangleMesh;->impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGSphere;->updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    goto :goto_0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Sphere;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Sphere;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 109
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Sphere$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "radius"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/shape/Sphere$1;-><init>(Ljavafx/scene/shape/Sphere;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Sphere;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 119
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Sphere;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Sphere;
    return-object v1
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Sphere;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 101
    return-void
.end method
