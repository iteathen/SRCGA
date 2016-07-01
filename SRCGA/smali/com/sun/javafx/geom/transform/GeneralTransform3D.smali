.class public final Lcom/sun/javafx/geom/transform/GeneralTransform3D;
.super Ljava/lang/Object;
.source "GeneralTransform3D.java"

# interfaces
.implements Lcom/sun/javafx/geom/transform/CanTransformVec3d;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EPSILON_ABSOLUTE:D = 1.0E-5


# instance fields
.field private identity:Z

.field protected mat:[D

.field private tempV3d:Lcom/sun/javafx/geom/Vec3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    const/16 v2, 0x10

    new-array v2, v2, [D

    iput-object v2, v1, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    .line 51
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->setIdentity()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v1

    .line 52
    return-void
.end method

.method static almostOne(D)Z
    .locals 6

    .prologue
    .line 924
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":D
    return v0

    .restart local v0    # "a":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static almostZero(D)Z
    .locals 6

    .prologue
    .line 920
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":D
    return v0

    .restart local v0    # "a":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private invert(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 10

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    const/16 v4, 0x10

    new-array v4, v4, [D

    move-object v2, v4

    .line 379
    .local v2, "tmp":[D
    const/4 v4, 0x4

    new-array v4, v4, [I

    move-object v3, v4

    .line 384
    .local v3, "row_perm":[I
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->luDecomposition([D[I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    new-instance v4, Lcom/sun/javafx/geom/transform/SingularMatrixException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/SingularMatrixException;-><init>()V

    throw v4

    .line 395
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 396
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 397
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xa

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 398
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xc

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xd

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0xf

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    .line 399
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->luBacksubstitution([D[I[D)V

    .line 401
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 402
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method private static luBacksubstitution([D[I[D)V
    .locals 25

    .prologue
    .line 586
    move-object/from16 v1, p0

    .local v1, "matrix1":[D
    move-object/from16 v2, p1

    .local v2, "row_perm":[I
    move-object/from16 v3, p2

    .local v3, "matrix2":[D
    const/4 v14, 0x0

    move v9, v14

    .line 589
    .local v9, "rp":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "k":I
    :goto_0
    move v14, v8

    const/4 v15, 0x4

    if-ge v14, v15, :cond_3

    .line 591
    move v14, v8

    move v10, v14

    .line 592
    .local v10, "cv":I
    const/4 v14, -0x1

    move v5, v14

    .line 595
    .local v5, "ii":I
    const/4 v14, 0x0

    move v4, v14

    .local v4, "i":I
    :goto_1
    move v14, v4

    const/4 v15, 0x4

    if-ge v14, v15, :cond_2

    .line 598
    move-object v14, v2

    move v15, v9

    move/from16 v16, v4

    add-int v15, v15, v16

    aget v14, v14, v15

    move v6, v14

    .line 599
    .local v6, "ip":I
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x4

    move/from16 v17, v6

    mul-int v16, v16, v17

    add-int v15, v15, v16

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 600
    .local v12, "sum":D
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x4

    move/from16 v17, v6

    mul-int v16, v16, v17

    add-int v15, v15, v16

    move-object/from16 v16, v3

    move/from16 v17, v10

    const/16 v18, 0x4

    move/from16 v19, v4

    mul-int v18, v18, v19

    add-int v17, v17, v18

    aget-wide v16, v16, v17

    aput-wide v16, v14, v15

    .line 601
    move v14, v5

    if-ltz v14, :cond_0

    .line 603
    move v14, v4

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    move v11, v14

    .line 604
    .local v11, "rv":I
    move v14, v5

    move v7, v14

    .local v7, "j":I
    :goto_2
    move v14, v7

    move v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-gt v14, v15, :cond_1

    .line 605
    move-wide v14, v12

    move-object/from16 v16, v1

    move/from16 v17, v11

    move/from16 v18, v7

    add-int v17, v17, v18

    aget-wide v16, v16, v17

    move-object/from16 v18, v3

    move/from16 v19, v10

    const/16 v20, 0x4

    move/from16 v21, v7

    mul-int v20, v20, v21

    add-int v19, v19, v20

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 604
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 608
    .end local v7    # "j":I
    .end local v11    # "rv":I
    :cond_0
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1

    .line 609
    move v14, v4

    move v5, v14

    .line 611
    :cond_1
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x4

    move/from16 v17, v4

    mul-int v16, v16, v17

    add-int v15, v15, v16

    move-wide/from16 v16, v12

    aput-wide v16, v14, v15

    .line 595
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 616
    .end local v6    # "ip":I
    .end local v12    # "sum":D
    :cond_2
    const/16 v14, 0xc

    move v11, v14

    .line 617
    .restart local v11    # "rv":I
    move-object v14, v3

    move v15, v10

    const/16 v16, 0xc

    add-int/lit8 v15, v15, 0xc

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v14, v23

    move/from16 v15, v24

    move-object/from16 v16, v23

    move/from16 v17, v24

    aget-wide v16, v16, v17

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget-wide v18, v18, v19

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 619
    add-int/lit8 v11, v11, -0x4

    .line 620
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x8

    add-int/lit8 v15, v15, 0x8

    move-object/from16 v16, v3

    move/from16 v17, v10

    const/16 v18, 0x8

    add-int/lit8 v17, v17, 0x8

    aget-wide v16, v16, v17

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-wide v18, v18, v19

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 623
    add-int/lit8 v11, v11, -0x4

    .line 624
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x4

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v16, v3

    move/from16 v17, v10

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    aget-wide v16, v16, v17

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0x8

    add-int/lit8 v21, v21, 0x8

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v18, v18, v19

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 628
    add-int/lit8 v11, v11, -0x4

    .line 629
    move-object v14, v3

    move v15, v10

    const/16 v16, 0x0

    add-int/lit8 v15, v15, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v10

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget-wide v16, v16, v17

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0x8

    add-int/lit8 v21, v21, 0x8

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget-wide v18, v18, v19

    move-object/from16 v20, v3

    move/from16 v21, v10

    const/16 v22, 0xc

    add-int/lit8 v21, v21, 0xc

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-object/from16 v18, v1

    move/from16 v19, v11

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget-wide v18, v18, v19

    div-double v16, v16, v18

    aput-wide v16, v14, v15

    .line 589
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 634
    .end local v4    # "i":I
    .end local v5    # "ii":I
    .end local v10    # "cv":I
    .end local v11    # "rv":I
    :cond_3
    return-void
.end method

.method private static luDecomposition([D[I)Z
    .locals 28

    .prologue
    .line 429
    move-object/from16 v3, p0

    .local v3, "matrix0":[D
    move-object/from16 v4, p1

    .local v4, "row_perm":[I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 437
    .local v5, "row_scale":[D
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 438
    .local v8, "ptr":I
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 441
    .local v9, "rs":I
    const/16 v20, 0x4

    move/from16 v6, v20

    .line 442
    .local v6, "i":I
    :goto_0
    move/from16 v20, v6

    add-int/lit8 v6, v6, -0x1

    if-eqz v20, :cond_3

    .line 443
    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    .line 446
    .local v10, "big":D
    const/16 v20, 0x4

    move/from16 v7, v20

    .line 447
    .local v7, "j":I
    :cond_0
    :goto_1
    move/from16 v20, v7

    add-int/lit8 v7, v7, -0x1

    if-eqz v20, :cond_1

    .line 448
    move-object/from16 v20, v3

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-wide v20, v20, v21

    move-wide/from16 v12, v20

    .line 449
    .local v12, "temp":D
    move-wide/from16 v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 450
    move-wide/from16 v20, v12

    move-wide/from16 v22, v10

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 451
    move-wide/from16 v20, v12

    move-wide/from16 v10, v20

    goto :goto_1

    .line 456
    .end local v12    # "temp":D
    :cond_1
    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_2

    .line 457
    const/16 v20, 0x0

    move/from16 v3, v20

    .line 555
    .end local v3    # "matrix0":[D
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "ptr":I
    .end local v9    # "rs":I
    .end local v10    # "big":D
    :goto_2
    return v3

    .line 459
    .restart local v3    # "matrix0":[D
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    .restart local v8    # "ptr":I
    .restart local v9    # "rs":I
    .restart local v10    # "big":D
    :cond_2
    move-object/from16 v20, v5

    move/from16 v21, v9

    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    div-double v22, v22, v24

    aput-wide v22, v20, v21

    goto :goto_0

    .line 467
    .end local v7    # "j":I
    .end local v10    # "big":D
    :cond_3
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 470
    .local v7, "mtx":I
    const/16 v20, 0x0

    move/from16 v6, v20

    .end local v8    # "ptr":I
    .end local v9    # "rs":I
    .local v6, "j":I
    :goto_3
    move/from16 v20, v6

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 476
    const/16 v20, 0x0

    move/from16 v8, v20

    .local v8, "i":I
    :goto_4
    move/from16 v20, v8

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 477
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v8

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v11, v20

    .line 478
    .local v11, "target":I
    move-object/from16 v20, v3

    move/from16 v21, v11

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    .line 479
    .local v14, "sum":D
    move/from16 v20, v8

    move/from16 v10, v20

    .line 480
    .local v10, "k":I
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v8

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 481
    .local v12, "p1":I
    move/from16 v20, v7

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v13, v20

    .line 482
    .local v13, "p2":I
    :goto_5
    move/from16 v20, v10

    add-int/lit8 v10, v10, -0x1

    if-eqz v20, :cond_4

    .line 483
    move-wide/from16 v20, v14

    move-object/from16 v22, v3

    move/from16 v23, v12

    aget-wide v22, v22, v23

    move-object/from16 v24, v3

    move/from16 v25, v13

    aget-wide v24, v24, v25

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 484
    add-int/lit8 v12, v12, 0x1

    .line 485
    add-int/lit8 v13, v13, 0x4

    goto :goto_5

    .line 487
    :cond_4
    move-object/from16 v20, v3

    move/from16 v21, v11

    move-wide/from16 v22, v14

    aput-wide v22, v20, v21

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 492
    .end local v10    # "k":I
    .end local v11    # "target":I
    .end local v12    # "p1":I
    .end local v13    # "p2":I
    .end local v14    # "sum":D
    :cond_5
    const-wide/16 v20, 0x0

    move-wide/from16 v16, v20

    .line 493
    .local v16, "big":D
    const/16 v20, -0x1

    move/from16 v9, v20

    .line 494
    .local v9, "imax":I
    move/from16 v20, v6

    move/from16 v8, v20

    :goto_6
    move/from16 v20, v8

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 495
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v8

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v11, v20

    .line 496
    .restart local v11    # "target":I
    move-object/from16 v20, v3

    move/from16 v21, v11

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    .line 497
    .restart local v14    # "sum":D
    move/from16 v20, v6

    move/from16 v10, v20

    .line 498
    .restart local v10    # "k":I
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v8

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 499
    .restart local v12    # "p1":I
    move/from16 v20, v7

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v13, v20

    .line 500
    .restart local v13    # "p2":I
    :goto_7
    move/from16 v20, v10

    add-int/lit8 v10, v10, -0x1

    if-eqz v20, :cond_6

    .line 501
    move-wide/from16 v20, v14

    move-object/from16 v22, v3

    move/from16 v23, v12

    aget-wide v22, v22, v23

    move-object/from16 v24, v3

    move/from16 v25, v13

    aget-wide v24, v24, v25

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 502
    add-int/lit8 v12, v12, 0x1

    .line 503
    add-int/lit8 v13, v13, 0x4

    goto :goto_7

    .line 505
    :cond_6
    move-object/from16 v20, v3

    move/from16 v21, v11

    move-wide/from16 v22, v14

    aput-wide v22, v20, v21

    .line 508
    move-object/from16 v20, v5

    move/from16 v21, v8

    aget-wide v20, v20, v21

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v26, v20

    move-wide/from16 v20, v26

    move-wide/from16 v22, v26

    move-wide/from16 v18, v22

    .local v18, "temp":D
    move-wide/from16 v22, v16

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_7

    .line 509
    move-wide/from16 v20, v18

    move-wide/from16 v16, v20

    .line 510
    move/from16 v20, v8

    move/from16 v9, v20

    .line 494
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 514
    .end local v10    # "k":I
    .end local v11    # "target":I
    .end local v12    # "p1":I
    .end local v13    # "p2":I
    .end local v14    # "sum":D
    .end local v18    # "temp":D
    :cond_8
    move/from16 v20, v9

    if-gez v20, :cond_9

    .line 515
    const/16 v20, 0x0

    move/from16 v3, v20

    goto/16 :goto_2

    .line 519
    :cond_9
    move/from16 v20, v6

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 521
    const/16 v20, 0x4

    move/from16 v10, v20

    .line 522
    .restart local v10    # "k":I
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v9

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 523
    .restart local v12    # "p1":I
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v6

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v13, v20

    .line 524
    .restart local v13    # "p2":I
    :goto_8
    move/from16 v20, v10

    add-int/lit8 v10, v10, -0x1

    if-eqz v20, :cond_a

    .line 525
    move-object/from16 v20, v3

    move/from16 v21, v12

    aget-wide v20, v20, v21

    move-wide/from16 v18, v20

    .line 526
    .restart local v18    # "temp":D
    move-object/from16 v20, v3

    move/from16 v21, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v22, v3

    move/from16 v23, v13

    aget-wide v22, v22, v23

    aput-wide v22, v20, v21

    .line 527
    move-object/from16 v20, v3

    move/from16 v21, v13

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v22, v18

    aput-wide v22, v20, v21

    goto :goto_8

    .line 531
    .end local v18    # "temp":D
    :cond_a
    move-object/from16 v20, v5

    move/from16 v21, v9

    move-object/from16 v22, v5

    move/from16 v23, v6

    aget-wide v22, v22, v23

    aput-wide v22, v20, v21

    .line 535
    .end local v10    # "k":I
    .end local v12    # "p1":I
    .end local v13    # "p2":I
    :cond_b
    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v9

    aput v22, v20, v21

    .line 538
    move-object/from16 v20, v3

    move/from16 v21, v7

    const/16 v22, 0x4

    move/from16 v23, v6

    mul-int v22, v22, v23

    add-int v21, v21, v22

    move/from16 v22, v6

    add-int v21, v21, v22

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_c

    .line 539
    const/16 v20, 0x0

    move/from16 v3, v20

    goto/16 :goto_2

    .line 543
    :cond_c
    move/from16 v20, v6

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 544
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v22, v3

    move/from16 v23, v7

    const/16 v24, 0x4

    move/from16 v25, v6

    mul-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v24, v6

    add-int v23, v23, v24

    aget-wide v22, v22, v23

    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 545
    .restart local v18    # "temp":D
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v11, v20

    .line 546
    .restart local v11    # "target":I
    const/16 v20, 0x3

    move/from16 v21, v6

    rsub-int/lit8 v20, v21, 0x3

    move/from16 v8, v20

    .line 547
    :goto_9
    move/from16 v20, v8

    add-int/lit8 v8, v8, -0x1

    if-eqz v20, :cond_d

    .line 548
    move-object/from16 v20, v3

    move/from16 v21, v11

    move-object/from16 v26, v20

    move/from16 v27, v21

    move-object/from16 v20, v26

    move/from16 v21, v27

    move-object/from16 v22, v26

    move/from16 v23, v27

    aget-wide v22, v22, v23

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 549
    add-int/lit8 v11, v11, 0x4

    goto :goto_9

    .line 470
    .end local v11    # "target":I
    .end local v18    # "temp":D
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 555
    .end local v8    # "i":I
    .end local v9    # "imax":I
    .end local v16    # "big":D
    :cond_e
    const/16 v20, 0x1

    move/from16 v3, v20

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 6

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xa

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xf

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x9

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xb

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xc

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xd

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xe

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->identity:Z

    .line 901
    return-void

    .line 895
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeClipZCoord()D
    .locals 10

    .prologue
    .line 334
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xf

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xe

    aget-wide v8, v8, v9

    div-double/2addr v6, v8

    move-wide v2, v6

    .line 335
    .local v2, "zEc":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v7, 0xa

    aget-wide v6, v6, v7

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xb

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 336
    .local v4, "zCc":D
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-wide v1
.end method

.method public copy()Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 5

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    move-object v1, v2

    .line 929
    .local v1, "newTransform":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 930
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public determinant()D
    .locals 16

    .prologue
    .line 346
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v7, 0xa

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xf

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xb

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xe

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xf

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xb

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xe

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xa

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xa

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xf

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xb

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xe

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xf

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xb

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xe

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xa

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xf

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xb

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xf

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xb

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0x9

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xe

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0xa

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xe

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xa

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0xd

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v13, 0x9

    aget-wide v12, v12, v13

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v15, 0xc

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-wide v1
.end method

.method public get(I)D
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move v1, p1

    .local v1, "index":I
    sget-boolean v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v3, v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-wide v0
.end method

.method public get([D)[D
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "rv":[D
    move-object v2, v1

    if-nez v2, :cond_0

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v2, v2

    new-array v2, v2, [D

    move-object v1, v2

    .line 113
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public invert()Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->invert(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public isAffine()Z
    .locals 4

    .prologue
    .line 60
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isInfOrNaN()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xc

    aget-wide v2, v2, v3

    .line 61
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xd

    aget-wide v2, v2, v3

    .line 62
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xe

    aget-wide v2, v2, v3

    .line 63
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xf

    aget-wide v2, v2, v3

    .line 64
    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->almostOne(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v2, 0x1

    move v1, v2

    .line 68
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->identity:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return v0
.end method

.method isInfOrNaN()Z
    .locals 8

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 910
    .local v1, "d":D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 911
    move-wide v4, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move v7, v3

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    move-wide v1, v4

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 914
    :cond_0
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 68

    .prologue
    .line 646
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v3, p1

    .local v3, "t1":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v60

    if-eqz v60, :cond_0

    .line 647
    move-object/from16 v60, v2

    move-object/from16 v2, v60

    .line 709
    .end local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :goto_0
    return-object v2

    .line 655
    .restart local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :cond_0
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v60

    move-wide/from16 v36, v60

    .line 656
    .local v36, "mxx":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v60

    move-wide/from16 v38, v60

    .line 657
    .local v38, "mxy":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v60

    move-wide/from16 v40, v60

    .line 658
    .local v40, "mxz":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v60

    move-wide/from16 v42, v60

    .line 659
    .local v42, "mxt":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v60

    move-wide/from16 v44, v60

    .line 660
    .local v44, "myx":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v60

    move-wide/from16 v46, v60

    .line 661
    .local v46, "myy":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v60

    move-wide/from16 v48, v60

    .line 662
    .local v48, "myz":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v60

    move-wide/from16 v50, v60

    .line 663
    .local v50, "myt":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v60

    move-wide/from16 v52, v60

    .line 664
    .local v52, "mzx":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v60

    move-wide/from16 v54, v60

    .line 665
    .local v54, "mzy":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v60

    move-wide/from16 v56, v60

    .line 666
    .local v56, "mzz":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v60

    move-wide/from16 v58, v60

    .line 668
    .local v58, "mzt":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x0

    aget-wide v60, v60, v61

    move-wide/from16 v62, v36

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x1

    aget-wide v62, v62, v63

    move-wide/from16 v64, v44

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x2

    aget-wide v62, v62, v63

    move-wide/from16 v64, v52

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v4, v60

    .line 669
    .local v4, "tmp0":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x0

    aget-wide v60, v60, v61

    move-wide/from16 v62, v38

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x1

    aget-wide v62, v62, v63

    move-wide/from16 v64, v46

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x2

    aget-wide v62, v62, v63

    move-wide/from16 v64, v54

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v6, v60

    .line 670
    .local v6, "tmp1":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x0

    aget-wide v60, v60, v61

    move-wide/from16 v62, v40

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x1

    aget-wide v62, v62, v63

    move-wide/from16 v64, v48

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x2

    aget-wide v62, v62, v63

    move-wide/from16 v64, v56

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v8, v60

    .line 671
    .local v8, "tmp2":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x0

    aget-wide v60, v60, v61

    move-wide/from16 v62, v42

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x1

    aget-wide v62, v62, v63

    move-wide/from16 v64, v50

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x2

    aget-wide v62, v62, v63

    move-wide/from16 v64, v58

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x3

    aget-wide v62, v62, v63

    add-double v60, v60, v62

    move-wide/from16 v10, v60

    .line 672
    .local v10, "tmp3":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x4

    aget-wide v60, v60, v61

    move-wide/from16 v62, v36

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x5

    aget-wide v62, v62, v63

    move-wide/from16 v64, v44

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x6

    aget-wide v62, v62, v63

    move-wide/from16 v64, v52

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v12, v60

    .line 673
    .local v12, "tmp4":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x4

    aget-wide v60, v60, v61

    move-wide/from16 v62, v38

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x5

    aget-wide v62, v62, v63

    move-wide/from16 v64, v46

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x6

    aget-wide v62, v62, v63

    move-wide/from16 v64, v54

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v14, v60

    .line 674
    .local v14, "tmp5":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x4

    aget-wide v60, v60, v61

    move-wide/from16 v62, v40

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x5

    aget-wide v62, v62, v63

    move-wide/from16 v64, v48

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x6

    aget-wide v62, v62, v63

    move-wide/from16 v64, v56

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v16, v60

    .line 675
    .local v16, "tmp6":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x4

    aget-wide v60, v60, v61

    move-wide/from16 v62, v42

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x5

    aget-wide v62, v62, v63

    move-wide/from16 v64, v50

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x6

    aget-wide v62, v62, v63

    move-wide/from16 v64, v58

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x7

    aget-wide v62, v62, v63

    add-double v60, v60, v62

    move-wide/from16 v18, v60

    .line 676
    .local v18, "tmp7":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x8

    aget-wide v60, v60, v61

    move-wide/from16 v62, v36

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x9

    aget-wide v62, v62, v63

    move-wide/from16 v64, v44

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xa

    aget-wide v62, v62, v63

    move-wide/from16 v64, v52

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v20, v60

    .line 677
    .local v20, "tmp8":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x8

    aget-wide v60, v60, v61

    move-wide/from16 v62, v38

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x9

    aget-wide v62, v62, v63

    move-wide/from16 v64, v46

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xa

    aget-wide v62, v62, v63

    move-wide/from16 v64, v54

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v22, v60

    .line 678
    .local v22, "tmp9":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x8

    aget-wide v60, v60, v61

    move-wide/from16 v62, v40

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x9

    aget-wide v62, v62, v63

    move-wide/from16 v64, v48

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xa

    aget-wide v62, v62, v63

    move-wide/from16 v64, v56

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v24, v60

    .line 679
    .local v24, "tmp10":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x8

    aget-wide v60, v60, v61

    move-wide/from16 v62, v42

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0x9

    aget-wide v62, v62, v63

    move-wide/from16 v64, v50

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xa

    aget-wide v62, v62, v63

    move-wide/from16 v64, v58

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xb

    aget-wide v62, v62, v63

    add-double v60, v60, v62

    move-wide/from16 v26, v60

    .line 680
    .local v26, "tmp11":D
    move-object/from16 v60, v2

    invoke-virtual/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isAffine()Z

    move-result v60

    if-eqz v60, :cond_1

    .line 681
    const-wide/16 v60, 0x0

    move-wide/from16 v66, v60

    move-wide/from16 v60, v66

    move-wide/from16 v62, v66

    move-wide/from16 v32, v62

    .local v32, "tmp14":D
    move-wide/from16 v66, v60

    move-wide/from16 v60, v66

    move-wide/from16 v62, v66

    move-wide/from16 v30, v62

    .local v30, "tmp13":D
    move-wide/from16 v28, v60

    .line 682
    .local v28, "tmp12":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v60

    .line 691
    .local v34, "tmp15":D
    :goto_1
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move-wide/from16 v62, v4

    aput-wide v62, v60, v61

    .line 692
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x1

    move-wide/from16 v62, v6

    aput-wide v62, v60, v61

    .line 693
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x2

    move-wide/from16 v62, v8

    aput-wide v62, v60, v61

    .line 694
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x3

    move-wide/from16 v62, v10

    aput-wide v62, v60, v61

    .line 695
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x4

    move-wide/from16 v62, v12

    aput-wide v62, v60, v61

    .line 696
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x5

    move-wide/from16 v62, v14

    aput-wide v62, v60, v61

    .line 697
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x6

    move-wide/from16 v62, v16

    aput-wide v62, v60, v61

    .line 698
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x7

    move-wide/from16 v62, v18

    aput-wide v62, v60, v61

    .line 699
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x8

    move-wide/from16 v62, v20

    aput-wide v62, v60, v61

    .line 700
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0x9

    move-wide/from16 v62, v22

    aput-wide v62, v60, v61

    .line 701
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xa

    move-wide/from16 v62, v24

    aput-wide v62, v60, v61

    .line 702
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xb

    move-wide/from16 v62, v26

    aput-wide v62, v60, v61

    .line 703
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xc

    move-wide/from16 v62, v28

    aput-wide v62, v60, v61

    .line 704
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xd

    move-wide/from16 v62, v30

    aput-wide v62, v60, v61

    .line 705
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xe

    move-wide/from16 v62, v32

    aput-wide v62, v60, v61

    .line 706
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xf

    move-wide/from16 v62, v34

    aput-wide v62, v60, v61

    .line 708
    move-object/from16 v60, v2

    invoke-direct/range {v60 .. v60}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 709
    move-object/from16 v60, v2

    move-object/from16 v2, v60

    goto/16 :goto_0

    .line 685
    .end local v28    # "tmp12":D
    .end local v30    # "tmp13":D
    .end local v32    # "tmp14":D
    .end local v34    # "tmp15":D
    :cond_1
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xc

    aget-wide v60, v60, v61

    move-wide/from16 v62, v36

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xd

    aget-wide v62, v62, v63

    move-wide/from16 v64, v44

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xe

    aget-wide v62, v62, v63

    move-wide/from16 v64, v52

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v28, v60

    .line 686
    .restart local v28    # "tmp12":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xc

    aget-wide v60, v60, v61

    move-wide/from16 v62, v38

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xd

    aget-wide v62, v62, v63

    move-wide/from16 v64, v46

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xe

    aget-wide v62, v62, v63

    move-wide/from16 v64, v54

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v30, v60

    .line 687
    .restart local v30    # "tmp13":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xc

    aget-wide v60, v60, v61

    move-wide/from16 v62, v40

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xd

    aget-wide v62, v62, v63

    move-wide/from16 v64, v48

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xe

    aget-wide v62, v62, v63

    move-wide/from16 v64, v56

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v32, v60

    .line 688
    .restart local v32    # "tmp14":D
    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v60, v0

    const/16 v61, 0xc

    aget-wide v60, v60, v61

    move-wide/from16 v62, v42

    mul-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xd

    aget-wide v62, v62, v63

    move-wide/from16 v64, v50

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xe

    aget-wide v62, v62, v63

    move-wide/from16 v64, v58

    mul-double v62, v62, v64

    add-double v60, v60, v62

    move-object/from16 v62, v2

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v62, v0

    const/16 v63, 0xf

    aget-wide v62, v62, v63

    add-double v60, v60, v62

    move-wide/from16 v34, v60

    .restart local v34    # "tmp15":D
    goto/16 :goto_1
.end method

.method public mul(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 44

    .prologue
    .line 770
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v3, p1

    .local v3, "t1":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isIdentity()Z

    move-result v36

    if-eqz v36, :cond_0

    .line 771
    move-object/from16 v36, v2

    move-object/from16 v2, v36

    .line 867
    .end local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :goto_0
    return-object v2

    .line 779
    .restart local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :cond_0
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isAffine()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 780
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v4, v36

    .line 781
    .local v4, "tmp0":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v6, v36

    .line 782
    .local v6, "tmp1":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v8, v36

    .line 783
    .local v8, "tmp2":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    add-double v36, v36, v38

    move-wide/from16 v10, v36

    .line 784
    .local v10, "tmp3":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v12, v36

    .line 785
    .local v12, "tmp4":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v14, v36

    .line 786
    .local v14, "tmp5":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v16, v36

    .line 787
    .local v16, "tmp6":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x7

    aget-wide v38, v38, v39

    add-double v36, v36, v38

    move-wide/from16 v18, v36

    .line 788
    .local v18, "tmp7":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v20, v36

    .line 789
    .local v20, "tmp8":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v22, v36

    .line 790
    .local v22, "tmp9":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v24, v36

    .line 791
    .local v24, "tmp10":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xb

    aget-wide v38, v38, v39

    add-double v36, v36, v38

    move-wide/from16 v26, v36

    .line 792
    .local v26, "tmp11":D
    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isAffine()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 793
    const-wide/16 v36, 0x0

    move-wide/from16 v42, v36

    move-wide/from16 v36, v42

    move-wide/from16 v38, v42

    move-wide/from16 v32, v38

    .local v32, "tmp14":D
    move-wide/from16 v42, v36

    move-wide/from16 v36, v42

    move-wide/from16 v38, v42

    move-wide/from16 v30, v38

    .local v30, "tmp13":D
    move-wide/from16 v28, v36

    .line 794
    .local v28, "tmp12":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v36

    .line 849
    .local v34, "tmp15":D
    :goto_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-wide/from16 v38, v4

    aput-wide v38, v36, v37

    .line 850
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-wide/from16 v38, v6

    aput-wide v38, v36, v37

    .line 851
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-wide/from16 v38, v8

    aput-wide v38, v36, v37

    .line 852
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x3

    move-wide/from16 v38, v10

    aput-wide v38, v36, v37

    .line 853
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    move-wide/from16 v38, v12

    aput-wide v38, v36, v37

    .line 854
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x5

    move-wide/from16 v38, v14

    aput-wide v38, v36, v37

    .line 855
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x6

    move-wide/from16 v38, v16

    aput-wide v38, v36, v37

    .line 856
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x7

    move-wide/from16 v38, v18

    aput-wide v38, v36, v37

    .line 857
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    move-wide/from16 v38, v20

    aput-wide v38, v36, v37

    .line 858
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x9

    move-wide/from16 v38, v22

    aput-wide v38, v36, v37

    .line 859
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xa

    move-wide/from16 v38, v24

    aput-wide v38, v36, v37

    .line 860
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xb

    move-wide/from16 v38, v26

    aput-wide v38, v36, v37

    .line 861
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    move-wide/from16 v38, v28

    aput-wide v38, v36, v37

    .line 862
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xd

    move-wide/from16 v38, v30

    aput-wide v38, v36, v37

    .line 863
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xe

    move-wide/from16 v38, v32

    aput-wide v38, v36, v37

    .line 864
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xf

    move-wide/from16 v38, v34

    aput-wide v38, v36, v37

    .line 866
    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 867
    move-object/from16 v36, v2

    move-object/from16 v2, v36

    goto/16 :goto_0

    .line 797
    .end local v28    # "tmp12":D
    .end local v30    # "tmp13":D
    .end local v32    # "tmp14":D
    .end local v34    # "tmp15":D
    :cond_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v28, v36

    .line 799
    .restart local v28    # "tmp12":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v30, v36

    .line 801
    .restart local v30    # "tmp13":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v32, v36

    .line 803
    .restart local v32    # "tmp14":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xf

    aget-wide v38, v38, v39

    add-double v36, v36, v38

    move-wide/from16 v34, v36

    .restart local v34    # "tmp15":D
    goto/16 :goto_1

    .line 807
    .end local v4    # "tmp0":D
    .end local v6    # "tmp1":D
    .end local v8    # "tmp2":D
    .end local v10    # "tmp3":D
    .end local v12    # "tmp4":D
    .end local v14    # "tmp5":D
    .end local v16    # "tmp6":D
    .end local v18    # "tmp7":D
    .end local v20    # "tmp8":D
    .end local v22    # "tmp9":D
    .end local v24    # "tmp10":D
    .end local v26    # "tmp11":D
    .end local v28    # "tmp12":D
    .end local v30    # "tmp13":D
    .end local v32    # "tmp14":D
    .end local v34    # "tmp15":D
    :cond_2
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xc

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v4, v36

    .line 809
    .restart local v4    # "tmp0":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xd

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v6, v36

    .line 811
    .restart local v6    # "tmp1":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xe

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v8, v36

    .line 813
    .restart local v8    # "tmp2":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xf

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v10, v36

    .line 815
    .restart local v10    # "tmp3":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x7

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xc

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v12, v36

    .line 817
    .restart local v12    # "tmp4":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x7

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xd

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v14, v36

    .line 819
    .restart local v14    # "tmp5":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x7

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xe

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v16, v36

    .line 821
    .restart local v16    # "tmp6":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x4

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x5

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x6

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x7

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xf

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v18, v36

    .line 823
    .restart local v18    # "tmp7":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xb

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xc

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v20, v36

    .line 825
    .restart local v20    # "tmp8":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xb

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xd

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v22, v36

    .line 827
    .restart local v22    # "tmp9":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xb

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xe

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v24, v36

    .line 830
    .restart local v24    # "tmp10":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0x8

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x9

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xa

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xb

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xf

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v26, v36

    .line 832
    .restart local v26    # "tmp11":D
    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isAffine()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 833
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-wide/from16 v28, v36

    .line 834
    .restart local v28    # "tmp12":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xd

    aget-wide v36, v36, v37

    move-wide/from16 v30, v36

    .line 835
    .restart local v30    # "tmp13":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xe

    aget-wide v36, v36, v37

    move-wide/from16 v32, v36

    .line 836
    .restart local v32    # "tmp14":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xf

    aget-wide v36, v36, v37

    move-wide/from16 v34, v36

    .restart local v34    # "tmp15":D
    goto/16 :goto_1

    .line 838
    .end local v28    # "tmp12":D
    .end local v30    # "tmp13":D
    .end local v32    # "tmp14":D
    .end local v34    # "tmp15":D
    :cond_3
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x4

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x8

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xf

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xc

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v28, v36

    .line 840
    .restart local v28    # "tmp12":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x5

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x9

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xf

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xd

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v30, v36

    .line 842
    .restart local v30    # "tmp13":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x6

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xa

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xf

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xe

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v32, v36

    .line 844
    .restart local v32    # "tmp14":D
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    aget-wide v36, v36, v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0x3

    aget-wide v38, v38, v39

    mul-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0x7

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xb

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xf

    aget-wide v38, v38, v39

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xf

    aget-wide v40, v40, v41

    mul-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v34, v36

    .restart local v34    # "tmp15":D
    goto/16 :goto_1
.end method

.method public ortho(DDDDDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 49

    .prologue
    .line 315
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-wide/from16 v4, p1

    .local v4, "left":D
    move-wide/from16 v6, p3

    .local v6, "right":D
    move-wide/from16 v8, p5

    .local v8, "bottom":D
    move-wide/from16 v10, p7

    .local v10, "top":D
    move-wide/from16 v12, p9

    .local v12, "near":D
    move-wide/from16 v14, p11

    .local v14, "far":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v4

    sub-double v24, v24, v26

    div-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 316
    .local v16, "deltax":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    move-wide/from16 v26, v8

    sub-double v24, v24, v26

    div-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 317
    .local v18, "deltay":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v14

    move-wide/from16 v26, v12

    sub-double v24, v24, v26

    div-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 319
    .local v20, "deltaz":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 320
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-wide/from16 v24, v6

    move-wide/from16 v26, v4

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 321
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 322
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x7

    move-wide/from16 v24, v10

    move-wide/from16 v26, v8

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 323
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0xa

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v26, v20

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 324
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0xb

    move-wide/from16 v24, v14

    move-wide/from16 v26, v12

    add-double v24, v24, v26

    move-wide/from16 v26, v20

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 325
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v28, v0

    const/16 v29, 0x6

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v30, v0

    const/16 v31, 0x8

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v32, v0

    const/16 v33, 0x9

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v34, v0

    const/16 v35, 0xc

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xd

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xe

    const-wide/16 v40, 0x0

    move-object/from16 v44, v38

    move/from16 v45, v39

    move-wide/from16 v46, v40

    move-wide/from16 v38, v46

    move-object/from16 v40, v44

    move/from16 v41, v45

    move-wide/from16 v42, v46

    aput-wide v42, v40, v41

    move-object/from16 v44, v36

    move/from16 v45, v37

    move-wide/from16 v46, v38

    move-wide/from16 v36, v46

    move-object/from16 v38, v44

    move/from16 v39, v45

    move-wide/from16 v40, v46

    aput-wide v40, v38, v39

    move-object/from16 v44, v34

    move/from16 v45, v35

    move-wide/from16 v46, v36

    move-wide/from16 v34, v46

    move-object/from16 v36, v44

    move/from16 v37, v45

    move-wide/from16 v38, v46

    aput-wide v38, v36, v37

    move-object/from16 v44, v32

    move/from16 v45, v33

    move-wide/from16 v46, v34

    move-wide/from16 v32, v46

    move-object/from16 v34, v44

    move/from16 v35, v45

    move-wide/from16 v36, v46

    aput-wide v36, v34, v35

    move-object/from16 v44, v30

    move/from16 v45, v31

    move-wide/from16 v46, v32

    move-wide/from16 v30, v46

    move-object/from16 v32, v44

    move/from16 v33, v45

    move-wide/from16 v34, v46

    aput-wide v34, v32, v33

    move-object/from16 v44, v28

    move/from16 v45, v29

    move-wide/from16 v46, v30

    move-wide/from16 v28, v46

    move-object/from16 v30, v44

    move/from16 v31, v45

    move-wide/from16 v32, v46

    aput-wide v32, v30, v31

    move-object/from16 v44, v26

    move/from16 v45, v27

    move-wide/from16 v46, v28

    move-wide/from16 v26, v46

    move-object/from16 v28, v44

    move/from16 v29, v45

    move-wide/from16 v30, v46

    aput-wide v30, v28, v29

    move-object/from16 v44, v24

    move/from16 v45, v25

    move-wide/from16 v46, v26

    move-wide/from16 v24, v46

    move-object/from16 v26, v44

    move/from16 v27, v45

    move-wide/from16 v28, v46

    aput-wide v28, v26, v27

    aput-wide v24, v22, v23

    .line 327
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0xf

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    aput-wide v24, v22, v23

    .line 329
    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 330
    move-object/from16 v22, v3

    move-object/from16 v3, v22

    .end local v3    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v3
.end method

.method public perspective(ZDDDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 50

    .prologue
    .line 274
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move/from16 v3, p1

    .local v3, "verticalFOV":Z
    move-wide/from16 v4, p2

    .local v4, "fov":D
    move-wide/from16 v6, p4

    .local v6, "aspect":D
    move-wide/from16 v8, p6

    .local v8, "zNear":D
    move-wide/from16 v10, p8

    .local v10, "zFar":D
    move-wide/from16 v20, v4

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 276
    .local v18, "half_fov":D
    move-wide/from16 v20, v10

    move-wide/from16 v22, v8

    sub-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 277
    .local v16, "deltaZ":D
    move-wide/from16 v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 279
    .local v12, "sine":D
    move-wide/from16 v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move-wide/from16 v22, v12

    div-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 281
    .local v14, "cotangent":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v22, v3

    if-eqz v22, :cond_0

    move-wide/from16 v22, v14

    move-wide/from16 v24, v6

    div-double v22, v22, v24

    :goto_0
    aput-wide v22, v20, v21

    .line 282
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v22, v3

    if-eqz v22, :cond_1

    move-wide/from16 v22, v14

    :goto_1
    aput-wide v22, v20, v21

    .line 283
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0xa

    move-wide/from16 v22, v10

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v16

    div-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 284
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0xb

    const-wide/high16 v22, -0x4000000000000000L    # -2.0

    move-wide/from16 v24, v8

    mul-double v22, v22, v24

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    move-wide/from16 v24, v16

    div-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 285
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0xe

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    aput-wide v22, v20, v21

    .line 286
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v28, v0

    const/16 v29, 0x6

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v30, v0

    const/16 v31, 0x7

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v32, v0

    const/16 v33, 0x8

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v34, v0

    const/16 v35, 0x9

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v36, v0

    const/16 v37, 0xc

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v38, v0

    const/16 v39, 0xd

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    move-object/from16 v40, v0

    const/16 v41, 0xf

    const-wide/16 v42, 0x0

    move-object/from16 v46, v40

    move/from16 v47, v41

    move-wide/from16 v48, v42

    move-wide/from16 v40, v48

    move-object/from16 v42, v46

    move/from16 v43, v47

    move-wide/from16 v44, v48

    aput-wide v44, v42, v43

    move-object/from16 v46, v38

    move/from16 v47, v39

    move-wide/from16 v48, v40

    move-wide/from16 v38, v48

    move-object/from16 v40, v46

    move/from16 v41, v47

    move-wide/from16 v42, v48

    aput-wide v42, v40, v41

    move-object/from16 v46, v36

    move/from16 v47, v37

    move-wide/from16 v48, v38

    move-wide/from16 v36, v48

    move-object/from16 v38, v46

    move/from16 v39, v47

    move-wide/from16 v40, v48

    aput-wide v40, v38, v39

    move-object/from16 v46, v34

    move/from16 v47, v35

    move-wide/from16 v48, v36

    move-wide/from16 v34, v48

    move-object/from16 v36, v46

    move/from16 v37, v47

    move-wide/from16 v38, v48

    aput-wide v38, v36, v37

    move-object/from16 v46, v32

    move/from16 v47, v33

    move-wide/from16 v48, v34

    move-wide/from16 v32, v48

    move-object/from16 v34, v46

    move/from16 v35, v47

    move-wide/from16 v36, v48

    aput-wide v36, v34, v35

    move-object/from16 v46, v30

    move/from16 v47, v31

    move-wide/from16 v48, v32

    move-wide/from16 v30, v48

    move-object/from16 v32, v46

    move/from16 v33, v47

    move-wide/from16 v34, v48

    aput-wide v34, v32, v33

    move-object/from16 v46, v28

    move/from16 v47, v29

    move-wide/from16 v48, v30

    move-wide/from16 v28, v48

    move-object/from16 v30, v46

    move/from16 v31, v47

    move-wide/from16 v32, v48

    aput-wide v32, v30, v31

    move-object/from16 v46, v26

    move/from16 v47, v27

    move-wide/from16 v48, v28

    move-wide/from16 v26, v48

    move-object/from16 v28, v46

    move/from16 v29, v47

    move-wide/from16 v30, v48

    aput-wide v30, v28, v29

    move-object/from16 v46, v24

    move/from16 v47, v25

    move-wide/from16 v48, v26

    move-wide/from16 v24, v48

    move-object/from16 v26, v46

    move/from16 v27, v47

    move-wide/from16 v28, v48

    aput-wide v28, v26, v27

    move-object/from16 v46, v22

    move/from16 v47, v23

    move-wide/from16 v48, v24

    move-wide/from16 v22, v48

    move-object/from16 v24, v46

    move/from16 v25, v47

    move-wide/from16 v26, v48

    aput-wide v26, v24, v25

    aput-wide v22, v20, v21

    .line 288
    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 289
    move-object/from16 v20, v2

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v2

    .line 281
    .restart local v2    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    :cond_0
    move-wide/from16 v22, v14

    goto/16 :goto_0

    .line 282
    :cond_1
    move-wide/from16 v22, v14

    move-wide/from16 v24, v6

    mul-double v22, v22, v24

    goto/16 :goto_1
.end method

.method public scale(DDD)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 17

    .prologue
    .line 731
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-wide/from16 v1, p1

    .local v1, "sx":D
    move-wide/from16 v3, p3

    .local v3, "sy":D
    move-wide/from16 v5, p5

    .local v5, "sz":D
    const/4 v8, 0x0

    move v7, v8

    .line 733
    .local v7, "update":Z
    move-wide v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 734
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x0

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v1

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 735
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x4

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v1

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 736
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x8

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v1

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 737
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xc

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v1

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 738
    const/4 v8, 0x1

    move v7, v8

    .line 740
    :cond_0
    move-wide v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_1

    .line 741
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x1

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v3

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 742
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x5

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v3

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 743
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v3

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 744
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xd

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v3

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 745
    const/4 v8, 0x1

    move v7, v8

    .line 747
    :cond_1
    move-wide v8, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_2

    .line 748
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x2

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v5

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 749
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x6

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v5

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 750
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xa

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v5

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 751
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xe

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget-wide v10, v10, v11

    move-wide v12, v5

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 752
    const/4 v8, 0x1

    move v7, v8

    .line 755
    :cond_2
    move v8, v7

    if-eqz v8, :cond_3

    .line 756
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 758
    :cond_3
    move-object v8, v0

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "t1":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 82
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public set([D)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "m":[D
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->updateState()V

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public setIdentity()Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 6

    .prologue
    .line 876
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 877
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 878
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x9

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xa

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 879
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 880
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->identity:Z

    .line 881
    move-object v2, v1

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0x9

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xa

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xb

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xc

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xd

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xe

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v3, 0xf

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->tempV3d:Lcom/sun/javafx/geom/Vec3d;

    if-nez v3, :cond_0

    .line 127
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/Vec3d;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->tempV3d:Lcom/sun/javafx/geom/Vec3d;

    .line 129
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->tempV3d:Lcom/sun/javafx/geom/Vec3d;

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/geom/transform/TransformHelper;->general3dBoundsTransform(Lcom/sun/javafx/geom/transform/CanTransformVec3d;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "point":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "pointOut":Lcom/sun/javafx/geom/Point2D;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 140
    new-instance v5, Lcom/sun/javafx/geom/Point2D;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v2, v5

    .line 143
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v6, 0xc

    aget-wide v5, v5, v6

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v8, 0xd

    aget-wide v7, v7, v8

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v8, 0xf

    aget-wide v7, v7, v8

    add-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v5, v5

    move-wide v3, v5

    .line 146
    .local v3, "w":D
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 148
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 151
    move-object v5, v2

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v6, v6

    move-wide v8, v3

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 152
    move-object v5, v2

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v6, v6

    move-wide v8, v3

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 154
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 5

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "point":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 13

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "point":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, p2

    .local v2, "pointOut":Lcom/sun/javafx/geom/Vec3d;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 170
    new-instance v5, Lcom/sun/javafx/geom/Vec3d;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v5

    .line 175
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v6, 0xc

    aget-wide v5, v5, v6

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v8, 0xd

    aget-wide v7, v7, v8

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v8, 0xe

    aget-wide v7, v7, v8

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v8, 0xf

    aget-wide v7, v7, v8

    add-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v5, v5

    move-wide v3, v5

    .line 178
    .local v3, "w":D
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 180
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 182
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v7, 0x8

    aget-wide v6, v6, v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/Vec3d;->x:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0x9

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xa

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/Vec3d;->z:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v9, 0xb

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 185
    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    .line 186
    move-object v5, v2

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v8, v3

    div-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 187
    move-object v5, v2

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v8, v3

    div-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 188
    move-object v5, v2

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v8, v3

    div-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 191
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transformNormal(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "normal":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transformNormal(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method

.method public transformNormal(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 10

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v1, p1

    .local v1, "normal":Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "normalOut":Lcom/sun/javafx/geom/Vec3f;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->x:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->y:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->z:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 225
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->x:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->y:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->z:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 227
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Vec3f;->x:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v7, 0x9

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->y:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mat:[D

    const/16 v7, 0xa

    aget-wide v6, v6, v7

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/Vec3f;->z:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 229
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    return-object v0
.end method
