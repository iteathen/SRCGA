.class public abstract Lcom/sun/javafx/geom/transform/AffineBase;
.super Lcom/sun/javafx/geom/transform/BaseTransform;
.source "AffineBase.java"


# static fields
.field protected static final APPLY_2D_DELTA_MASK:I = 0x6

.field protected static final APPLY_2D_MASK:I = 0x7

.field protected static final APPLY_3D:I = 0x8

.field protected static final APPLY_IDENTITY:I = 0x0

.field protected static final APPLY_SCALE:I = 0x2

.field protected static final APPLY_SHEAR:I = 0x4

.field protected static final APPLY_TRANSLATE:I = 0x1

.field protected static final HI_3D:I = 0x80

.field protected static final HI_IDENTITY:I = 0x0

.field protected static final HI_SCALE:I = 0x20

.field protected static final HI_SHEAR:I = 0x40

.field protected static final HI_SHIFT:I = 0x4

.field protected static final HI_TRANSLATE:I = 0x10

.field private static final rot90conversion:[I


# instance fields
.field protected mxt:D

.field protected mxx:D

.field protected mxy:D

.field protected myt:D

.field protected myx:D

.field protected myy:D

.field protected transient state:I

.field protected transient type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2378
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/geom/transform/AffineBase;->rot90conversion:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x4
        0x5
        0x2
        0x3
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/BaseTransform;-><init>()V

    return-void
.end method

.method private doInverseTransform([FI[FIII)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 2012
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "srcPts":[F
    move/from16 v5, p2

    .local v5, "srcOff":I
    move-object/from16 v6, p3

    .local v6, "dstPts":[F
    move/from16 v7, p4

    .local v7, "dstOff":I
    move/from16 v8, p5

    .local v8, "numPts":I
    move/from16 v9, p6

    .local v9, "thestate":I
    move-object/from16 v28, v6

    move-object/from16 v29, v4

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_0

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v8

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 2023
    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    const/16 v33, 0x2

    mul-int/lit8 v32, v32, 0x2

    invoke-static/range {v28 .. v32}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2025
    move/from16 v28, v7

    move/from16 v5, v28

    .line 2028
    :cond_0
    move/from16 v28, v9

    packed-switch v28, :pswitch_data_0

    .line 2030
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2033
    :pswitch_0
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v10, v28

    .local v10, "Mxx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    move-wide/from16 v12, v28

    .local v12, "Mxy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v28, v0

    move-wide/from16 v14, v28

    .line 2034
    .local v14, "Mxt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v16, v28

    .local v16, "Myx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v28, v0

    move-wide/from16 v18, v28

    .local v18, "Myy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v28, v0

    move-wide/from16 v20, v28

    .line 2035
    .local v20, "Myt":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v18

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v16

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 2036
    .local v22, "det":D
    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_1

    move-wide/from16 v28, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide/16 v30, 0x1

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_2

    .line 2037
    :cond_1
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Determinant is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-wide/from16 v31, v22

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2040
    :cond_2
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_3

    .line 2041
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 2042
    .local v24, "x":D
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v20

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 2043
    .local v26, "y":D
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v24

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    move-wide/from16 v32, v26

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v22

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2044
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v26

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    move-wide/from16 v32, v24

    move-wide/from16 v34, v16

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v22

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2045
    goto :goto_0

    .line 2046
    .line 2118
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    .end local v22    # "det":D
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_3
    :goto_1
    return-void

    .line 2048
    :pswitch_1
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v10, v28

    .restart local v10    # "Mxx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    move-wide/from16 v12, v28

    .line 2049
    .restart local v12    # "Mxy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v16, v28

    .restart local v16    # "Myx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v28, v0

    move-wide/from16 v18, v28

    .line 2050
    .restart local v18    # "Myy":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v18

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v16

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 2051
    .restart local v22    # "det":D
    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_4

    move-wide/from16 v28, v22

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide/16 v30, 0x1

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_5

    .line 2052
    :cond_4
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Determinant is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-wide/from16 v31, v22

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2055
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_6

    .line 2056
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v24, v28

    .line 2057
    .restart local v24    # "x":D
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v26, v28

    .line 2058
    .restart local v26    # "y":D
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v24

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    move-wide/from16 v32, v26

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v22

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2059
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v26

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    move-wide/from16 v32, v24

    move-wide/from16 v34, v16

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v22

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2060
    goto :goto_2

    .line 2061
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_6
    goto/16 :goto_1

    .line 2063
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    .end local v22    # "det":D
    :pswitch_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    move-wide/from16 v12, v28

    .restart local v12    # "Mxy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v28, v0

    move-wide/from16 v14, v28

    .line 2064
    .restart local v14    # "Mxt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v16, v28

    .restart local v16    # "Myx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v28, v0

    move-wide/from16 v20, v28

    .line 2065
    .restart local v20    # "Myt":D
    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_7

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_8

    .line 2066
    :cond_7
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2068
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_9

    .line 2069
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 2070
    .restart local v24    # "x":D
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    sub-double v30, v30, v32

    move-wide/from16 v32, v16

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2071
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v24

    move-wide/from16 v32, v12

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2072
    goto :goto_3

    .line 2073
    .end local v24    # "x":D
    :cond_9
    goto/16 :goto_1

    .line 2075
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v20    # "Myt":D
    :pswitch_3
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    move-wide/from16 v12, v28

    .restart local v12    # "Mxy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v16, v28

    .line 2076
    .restart local v16    # "Myx":D
    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_a

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_b

    .line 2077
    :cond_a
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2079
    :cond_b
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_c

    .line 2080
    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v24, v28

    .line 2081
    .restart local v24    # "x":D
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v16

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2082
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v30, v24

    move-wide/from16 v32, v12

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2083
    goto :goto_4

    .line 2084
    .end local v24    # "x":D
    :cond_c
    goto/16 :goto_1

    .line 2086
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    :pswitch_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v10, v28

    .restart local v10    # "Mxx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v28, v0

    move-wide/from16 v14, v28

    .line 2087
    .restart local v14    # "Mxt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v28, v0

    move-wide/from16 v18, v28

    .restart local v18    # "Myy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v28, v0

    move-wide/from16 v20, v28

    .line 2088
    .restart local v20    # "Myt":D
    move-wide/from16 v28, v10

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_d

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_e

    .line 2089
    :cond_d
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2091
    :cond_e
    :goto_5
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_f

    .line 2092
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v14

    sub-double v30, v30, v32

    move-wide/from16 v32, v10

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2093
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    sub-double v30, v30, v32

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    goto :goto_5

    .line 2095
    :cond_f
    goto/16 :goto_1

    .line 2097
    .end local v10    # "Mxx":D
    .end local v14    # "Mxt":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    :pswitch_5
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v10, v28

    .restart local v10    # "Mxx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v28, v0

    move-wide/from16 v18, v28

    .line 2098
    .restart local v18    # "Myy":D
    move-wide/from16 v28, v10

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_10

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_11

    .line 2099
    :cond_10
    new-instance v28, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v36, v28

    move-object/from16 v28, v36

    move-object/from16 v29, v36

    const-string v30, "Determinant is 0"

    invoke-direct/range {v29 .. v30}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2101
    :cond_11
    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_12

    .line 2102
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v10

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2103
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    goto :goto_6

    .line 2105
    :cond_12
    goto/16 :goto_1

    .line 2107
    .end local v10    # "Mxx":D
    .end local v18    # "Myy":D
    :pswitch_6
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v28, v0

    move-wide/from16 v14, v28

    .restart local v14    # "Mxt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v28, v0

    move-wide/from16 v20, v28

    .line 2108
    .restart local v20    # "Myt":D
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move/from16 v28, v8

    if-ltz v28, :cond_13

    .line 2109
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v14

    sub-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 2110
    move-object/from16 v28, v6

    move/from16 v29, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    sub-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    goto :goto_7

    .line 2112
    :cond_13
    goto/16 :goto_1

    .line 2114
    .end local v14    # "Mxt":D
    .end local v20    # "Myt":D
    :pswitch_7
    move-object/from16 v28, v4

    move-object/from16 v29, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 2115
    :cond_14
    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    const/16 v33, 0x2

    mul-int/lit8 v32, v32, 0x2

    invoke-static/range {v28 .. v32}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2118
    :cond_15
    goto/16 :goto_1

    .line 2028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doTransform([DI[DIII)V
    .locals 34

    .prologue
    .line 1232
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "srcPts":[D
    move/from16 v5, p2

    .local v5, "srcOff":I
    move-object/from16 v6, p3

    .local v6, "dstPts":[D
    move/from16 v7, p4

    .local v7, "dstOff":I
    move/from16 v8, p5

    .local v8, "numPts":I
    move/from16 v9, p6

    .local v9, "thestate":I
    move-object/from16 v26, v6

    move-object/from16 v27, v4

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    move/from16 v26, v7

    move/from16 v27, v5

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move/from16 v26, v7

    move/from16 v27, v5

    move/from16 v28, v8

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1243
    move-object/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    move/from16 v26, v7

    move/from16 v5, v26

    .line 1251
    :cond_0
    move/from16 v26, v9

    packed-switch v26, :pswitch_data_0

    .line 1253
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1256
    :pswitch_0
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .local v10, "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .local v12, "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1257
    .local v14, "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .local v16, "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .local v18, "Myy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1258
    .local v20, "Myt":D
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_1

    .line 1259
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 1260
    .local v22, "x":D
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v24, v26

    .line 1261
    .local v24, "y":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1262
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1263
    goto :goto_0

    .line 1264
    .line 1319
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_1
    :goto_1
    return-void

    .line 1266
    :pswitch_1
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .line 1267
    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .restart local v16    # "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 1268
    .restart local v18    # "Myy":D
    :goto_2
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_2

    .line 1269
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 1270
    .restart local v22    # "x":D
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v24, v26

    .line 1271
    .restart local v24    # "y":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1272
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1273
    goto :goto_2

    .line 1274
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_2
    goto :goto_1

    .line 1276
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    :pswitch_2
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1277
    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .restart local v16    # "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1278
    .restart local v20    # "Myt":D
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_3

    .line 1279
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 1280
    .restart local v22    # "x":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v12

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1281
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1282
    goto :goto_3

    .line 1283
    .end local v22    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 1285
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v20    # "Myt":D
    :pswitch_3
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .line 1286
    .restart local v16    # "Myx":D
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_4

    .line 1287
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 1288
    .restart local v22    # "x":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v12

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1289
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1290
    goto :goto_4

    .line 1291
    .end local v22    # "x":D
    :cond_4
    goto/16 :goto_1

    .line 1293
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    :pswitch_4
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1294
    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .restart local v18    # "Myy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1295
    .restart local v20    # "Myt":D
    :goto_5
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_5

    .line 1296
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1297
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v18

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_5

    .line 1299
    :cond_5
    goto/16 :goto_1

    .line 1301
    .end local v10    # "Mxx":D
    .end local v14    # "Mxt":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    :pswitch_5
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 1302
    .restart local v18    # "Myy":D
    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_6

    .line 1303
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1304
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v18

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v30, v30, v31

    mul-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_6

    .line 1306
    :cond_6
    goto/16 :goto_1

    .line 1308
    .end local v10    # "Mxx":D
    .end local v18    # "Myy":D
    :pswitch_6
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1309
    .restart local v20    # "Myt":D
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_7

    .line 1310
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 1311
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_7

    .line 1313
    :cond_7
    goto/16 :goto_1

    .line 1315
    .end local v14    # "Mxt":D
    .end local v20    # "Myt":D
    :pswitch_7
    move-object/from16 v26, v4

    move-object/from16 v27, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 1316
    :cond_8
    move-object/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    :cond_9
    goto/16 :goto_1

    .line 1251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doTransform([FI[FIII)V
    .locals 34

    .prologue
    .line 1068
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "srcPts":[F
    move/from16 v5, p2

    .local v5, "srcOff":I
    move-object/from16 v6, p3

    .local v6, "dstPts":[F
    move/from16 v7, p4

    .local v7, "dstOff":I
    move/from16 v8, p5

    .local v8, "numPts":I
    move/from16 v9, p6

    .local v9, "thestate":I
    move-object/from16 v26, v6

    move-object/from16 v27, v4

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    move/from16 v26, v7

    move/from16 v27, v5

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move/from16 v26, v7

    move/from16 v27, v5

    move/from16 v28, v8

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1079
    move-object/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    move/from16 v26, v7

    move/from16 v5, v26

    .line 1087
    :cond_0
    move/from16 v26, v9

    packed-switch v26, :pswitch_data_0

    .line 1089
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1092
    :pswitch_0
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .local v10, "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .local v12, "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1093
    .local v14, "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .local v16, "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .local v18, "Myy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1094
    .local v20, "Myt":D
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_1

    .line 1095
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v22, v26

    .line 1096
    .local v22, "x":D
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v24, v26

    .line 1097
    .local v24, "y":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1098
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1099
    goto :goto_0

    .line 1100
    .line 1155
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_1
    :goto_1
    return-void

    .line 1102
    :pswitch_1
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .line 1103
    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .restart local v16    # "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 1104
    .restart local v18    # "Myy":D
    :goto_2
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_2

    .line 1105
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v22, v26

    .line 1106
    .restart local v22    # "x":D
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v24, v26

    .line 1107
    .restart local v24    # "y":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v12

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1108
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v24

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1109
    goto :goto_2

    .line 1110
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_2
    goto/16 :goto_1

    .line 1112
    .end local v10    # "Mxx":D
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    .end local v18    # "Myy":D
    :pswitch_2
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1113
    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .restart local v16    # "Myx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1114
    .restart local v20    # "Myt":D
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_3

    .line 1115
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v22, v26

    .line 1116
    .restart local v22    # "x":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v12

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1117
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1118
    goto :goto_3

    .line 1119
    .end local v22    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 1121
    .end local v12    # "Mxy":D
    .end local v14    # "Mxt":D
    .end local v16    # "Myx":D
    .end local v20    # "Myt":D
    :pswitch_3
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .restart local v12    # "Mxy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .line 1122
    .restart local v16    # "Myx":D
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_4

    .line 1123
    move-object/from16 v26, v4

    move/from16 v27, v5

    add-int/lit8 v5, v5, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v22, v26

    .line 1124
    .restart local v22    # "x":D
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v12

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1125
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1126
    goto :goto_4

    .line 1127
    .end local v22    # "x":D
    :cond_4
    goto/16 :goto_1

    .line 1129
    .end local v12    # "Mxy":D
    .end local v16    # "Myx":D
    :pswitch_4
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 1130
    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .restart local v18    # "Myy":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1131
    .restart local v20    # "Myt":D
    :goto_5
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_5

    .line 1132
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1133
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v18

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    goto :goto_5

    .line 1135
    :cond_5
    goto/16 :goto_1

    .line 1137
    .end local v10    # "Mxx":D
    .end local v14    # "Mxt":D
    .end local v18    # "Myy":D
    .end local v20    # "Myt":D
    :pswitch_5
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxx":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 1138
    .restart local v18    # "Myy":D
    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_6

    .line 1139
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v10

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1140
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v28, v18

    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    goto :goto_6

    .line 1142
    :cond_6
    goto/16 :goto_1

    .line 1144
    .end local v10    # "Mxx":D
    .end local v18    # "Myy":D
    :pswitch_6
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .restart local v14    # "Mxt":D
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v20, v26

    .line 1145
    .restart local v20    # "Myt":D
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v8

    if-ltz v26, :cond_7

    .line 1146
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    .line 1147
    move-object/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v28, v4

    move/from16 v29, v5

    add-int/lit8 v5, v5, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    goto :goto_7

    .line 1149
    :cond_7
    goto/16 :goto_1

    .line 1151
    .end local v14    # "Mxt":D
    .end local v20    # "Myt":D
    :pswitch_7
    move-object/from16 v26, v4

    move-object/from16 v27, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 1152
    :cond_8
    move-object/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1155
    :cond_9
    goto/16 :goto_1

    .line 1087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inversTransform2DBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1745
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "src":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v5, p2

    .local v5, "dst":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1747
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1752
    :pswitch_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v6, v16

    .line 1753
    .local v6, "det":D
    move-wide/from16 v16, v6

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_0

    move-wide/from16 v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide/16 v18, 0x1

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_1

    .line 1754
    :cond_0
    new-instance v16, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Determinant is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-wide/from16 v19, v6

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1757
    :cond_1
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v8, v16

    .line 1758
    .local v8, "x1":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 1759
    .local v10, "y1":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 1760
    .local v12, "x2":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 1761
    .local v14, "y2":D
    move-object/from16 v16, v5

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v10

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    move-wide/from16 v19, v6

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v20, v8

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-wide/from16 v19, v12

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v21, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v21, v6

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v14

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v22, v6

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1765
    move-object/from16 v16, v5

    move-wide/from16 v17, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v10

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    move-wide/from16 v19, v6

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 1767
    move-object/from16 v16, v5

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v14

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    move-wide/from16 v19, v6

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v14

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v20, v8

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 1769
    move-object/from16 v16, v5

    move-object/from16 v3, v16

    .line 1818
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v6    # "det":D
    .end local v8    # "x1":D
    .end local v10    # "y1":D
    .end local v12    # "x2":D
    .end local v14    # "y2":D
    :goto_0
    return-object v3

    .line 1771
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_3

    .line 1772
    :cond_2
    new-instance v16, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1774
    :cond_3
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 1775
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 1776
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 1777
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1774
    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1778
    .line 1818
    :cond_4
    :goto_1
    move-object/from16 v16, v5

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 1780
    :pswitch_2
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    .line 1781
    :cond_5
    new-instance v16, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1783
    :cond_6
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 1784
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 1785
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 1786
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1783
    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1787
    goto/16 :goto_1

    .line 1789
    :pswitch_3
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_8

    .line 1790
    :cond_7
    new-instance v16, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1792
    :cond_8
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 1793
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 1794
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 1795
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1792
    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1796
    goto/16 :goto_1

    .line 1798
    :pswitch_4
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_9

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_a

    .line 1799
    :cond_9
    new-instance v16, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string v18, "Determinant is 0"

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1801
    :cond_a
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 1802
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 1803
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 1804
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1801
    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1805
    goto/16 :goto_1

    .line 1807
    :pswitch_5
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 1808
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 1809
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 1810
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1807
    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1811
    goto/16 :goto_1

    .line 1813
    :pswitch_6
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 1814
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    goto/16 :goto_1

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inversTransform3DBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1825
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1827
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1836
    :pswitch_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v6, v20

    .line 1837
    .local v6, "det":D
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide/16 v22, 0x1

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_1

    .line 1838
    :cond_0
    new-instance v20, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Determinant is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v23, v6

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1841
    :cond_1
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 1842
    .local v8, "x1":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 1843
    .local v10, "y1":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .line 1844
    .local v12, "z1":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 1845
    .local v14, "x2":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 1846
    .local v16, "y2":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v18, v20

    .line 1847
    .local v18, "z2":D
    move-object/from16 v20, v5

    move-wide/from16 v21, v8

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v23, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v23, v6

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v6

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v12

    move-wide/from16 v25, v6

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v14

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v26, v6

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-wide/from16 v25, v16

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    move-wide/from16 v27, v14

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    move-wide/from16 v27, v6

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v6

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v5, v20

    .line 1854
    move-object/from16 v20, v5

    move-wide/from16 v21, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v23, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v23, v6

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v14

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v6

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->add(FFF)V

    .line 1856
    move-object/from16 v20, v5

    move-wide/from16 v21, v8

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v23, v16

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v23, v6

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v16

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v6

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->add(FFF)V

    .line 1858
    move-object/from16 v20, v5

    move-object/from16 v3, v20

    .line 1895
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v6    # "det":D
    .end local v8    # "x1":D
    .end local v10    # "y1":D
    .end local v12    # "z1":D
    .end local v14    # "x2":D
    .end local v16    # "y2":D
    .end local v18    # "z2":D
    :goto_0
    return-object v3

    .line 1860
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_3

    .line 1861
    :cond_2
    new-instance v20, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    const-string v22, "Determinant is 0"

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1863
    :cond_3
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v4

    .line 1864
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 1865
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v23

    move-object/from16 v24, v4

    .line 1866
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v4

    .line 1867
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v4

    .line 1868
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v26

    .line 1863
    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v5, v20

    .line 1895
    :cond_4
    :goto_1
    move-object/from16 v20, v5

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 1871
    :pswitch_2
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_6

    .line 1872
    :cond_5
    new-instance v20, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    const-string v22, "Determinant is 0"

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1874
    :cond_6
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v4

    .line 1875
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 1876
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v23

    move-object/from16 v24, v4

    .line 1877
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v4

    .line 1878
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v4

    .line 1879
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v26

    .line 1874
    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v5, v20

    .line 1880
    goto/16 :goto_1

    .line 1882
    :pswitch_3
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v4

    .line 1883
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 1884
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v23

    move-object/from16 v24, v4

    .line 1885
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v4

    .line 1886
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v4

    .line 1887
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v26

    .line 1882
    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v5, v20

    .line 1888
    goto/16 :goto_1

    .line 1890
    :pswitch_4
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 1891
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v5, v20

    goto/16 :goto_1

    .line 1825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static stateError()V
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/InternalError;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "missing case in transform state switch"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private transform2DBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 24

    .prologue
    .line 816
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "src":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v5, p2

    .local v5, "dst":Lcom/sun/javafx/geom/RectBounds;
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v15, 0x7

    and-int/lit8 v14, v14, 0x7

    packed-switch v14, :pswitch_data_0

    .line 818
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 823
    :pswitch_0
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v14

    float-to-double v14, v14

    move-wide v6, v14

    .line 824
    .local v6, "x1":D
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    move-wide v8, v14

    .line 825
    .local v8, "y1":D
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v14

    float-to-double v14, v14

    move-wide v10, v14

    .line 826
    .local v10, "x2":D
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v14

    float-to-double v14, v14

    move-wide v12, v14

    .line 827
    .local v12, "y2":D
    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    add-double v15, v15, v17

    double-to-float v15, v15

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v12

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 831
    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-wide/from16 v17, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    add-double v15, v15, v17

    double-to-float v15, v15

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v12

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 833
    move-object v14, v5

    move-wide v15, v10

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    add-double v15, v15, v17

    double-to-float v15, v15

    move-wide/from16 v16, v10

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    .line 835
    move-object v14, v5

    move-object v15, v5

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v5

    .line 836
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v5

    .line 837
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v5

    .line 838
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 835
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 839
    .line 876
    .end local v6    # "x1":D
    .end local v8    # "y1":D
    .end local v10    # "x2":D
    .end local v12    # "y2":D
    :cond_0
    :goto_0
    move-object v14, v5

    move-object v3, v14

    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-object v3

    .line 841
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 842
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 843
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 844
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 841
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 845
    goto/16 :goto_0

    .line 847
    :pswitch_2
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 848
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 849
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 850
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 847
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 851
    goto/16 :goto_0

    .line 853
    :pswitch_3
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 854
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 855
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 856
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 853
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 857
    goto/16 :goto_0

    .line 859
    :pswitch_4
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 860
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 861
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 862
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 859
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 863
    goto/16 :goto_0

    .line 865
    :pswitch_5
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 866
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 867
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 868
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 865
    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 869
    goto/16 :goto_0

    .line 871
    :pswitch_6
    move-object v14, v4

    move-object v15, v5

    if-eq v14, v15, :cond_0

    .line 872
    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    goto/16 :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transform3DBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 29

    .prologue
    .line 881
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v18, v0

    const/16 v19, 0x7

    and-int/lit8 v18, v18, 0x7

    packed-switch v18, :pswitch_data_0

    .line 883
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 889
    :pswitch_0
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 890
    .local v6, "x1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 891
    .local v8, "y1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 892
    .local v10, "z1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 893
    .local v12, "x2":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 894
    .local v14, "y2":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 895
    .local v16, "z2":D
    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v21, v8

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v22, v8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-wide/from16 v21, v10

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v14

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v12

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v25, v14

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v16

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->setBoundsAndSort(FFFFFF)V

    .line 901
    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v21, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v22, v14

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->add(FFF)V

    .line 903
    move-object/from16 v18, v5

    move-wide/from16 v19, v12

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v21, v8

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v22, v8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->add(FFF)V

    .line 905
    move-object/from16 v18, v5

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v5

    .line 906
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v5

    .line 907
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v5

    .line 908
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    .line 909
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    .line 910
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 905
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    .line 911
    .line 958
    .end local v6    # "x1":D
    .end local v8    # "y1":D
    .end local v10    # "z1":D
    .end local v12    # "x2":D
    .end local v14    # "y2":D
    .end local v16    # "z2":D
    :cond_0
    :goto_0
    move-object/from16 v18, v5

    move-object/from16 v3, v18

    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-object v3

    .line 913
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 914
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 915
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v4

    .line 916
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 917
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v4

    .line 918
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 913
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 919
    goto/16 :goto_0

    .line 921
    :pswitch_2
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 922
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 923
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v4

    .line 924
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 925
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v4

    .line 926
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 921
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 927
    goto/16 :goto_0

    .line 929
    :pswitch_3
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 930
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 931
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v4

    .line 932
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 933
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v4

    .line 934
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 929
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 935
    goto/16 :goto_0

    .line 937
    :pswitch_4
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 938
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 939
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v4

    .line 940
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 941
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v4

    .line 942
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 937
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 943
    goto/16 :goto_0

    .line 945
    :pswitch_5
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 946
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 947
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v21

    move-object/from16 v22, v4

    .line 948
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 949
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v25, v0

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v4

    .line 950
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v24

    .line 945
    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    .line 951
    goto/16 :goto_0

    .line 953
    :pswitch_6
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 954
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v5, v18

    goto/16 :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected calculateType()I
    .locals 10

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v1, v4

    .line 286
    .local v1, "ret":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 288
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 291
    :pswitch_0
    move v4, v1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 294
    :pswitch_1
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 296
    move v4, v1

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    move v1, v4

    .line 399
    :goto_1
    :pswitch_2
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return v0

    .line 284
    .end local v1    # "ret":I
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_0
    const/16 v4, 0x80

    goto :goto_0

    .line 299
    .restart local v1    # "ret":I
    :cond_1
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v2, v4

    .line 300
    .local v2, "sgn0":Z
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 301
    .local v3, "sgn1":Z
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_7

    .line 304
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    neg-double v6, v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    .line 305
    :cond_2
    move v4, v1

    const/16 v5, 0x14

    or-int/lit8 v4, v4, 0x14

    move v1, v4

    goto :goto_1

    .line 299
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 300
    .restart local v2    # "sgn0":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 306
    .restart local v3    # "sgn1":Z
    :cond_5
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_6

    .line 307
    move v4, v1

    const/16 v5, 0x12

    or-int/lit8 v4, v4, 0x12

    move v1, v4

    goto :goto_1

    .line 309
    :cond_6
    move v4, v1

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    move v1, v4

    goto :goto_1

    .line 314
    :cond_7
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    neg-double v6, v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_8

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_9

    .line 315
    :cond_8
    move v4, v1

    const/16 v5, 0x54

    or-int/lit8 v4, v4, 0x54

    move v1, v4

    goto :goto_1

    .line 318
    :cond_9
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_a

    .line 319
    move v4, v1

    const/16 v5, 0x52

    or-int/lit8 v4, v4, 0x52

    move v1, v4

    goto/16 :goto_1

    .line 323
    :cond_a
    move v4, v1

    const/16 v5, 0x50

    or-int/lit8 v4, v4, 0x50

    move v1, v4

    .line 326
    goto/16 :goto_1

    .line 328
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :pswitch_3
    move v4, v1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 331
    :pswitch_4
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    :goto_4
    move v2, v4

    .line 332
    .restart local v2    # "sgn0":Z
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_c

    const/4 v4, 0x1

    :goto_5
    move v3, v4

    .line 333
    .restart local v3    # "sgn1":Z
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_f

    .line 335
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    neg-double v6, v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_d

    .line 336
    move v4, v1

    const/16 v5, 0xc

    or-int/lit8 v4, v4, 0xc

    move v1, v4

    goto/16 :goto_1

    .line 331
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .line 332
    .restart local v2    # "sgn0":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 337
    .restart local v3    # "sgn1":Z
    :cond_d
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_e

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_e

    .line 338
    move v4, v1

    const/16 v5, 0xa

    or-int/lit8 v4, v4, 0xa

    move v1, v4

    goto/16 :goto_1

    .line 340
    :cond_e
    move v4, v1

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    move v1, v4

    goto/16 :goto_1

    .line 344
    :cond_f
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_10

    .line 345
    move v4, v1

    const/16 v5, 0x4a

    or-int/lit8 v4, v4, 0x4a

    move v1, v4

    goto/16 :goto_1

    .line 349
    :cond_10
    move v4, v1

    const/16 v5, 0x4c

    or-int/lit8 v4, v4, 0x4c

    move v1, v4

    .line 354
    goto/16 :goto_1

    .line 356
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :pswitch_5
    move v4, v1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 359
    :pswitch_6
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_11

    const/4 v4, 0x1

    :goto_6
    move v2, v4

    .line 360
    .restart local v2    # "sgn0":Z
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_12

    const/4 v4, 0x1

    :goto_7
    move v3, v4

    .line 361
    .restart local v3    # "sgn1":Z
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_17

    .line 362
    move v4, v2

    if-eqz v4, :cond_14

    .line 365
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_13

    .line 366
    move v4, v1

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v1, v4

    goto/16 :goto_1

    .line 359
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_6

    .line 360
    .restart local v2    # "sgn0":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_7

    .line 368
    .restart local v3    # "sgn1":Z
    :cond_13
    move v4, v1

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    move v1, v4

    goto/16 :goto_1

    .line 372
    :cond_14
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_15

    .line 373
    move v4, v1

    const/16 v5, 0xc

    or-int/lit8 v4, v4, 0xc

    move v1, v4

    goto/16 :goto_1

    .line 374
    :cond_15
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_16

    .line 375
    move v4, v1

    const/16 v5, 0xa

    or-int/lit8 v4, v4, 0xa

    move v1, v4

    goto/16 :goto_1

    .line 377
    :cond_16
    move v4, v1

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    move v1, v4

    goto/16 :goto_1

    .line 382
    :cond_17
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    neg-double v6, v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1a

    .line 383
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_18

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_19

    .line 384
    :cond_18
    move v4, v1

    const/16 v5, 0x40

    or-int/lit8 v4, v4, 0x40

    move v1, v4

    goto/16 :goto_1

    .line 386
    :cond_19
    move v4, v1

    const/16 v5, 0x42

    or-int/lit8 v4, v4, 0x42

    move v1, v4

    goto/16 :goto_1

    .line 389
    :cond_1a
    move v4, v1

    const/16 v5, 0x44

    or-int/lit8 v4, v4, 0x44

    move v1, v4

    .line 392
    goto/16 :goto_1

    .line 394
    .end local v2    # "sgn0":Z
    .end local v3    # "sgn1":Z
    :pswitch_7
    move v4, v1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 395
    goto/16 :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public concatenate(DDDDDD)V
    .locals 35

    .prologue
    .line 2850
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide/from16 v4, p1

    .local v4, "Txx":D
    move-wide/from16 v6, p3

    .local v6, "Txy":D
    move-wide/from16 v8, p5

    .local v8, "Txt":D
    move-wide/from16 v10, p7

    .local v10, "Tyx":D
    move-wide/from16 v12, p9

    .local v12, "Tyy":D
    move-wide/from16 v14, p11

    .local v14, "Tyt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 2851
    .local v16, "rxx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 2852
    .local v18, "rxy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 2853
    .local v20, "rxt":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 2854
    .local v22, "ryx":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 2855
    .local v24, "ryy":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v30, v0

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 2856
    .local v26, "ryt":D
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2857
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2858
    move-object/from16 v28, v3

    move-wide/from16 v29, v20

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2859
    move-object/from16 v28, v3

    move-wide/from16 v29, v22

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2860
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2861
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2862
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState()V

    .line 2863
    return-void
.end method

.method public concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 37

    .prologue
    .line 2637
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v5, p1

    .local v5, "Tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v25, Lcom/sun/javafx/geom/transform/AffineBase$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getDegree()Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 2646
    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v25

    if-nez v25, :cond_0

    .line 2647
    sget-object v25, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-static/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/AffineBase;->degreeError(Lcom/sun/javafx/geom/transform/BaseTransform$Degree;)V

    .line 2654
    :cond_0
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 2655
    new-instance v25, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v27, v5

    invoke-direct/range {v26 .. v27}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object/from16 v5, v25

    .line 2662
    :cond_1
    :goto_0
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v25, v0

    move/from16 v22, v25

    .line 2663
    .local v22, "mystate":I
    move-object/from16 v25, v5

    check-cast v25, Lcom/sun/javafx/geom/transform/AffineBase;

    move-object/from16 v23, v25

    .line 2664
    .local v23, "at":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v25, v0

    move/from16 v24, v25

    .line 2665
    .local v24, "txstate":I
    move/from16 v25, v24

    const/16 v26, 0x4

    shl-int/lit8 v25, v25, 0x4

    move/from16 v26, v22

    or-int v25, v25, v26

    sparse-switch v25, :sswitch_data_0

    .line 2778
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v10, v25

    .local v10, "Txx":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v12, v25

    .local v12, "Txy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v25, v0

    move-wide/from16 v18, v25

    .line 2779
    .local v18, "Txt":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v14, v25

    .local v14, "Tyx":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v16, v25

    .local v16, "Tyy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v25, v0

    move-wide/from16 v20, v25

    .line 2780
    .local v20, "Tyt":D
    move/from16 v25, v22

    packed-switch v25, :pswitch_data_1

    .line 2782
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2785
    :pswitch_0
    move-object/from16 v25, v4

    move/from16 v26, v22

    move/from16 v27, v24

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2788
    :pswitch_1
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2789
    .local v6, "M0":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 2790
    .local v8, "M1":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v28, v14

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2791
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2792
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    add-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2794
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2795
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v8, v25

    .line 2796
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v28, v14

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2797
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2798
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    move-wide/from16 v30, v20

    move-wide/from16 v32, v8

    mul-double v30, v30, v32

    add-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2799
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2800
    .line 2841
    .end local v6    # "M0":D
    .end local v8    # "M1":D
    .end local v10    # "Txx":D
    .end local v12    # "Txy":D
    .end local v14    # "Tyx":D
    .end local v16    # "Tyy":D
    .end local v18    # "Txt":D
    .end local v20    # "Tyt":D
    .end local v22    # "mystate":I
    .end local v23    # "at":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v24    # "txstate":I
    :goto_1
    return-void

    .line 2639
    :pswitch_2
    goto :goto_1

    .line 2641
    :pswitch_3
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v26

    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v28

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 2642
    goto :goto_1

    .line 2644
    :pswitch_4
    goto/16 :goto_0

    .line 2676
    .restart local v22    # "mystate":I
    .restart local v23    # "at":Lcom/sun/javafx/geom/transform/AffineBase;
    .restart local v24    # "txstate":I
    :sswitch_0
    goto :goto_1

    .line 2680
    :sswitch_1
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2681
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2684
    :sswitch_2
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2685
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2688
    :sswitch_3
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2689
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2690
    move-object/from16 v25, v4

    move/from16 v26, v24

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2691
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2692
    goto/16 :goto_1

    .line 2694
    :sswitch_4
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2695
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2698
    :sswitch_5
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2699
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2700
    move-object/from16 v25, v4

    move/from16 v26, v24

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2701
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2702
    goto/16 :goto_1

    .line 2704
    :sswitch_6
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2705
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2708
    :sswitch_7
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2709
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2710
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    const-wide/16 v27, 0x0

    move-object/from16 v34, v26

    move-wide/from16 v35, v27

    move-wide/from16 v26, v35

    move-object/from16 v28, v34

    move-wide/from16 v29, v35

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2711
    move-object/from16 v25, v4

    move/from16 v26, v24

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2712
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2713
    goto/16 :goto_1

    .line 2723
    :sswitch_8
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->translate(DD)V

    .line 2724
    goto/16 :goto_1

    .line 2734
    :sswitch_9
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/sun/javafx/geom/transform/AffineBase;->scale(DD)V

    .line 2735
    goto/16 :goto_1

    .line 2740
    :sswitch_a
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v12, v25

    .restart local v12    # "Txy":D
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v14, v25

    .line 2741
    .restart local v14    # "Tyx":D
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2742
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2743
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2744
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2745
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2746
    move-object/from16 v25, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2747
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2748
    goto/16 :goto_1

    .line 2751
    .end local v6    # "M0":D
    .end local v12    # "Txy":D
    .end local v14    # "Tyx":D
    :sswitch_b
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2752
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2753
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2754
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2755
    move-object/from16 v25, v4

    move/from16 v26, v22

    const/16 v27, 0x6

    xor-int/lit8 v26, v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2756
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2757
    goto/16 :goto_1

    .line 2760
    :sswitch_c
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2761
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2762
    move-object/from16 v25, v4

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2763
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2764
    move-object/from16 v25, v4

    move/from16 v26, v22

    const/16 v27, 0x6

    xor-int/lit8 v26, v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2765
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2766
    goto/16 :goto_1

    .line 2768
    :sswitch_d
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2769
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2770
    move-object/from16 v25, v4

    move-object/from16 v26, v23

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2771
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2772
    move-object/from16 v25, v4

    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2773
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2774
    goto/16 :goto_1

    .line 2804
    .restart local v10    # "Txx":D
    .restart local v12    # "Txy":D
    .restart local v14    # "Tyx":D
    .restart local v16    # "Tyy":D
    .restart local v18    # "Txt":D
    .restart local v20    # "Tyt":D
    :pswitch_5
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2805
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v14

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2806
    move-object/from16 v25, v4

    move-wide/from16 v26, v16

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2807
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v20

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2809
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2810
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2811
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2812
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2813
    .line 2840
    :goto_2
    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState2D()V

    .line 2841
    goto/16 :goto_1

    .line 2817
    .end local v6    # "M0":D
    :pswitch_6
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2818
    .restart local v6    # "M0":D
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2819
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2820
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2822
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v25, v0

    move-wide/from16 v6, v25

    .line 2823
    move-object/from16 v25, v4

    move-wide/from16 v26, v14

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2824
    move-object/from16 v25, v4

    move-wide/from16 v26, v16

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2825
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v20

    move-wide/from16 v30, v6

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2826
    goto/16 :goto_2

    .line 2829
    .end local v6    # "M0":D
    :pswitch_7
    move-object/from16 v25, v4

    move-wide/from16 v26, v10

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2830
    move-object/from16 v25, v4

    move-wide/from16 v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2831
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2833
    move-object/from16 v25, v4

    move-wide/from16 v26, v14

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2834
    move-object/from16 v25, v4

    move-wide/from16 v26, v16

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2835
    move-object/from16 v25, v4

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v20

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2836
    move-object/from16 v25, v4

    move/from16 v26, v24

    const/16 v27, 0x1

    or-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2837
    move-object/from16 v25, v4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2838
    goto/16 :goto_1

    .line 2637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2665
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x10 -> :sswitch_3
        0x11 -> :sswitch_8
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_8
        0x17 -> :sswitch_8
        0x20 -> :sswitch_5
        0x21 -> :sswitch_9
        0x22 -> :sswitch_9
        0x23 -> :sswitch_9
        0x24 -> :sswitch_9
        0x25 -> :sswitch_9
        0x26 -> :sswitch_9
        0x27 -> :sswitch_9
        0x30 -> :sswitch_2
        0x40 -> :sswitch_7
        0x41 -> :sswitch_d
        0x42 -> :sswitch_c
        0x43 -> :sswitch_c
        0x44 -> :sswitch_b
        0x45 -> :sswitch_b
        0x46 -> :sswitch_a
        0x47 -> :sswitch_a
        0x50 -> :sswitch_6
        0x60 -> :sswitch_4
        0x70 -> :sswitch_1
    .end sparse-switch

    .line 2780
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;
    .locals 7

    .prologue
    .line 2276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2277
    const/4 v2, 0x0

    move-object v0, v2

    .line 2279
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_0
    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public deltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 17

    .prologue
    .line 774
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v2

    if-nez v9, :cond_0

    .line 775
    new-instance v9, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v9

    .line 778
    :cond_0
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v3, v9

    .line 779
    .local v3, "x":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v5, v9

    .line 780
    .local v5, "y":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v7, v9

    .line 782
    .local v7, "z":D
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v9, :pswitch_data_0

    .line 784
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 788
    :pswitch_0
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 789
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 790
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 791
    move-object v9, v2

    move-object v0, v9

    .line 809
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v0

    .line 794
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 795
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 796
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 797
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 800
    :pswitch_2
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 801
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 802
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 803
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 806
    :pswitch_3
    move-object v9, v2

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 807
    move-object v9, v2

    move-wide v10, v5

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 808
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 809
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deltaTransform([DI[DII)V
    .locals 14

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v13, 0x6

    and-int/lit8 v12, v12, 0x6

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doTransform([DI[DIII)V

    .line 1225
    return-void
.end method

.method public deltaTransform([FI[FII)V
    .locals 14

    .prologue
    .line 1059
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[F
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v13, 0x6

    and-int/lit8 v12, v12, 0x6

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doTransform([FI[FIII)V

    .line 1061
    return-void
.end method

.method public getDeterminant()D
    .locals 8

    .prologue
    .line 536
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v2, :pswitch_data_0

    .line 538
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 542
    :pswitch_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v2, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    move-wide v1, v2

    .line 551
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-wide v1

    .line 545
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v2, v4

    neg-double v2, v2

    move-wide v1, v2

    goto :goto_0

    .line 548
    :pswitch_2
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v2, v4

    move-wide v1, v2

    goto :goto_0

    .line 551
    :pswitch_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v1, v2

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMxt()D
    .locals 3

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getMxx()D
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getMxy()D
    .locals 3

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getMyt()D
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getMyx()D
    .locals 3

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getMyy()D
    .locals 3

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-wide v0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 275
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState()V

    .line 276
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 277
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/AffineBase;->calculateType()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 280
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return v0
.end method

.method public inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1698
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v3, p1

    .local v3, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v4, p2

    .local v4, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v13, v4

    if-nez v13, :cond_0

    .line 1699
    new-instance v13, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v4, v13

    .line 1702
    :cond_0
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v5, v13

    .line 1703
    .local v5, "x":D
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v7, v13

    .line 1704
    .local v7, "y":D
    move-object v13, v3

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v9, v13

    .line 1706
    .local v9, "z":D
    move-object v13, v2

    iget v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v13, :pswitch_data_0

    .line 1708
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1712
    :pswitch_0
    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v15, v2

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v13, v15

    move-object v15, v2

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    move-wide v11, v13

    .line 1713
    .local v11, "det":D
    move-wide v13, v11

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    move-wide v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_2

    .line 1714
    :cond_1
    new-instance v13, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Determinant is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1717
    :cond_2
    move-object v13, v4

    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-wide/from16 v16, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v11

    div-double v14, v14, v16

    move-wide/from16 v16, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v11

    div-double v16, v16, v18

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1718
    move-object v13, v4

    move-object v2, v13

    .line 1736
    .end local v2    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v11    # "det":D
    :goto_0
    return-object v2

    .line 1721
    .restart local v2    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_3

    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_4

    .line 1722
    :cond_3
    new-instance v13, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Determinant is 0"

    invoke-direct {v14, v15}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1724
    :cond_4
    move-object v13, v4

    move-wide v14, v7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1725
    move-object v13, v4

    move-object v2, v13

    goto :goto_0

    .line 1728
    :pswitch_2
    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_5

    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_6

    .line 1729
    :cond_5
    new-instance v13, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Determinant is 0"

    invoke-direct {v14, v15}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1731
    :cond_6
    move-object v13, v4

    move-wide v14, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide/from16 v16, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1732
    move-object v13, v4

    move-object v2, v13

    goto :goto_0

    .line 1735
    :pswitch_3
    move-object v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1736
    move-object v13, v4

    move-object v2, v13

    goto/16 :goto_0

    .line 1706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public inverseDeltaTransform([FI[FII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1997
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[F
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v13, -0x2

    and-int/lit8 v12, v12, -0x2

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doInverseTransform([FI[FIII)V

    .line 1999
    return-void
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1902
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->is2D()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->is2D()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1903
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inversTransform3DBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .line 1905
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->inversTransform2DBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1542
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "ptSrc":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v5, p2

    .local v5, "ptDst":Lcom/sun/javafx/geom/Point2D;
    move-object v12, v5

    if-nez v12, :cond_0

    .line 1543
    new-instance v12, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v5, v12

    .line 1546
    :cond_0
    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v12, v12

    move-wide v6, v12

    .line 1547
    .local v6, "x":D
    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v12, v12

    move-wide v8, v12

    .line 1549
    .local v8, "y":D
    move-object v12, v3

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v12, :pswitch_data_0

    .line 1551
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1554
    :pswitch_0
    move-wide v12, v6

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 1555
    move-wide v12, v8

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    sub-double/2addr v12, v14

    move-wide v8, v12

    .line 1558
    :pswitch_1
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v10, v12

    .line 1559
    .local v10, "det":D
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    move-wide v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    .line 1560
    :cond_1
    new-instance v12, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Determinant is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1563
    :cond_2
    move-object v12, v5

    move-wide v13, v6

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v13, v15

    move-wide v15, v8

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    move-wide v15, v10

    div-double/2addr v13, v15

    double-to-float v13, v13

    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide/from16 v16, v10

    div-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1565
    move-object v12, v5

    move-object v3, v12

    .line 1591
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v10    # "det":D
    :goto_0
    return-object v3

    .line 1567
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_2
    move-wide v12, v6

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 1568
    move-wide v12, v8

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    sub-double/2addr v12, v14

    move-wide v8, v12

    .line 1571
    :pswitch_3
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_3

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_4

    .line 1572
    :cond_3
    new-instance v12, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const-string v14, "Determinant is 0"

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1574
    :cond_4
    move-object v12, v5

    move-wide v13, v8

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    div-double/2addr v13, v15

    double-to-float v13, v13

    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1575
    move-object v12, v5

    move-object v3, v12

    goto :goto_0

    .line 1577
    :pswitch_4
    move-wide v12, v6

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 1578
    move-wide v12, v8

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    sub-double/2addr v12, v14

    move-wide v8, v12

    .line 1581
    :pswitch_5
    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_5

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_6

    .line 1582
    :cond_5
    new-instance v12, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const-string v14, "Determinant is 0"

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1584
    :cond_6
    move-object v12, v5

    move-wide v13, v6

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    div-double/2addr v13, v15

    double-to-float v13, v13

    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1585
    move-object v12, v5

    move-object v3, v12

    goto/16 :goto_0

    .line 1587
    :pswitch_6
    move-object v12, v5

    move-wide v13, v6

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    sub-double/2addr v13, v15

    double-to-float v13, v13

    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1588
    move-object v12, v5

    move-object v3, v12

    goto/16 :goto_0

    .line 1590
    :pswitch_7
    move-object v12, v5

    move-wide v13, v6

    double-to-float v13, v13

    move-wide v14, v8

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1591
    move-object v12, v5

    move-object v3, v12

    goto/16 :goto_0

    .line 1549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1619
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v4, p1

    .local v4, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v5, p2

    .local v5, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v14, v5

    if-nez v14, :cond_0

    .line 1620
    new-instance v14, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v5, v14

    .line 1623
    :cond_0
    move-object v14, v4

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v6, v14

    .line 1624
    .local v6, "x":D
    move-object v14, v4

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v8, v14

    .line 1625
    .local v8, "y":D
    move-object v14, v4

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v10, v14

    .line 1627
    .local v10, "z":D
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v14, :pswitch_data_0

    .line 1629
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1632
    :pswitch_0
    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 1633
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 1636
    :pswitch_1
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-wide v12, v14

    .line 1637
    .local v12, "det":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1

    move-wide v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_2

    .line 1638
    :cond_1
    new-instance v14, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Determinant is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1641
    :cond_2
    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    move-wide/from16 v17, v12

    div-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v19, v6

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    move-wide/from16 v19, v12

    div-double v17, v17, v19

    move-wide/from16 v19, v10

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1642
    move-object v14, v5

    move-object v3, v14

    .line 1668
    .end local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    .end local v12    # "det":D
    :goto_0
    return-object v3

    .line 1644
    .restart local v3    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_2
    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 1645
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 1648
    :pswitch_3
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_3

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_4

    .line 1649
    :cond_3
    new-instance v14, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1651
    :cond_4
    move-object v14, v5

    move-wide v15, v8

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    move-wide/from16 v17, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v19, v10

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1652
    move-object v14, v5

    move-object v3, v14

    goto :goto_0

    .line 1654
    :pswitch_4
    move-wide v14, v6

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 1655
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 1658
    :pswitch_5
    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_5

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_6

    .line 1659
    :cond_5
    new-instance v14, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1661
    :cond_6
    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v19, v10

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1662
    move-object v14, v5

    move-object v3, v14

    goto/16 :goto_0

    .line 1664
    :pswitch_6
    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    move-wide/from16 v19, v10

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1665
    move-object v14, v5

    move-object v3, v14

    goto/16 :goto_0

    .line 1667
    :pswitch_7
    move-object v14, v5

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-virtual/range {v14 .. v20}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 1668
    move-object v14, v5

    move-object v3, v14

    goto/16 :goto_0

    .line 1627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1912
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v4, :pswitch_data_0

    .line 1914
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1922
    :pswitch_0
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v4

    .line 1924
    .local v3, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/AffineBase;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v4

    .line 1925
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1926
    .line 1934
    .end local v3    # "b":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-void

    .line 1928
    :pswitch_1
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    neg-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    neg-double v8, v8

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/Translate2D;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;DD)V

    .line 1929
    goto :goto_0

    .line 1931
    :pswitch_2
    move-object v4, v2

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 1932
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1934
    :cond_0
    goto :goto_0

    .line 1912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform([DI[DII)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 2154
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v26, v5

    move-object/from16 v27, v3

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    move/from16 v26, v6

    move/from16 v27, v4

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move/from16 v26, v6

    move/from16 v27, v4

    move/from16 v28, v7

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 2165
    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2167
    move/from16 v26, v6

    move/from16 v4, v26

    .line 2170
    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 2172
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2175
    :pswitch_0
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v8, v26

    .local v8, "Mxx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .local v10, "Mxy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .line 2176
    .local v12, "Mxt":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .local v14, "Myx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .local v16, "Myy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 2177
    .local v18, "Myt":D
    move-wide/from16 v26, v8

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 2178
    .local v20, "det":D
    move-wide/from16 v26, v20

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_1

    move-wide/from16 v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_2

    .line 2179
    :cond_1
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Determinant is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-wide/from16 v29, v20

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2182
    :cond_2
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_3

    .line 2183
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v12

    sub-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 2184
    .local v22, "x":D
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    move-wide/from16 v24, v26

    .line 2185
    .local v24, "y":D
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    move-wide/from16 v30, v24

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2186
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v24

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    move-wide/from16 v30, v22

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2187
    goto :goto_0

    .line 2188
    .line 2260
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    .end local v20    # "det":D
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_3
    :goto_1
    return-void

    .line 2190
    :pswitch_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v8, v26

    .restart local v8    # "Mxx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .line 2191
    .restart local v10    # "Mxy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .restart local v14    # "Myx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .line 2192
    .restart local v16    # "Myy":D
    move-wide/from16 v26, v8

    move-wide/from16 v28, v16

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 2193
    .restart local v20    # "det":D
    move-wide/from16 v26, v20

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_4

    move-wide/from16 v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_5

    .line 2194
    :cond_4
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Determinant is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-wide/from16 v29, v20

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2197
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_6

    .line 2198
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 2199
    .restart local v22    # "x":D
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v24, v26

    .line 2200
    .restart local v24    # "y":D
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    move-wide/from16 v30, v24

    move-wide/from16 v32, v10

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2201
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v24

    move-wide/from16 v30, v8

    mul-double v28, v28, v30

    move-wide/from16 v30, v22

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2202
    goto :goto_2

    .line 2203
    .end local v22    # "x":D
    .end local v24    # "y":D
    :cond_6
    goto/16 :goto_1

    .line 2205
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    .end local v20    # "det":D
    :pswitch_2
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .line 2206
    .restart local v12    # "Mxt":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .restart local v14    # "Myx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 2207
    .restart local v18    # "Myt":D
    move-wide/from16 v26, v10

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_7

    move-wide/from16 v26, v14

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_8

    .line 2208
    :cond_7
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const-string v28, "Determinant is 0"

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2210
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_9

    .line 2211
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v12

    sub-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 2212
    .restart local v22    # "x":D
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-wide/from16 v30, v14

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2213
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2214
    goto :goto_3

    .line 2215
    .end local v22    # "x":D
    :cond_9
    goto/16 :goto_1

    .line 2217
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v18    # "Myt":D
    :pswitch_3
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v26, v0

    move-wide/from16 v10, v26

    .restart local v10    # "Mxy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v26, v0

    move-wide/from16 v14, v26

    .line 2218
    .restart local v14    # "Myx":D
    move-wide/from16 v26, v10

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_a

    move-wide/from16 v26, v14

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_b

    .line 2219
    :cond_a
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const-string v28, "Determinant is 0"

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2221
    :cond_b
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_c

    .line 2222
    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v22, v26

    .line 2223
    .restart local v22    # "x":D
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v14

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2224
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v10

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2225
    goto :goto_4

    .line 2226
    .end local v22    # "x":D
    :cond_c
    goto/16 :goto_1

    .line 2228
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    :pswitch_4
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v8, v26

    .restart local v8    # "Mxx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .line 2229
    .restart local v12    # "Mxt":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .restart local v16    # "Myy":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 2230
    .restart local v18    # "Myt":D
    move-wide/from16 v26, v8

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_d

    move-wide/from16 v26, v16

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_e

    .line 2231
    :cond_d
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const-string v28, "Determinant is 0"

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2233
    :cond_e
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_f

    .line 2234
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2235
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_5

    .line 2237
    :cond_f
    goto/16 :goto_1

    .line 2239
    .end local v8    # "Mxx":D
    .end local v12    # "Mxt":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    :pswitch_5
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v26, v0

    move-wide/from16 v8, v26

    .restart local v8    # "Mxx":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v26, v0

    move-wide/from16 v16, v26

    .line 2240
    .restart local v16    # "Myy":D
    move-wide/from16 v26, v8

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_10

    move-wide/from16 v26, v16

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_11

    .line 2241
    :cond_10
    new-instance v26, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const-string v28, "Determinant is 0"

    invoke-direct/range {v27 .. v28}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2243
    :cond_11
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_12

    .line 2244
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v8

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2245
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v16

    div-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_6

    .line 2247
    :cond_12
    goto/16 :goto_1

    .line 2249
    .end local v8    # "Mxx":D
    .end local v16    # "Myy":D
    :pswitch_6
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v26, v0

    move-wide/from16 v12, v26

    .restart local v12    # "Mxt":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v26, v0

    move-wide/from16 v18, v26

    .line 2250
    .restart local v18    # "Myt":D
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v26, v7

    if-ltz v26, :cond_13

    .line 2251
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 2252
    move-object/from16 v26, v5

    move/from16 v27, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    aput-wide v28, v26, v27

    goto :goto_7

    .line 2254
    :cond_13
    goto/16 :goto_1

    .line 2256
    .end local v12    # "Mxt":D
    .end local v18    # "Myt":D
    :pswitch_7
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_14

    move/from16 v26, v4

    move/from16 v27, v6

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_15

    .line 2257
    :cond_14
    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    const/16 v31, 0x2

    mul-int/lit8 v30, v30, 0x2

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2260
    :cond_15
    goto/16 :goto_1

    .line 2170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform([FI[FII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1966
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[F
    move v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doInverseTransform([FI[FIII)V

    .line 1967
    return-void
.end method

.method public invert()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 2890
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 2892
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2895
    :pswitch_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v18, v0

    move-wide/from16 v4, v18

    .local v4, "Mxx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .local v6, "Mxy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 2896
    .local v8, "Mxt":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .local v10, "Myx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .local v12, "Myy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 2897
    .local v14, "Myt":D
    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 2898
    .local v16, "det":D
    move-wide/from16 v18, v16

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_0

    move-wide/from16 v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/16 v20, 0x1

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_1

    .line 2899
    :cond_0
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Determinant is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2902
    :cond_1
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2903
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2904
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2905
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2906
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v21, v14

    mul-double v19, v19, v21

    move-wide/from16 v21, v12

    move-wide/from16 v23, v8

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2907
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v21, v8

    mul-double v19, v19, v21

    move-wide/from16 v21, v4

    move-wide/from16 v23, v14

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2908
    .line 2993
    .end local v4    # "Mxx":D
    .end local v6    # "Mxy":D
    .end local v8    # "Mxt":D
    .end local v10    # "Myx":D
    .end local v12    # "Myy":D
    .end local v14    # "Myt":D
    .end local v16    # "det":D
    :goto_0
    :pswitch_1
    return-void

    .line 2910
    :pswitch_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v18, v0

    move-wide/from16 v4, v18

    .restart local v4    # "Mxx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 2911
    .restart local v6    # "Mxy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .restart local v10    # "Myx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 2912
    .restart local v12    # "Myy":D
    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 2913
    .restart local v16    # "det":D
    move-wide/from16 v18, v16

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_2

    move-wide/from16 v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/16 v20, 0x1

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_3

    .line 2914
    :cond_2
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Determinant is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2917
    :cond_3
    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2918
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2919
    move-object/from16 v18, v3

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2920
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v16

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2923
    goto/16 :goto_0

    .line 2925
    .end local v4    # "Mxx":D
    .end local v6    # "Mxy":D
    .end local v10    # "Myx":D
    .end local v12    # "Myy":D
    .end local v16    # "det":D
    :pswitch_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .restart local v6    # "Mxy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 2926
    .restart local v8    # "Mxt":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .restart local v10    # "Myx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 2927
    .restart local v14    # "Myt":D
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_4

    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_5

    .line 2928
    :cond_4
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const-string v20, "Determinant is 0"

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2931
    :cond_5
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v6

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2932
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v10

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2934
    move-object/from16 v18, v3

    move-wide/from16 v19, v14

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v10

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2935
    move-object/from16 v18, v3

    move-wide/from16 v19, v8

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v6

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2936
    goto/16 :goto_0

    .line 2938
    .end local v6    # "Mxy":D
    .end local v8    # "Mxt":D
    .end local v10    # "Myx":D
    .end local v14    # "Myt":D
    :pswitch_4
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 2939
    .restart local v6    # "Mxy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 2940
    .restart local v10    # "Myx":D
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_6

    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_7

    .line 2941
    :cond_6
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const-string v20, "Determinant is 0"

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2944
    :cond_7
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v6

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2945
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v10

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2949
    goto/16 :goto_0

    .line 2951
    .end local v6    # "Mxy":D
    .end local v10    # "Myx":D
    :pswitch_5
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v18, v0

    move-wide/from16 v4, v18

    .restart local v4    # "Mxx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 2952
    .restart local v8    # "Mxt":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .restart local v12    # "Myy":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 2953
    .restart local v14    # "Myt":D
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_8

    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_9

    .line 2954
    :cond_8
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const-string v20, "Determinant is 0"

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2956
    :cond_9
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v4

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2959
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v12

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2960
    move-object/from16 v18, v3

    move-wide/from16 v19, v8

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v4

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2961
    move-object/from16 v18, v3

    move-wide/from16 v19, v14

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v12

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2962
    goto/16 :goto_0

    .line 2964
    .end local v4    # "Mxx":D
    .end local v8    # "Mxt":D
    .end local v12    # "Myy":D
    .end local v14    # "Myt":D
    :pswitch_6
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v18, v0

    move-wide/from16 v4, v18

    .line 2965
    .restart local v4    # "Mxx":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 2966
    .restart local v12    # "Myy":D
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_a

    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_b

    .line 2967
    :cond_a
    new-instance v18, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const-string v20, "Determinant is 0"

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2969
    :cond_b
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v4

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2972
    move-object/from16 v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v12

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2975
    goto/16 :goto_0

    .line 2981
    .end local v4    # "Mxx":D
    .end local v12    # "Myy":D
    :pswitch_7
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2982
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2983
    goto/16 :goto_0

    .line 2890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public is2D()Z
    .locals 3

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->getType()I

    move-result v1

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->getType()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTranslateOrIdentity()Z
    .locals 3

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract reset3Delements()V
.end method

.method public rotate(D)V
    .locals 19

    .prologue
    .line 2459
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide/from16 v2, p1

    .local v2, "theta":D
    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-wide v4, v12

    .line 2460
    .local v4, "sin":D
    move-wide v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_1

    .line 2461
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate90()V

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2462
    :cond_1
    move-wide v12, v4

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    .line 2463
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate270()V

    goto :goto_0

    .line 2465
    :cond_2
    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-wide v6, v12

    .line 2466
    .local v6, "cos":D
    move-wide v12, v6

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    .line 2467
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/AffineBase;->rotate180()V

    goto :goto_0

    .line 2468
    :cond_3
    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    .line 2470
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v8, v12

    .line 2471
    .local v8, "M0":D
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide v10, v12

    .line 2472
    .local v10, "M1":D
    move-object v12, v1

    move-wide v13, v6

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2473
    move-object v12, v1

    move-wide v13, v4

    neg-double v13, v13

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v6

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2474
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v8, v12

    .line 2475
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v10, v12

    .line 2476
    move-object v12, v1

    move-wide v13, v6

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v4

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2477
    move-object v12, v1

    move-wide v13, v4

    neg-double v13, v13

    move-wide v15, v8

    mul-double/2addr v13, v15

    move-wide v15, v6

    move-wide/from16 v17, v10

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2478
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState2D()V

    goto :goto_0
.end method

.method protected final rotate180()V
    .locals 7

    .prologue
    .line 2405
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    neg-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2406
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    neg-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2407
    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move v2, v3

    .line 2408
    .local v2, "oldstate":I
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 2411
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    neg-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2412
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    neg-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2422
    :goto_0
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2423
    return-void

    .line 2416
    :cond_0
    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 2417
    move-object v3, v1

    move v4, v2

    const/4 v5, -0x3

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_0

    .line 2419
    :cond_1
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_0
.end method

.method protected final rotate270()V
    .locals 9

    .prologue
    .line 2425
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v2, v5

    .line 2426
    .local v2, "M0":D
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2427
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2428
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v2, v5

    .line 2429
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2430
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2431
    sget-object v5, Lcom/sun/javafx/geom/transform/AffineBase;->rot90conversion:[I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    aget v5, v5, v6

    move v4, v5

    .line 2432
    .local v4, "newstate":I
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 2435
    add-int/lit8 v4, v4, -0x2

    .line 2437
    :cond_0
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2438
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2439
    return-void
.end method

.method protected final rotate90()V
    .locals 9

    .prologue
    .line 2389
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v2, v5

    .line 2390
    .local v2, "M0":D
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2391
    move-object v5, v1

    move-wide v6, v2

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2392
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v2, v5

    .line 2393
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2394
    move-object v5, v1

    move-wide v6, v2

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2395
    sget-object v5, Lcom/sun/javafx/geom/transform/AffineBase;->rot90conversion:[I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    aget v5, v5, v6

    move v4, v5

    .line 2396
    .local v4, "newstate":I
    move v5, v4

    const/4 v6, 0x6

    and-int/lit8 v5, v5, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 2399
    add-int/lit8 v4, v4, -0x2

    .line 2401
    :cond_0
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2402
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2403
    return-void
.end method

.method public scale(DD)V
    .locals 13

    .prologue
    .line 2498
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide v2, p1

    .local v2, "sx":D
    move-wide/from16 v4, p3

    .local v4, "sy":D
    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move v6, v7

    .line 2500
    .local v6, "mystate":I
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 2502
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2506
    :pswitch_0
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2507
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2511
    :pswitch_1
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2512
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2513
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    .line 2514
    move v7, v6

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 2515
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 2516
    move-object v7, v1

    move v8, v6

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2523
    :goto_1
    move-object v7, v1

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2525
    .line 2547
    :cond_0
    :goto_2
    return-void

    .line 2516
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 2520
    :cond_2
    move v7, v6

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 2521
    move-object v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_1

    .line 2528
    :pswitch_2
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v10, v2

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2529
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v10, v4

    mul-double/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2530
    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 2531
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v12, v8

    move v8, v12

    move v9, v12

    move v6, v9

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2532
    move-object v7, v1

    move v8, v6

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_3
    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2538
    :goto_4
    goto :goto_2

    .line 2532
    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    .line 2536
    :cond_4
    move-object v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_4

    .line 2541
    :pswitch_3
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2542
    move-object v7, v1

    move-wide v8, v4

    iput-wide v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2543
    move-wide v7, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    move-wide v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_6

    .line 2544
    :cond_5
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2545
    move-object v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2547
    :cond_6
    goto :goto_2

    .line 2500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setToIdentity()V
    .locals 12

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v9, v2

    move-wide v10, v3

    move-wide v2, v10

    move-object v4, v9

    move-wide v5, v10

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 568
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const-wide/16 v5, 0x0

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-object v9, v3

    move-wide v10, v4

    move-wide v3, v10

    move-object v5, v9

    move-wide v6, v10

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-object v9, v2

    move-wide v10, v3

    move-wide v2, v10

    move-object v4, v9

    move-wide v5, v10

    iput-wide v5, v4, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    iput-wide v2, v1, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 569
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->reset3Delements()V

    .line 570
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 571
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 572
    return-void
.end method

.method public setToShear(DD)V
    .locals 11

    .prologue
    .line 612
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide v2, p1

    .local v2, "shx":D
    move-wide v4, p3

    .local v4, "shy":D
    move-object v6, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 613
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 614
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 615
    move-object v6, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 616
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 617
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 618
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/AffineBase;->reset3Delements()V

    .line 619
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 620
    :cond_0
    move-object v6, v1

    const/4 v7, 0x6

    iput v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 621
    move-object v6, v1

    const/4 v7, -0x1

    iput v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 626
    :goto_0
    return-void

    .line 623
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 624
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_0
.end method

.method public setTransform(DDDDDD)V
    .locals 17

    .prologue
    .line 588
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-object v13, v0

    move-wide v14, v1

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 589
    move-object v13, v0

    move-wide v14, v3

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 590
    move-object v13, v0

    move-wide v14, v5

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 591
    move-object v13, v0

    move-wide v14, v7

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 592
    move-object v13, v0

    move-wide v14, v9

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 593
    move-object v13, v0

    move-wide v14, v11

    iput-wide v14, v13, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 594
    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/javafx/geom/transform/AffineBase;->reset3Delements()V

    .line 595
    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState2D()V

    .line 596
    return-void
.end method

.method public shear(DD)V
    .locals 19

    .prologue
    .line 2566
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide/from16 v2, p1

    .local v2, "shx":D
    move-wide/from16 v4, p3

    .local v4, "shy":D
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move v6, v11

    .line 2568
    .local v6, "mystate":I
    move v11, v6

    packed-switch v11, :pswitch_data_0

    .line 2570
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2575
    :pswitch_0
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v7, v11

    .line 2576
    .local v7, "M0":D
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide v9, v11

    .line 2577
    .local v9, "M1":D
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v9

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2578
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2580
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v7, v11

    .line 2581
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v9, v11

    .line 2582
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v9

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2583
    move-object v11, v1

    move-wide v12, v7

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-wide v14, v9

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2584
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState2D()V

    .line 2585
    .line 2612
    .end local v7    # "M0":D
    .end local v9    # "M1":D
    :goto_0
    return-void

    .line 2588
    :pswitch_1
    move-object v11, v1

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    .line 2589
    move-object v11, v1

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide v14, v2

    mul-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    .line 2590
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_1

    .line 2591
    :cond_0
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2593
    :cond_1
    move-object v11, v1

    const/4 v12, -0x1

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2594
    goto :goto_0

    .line 2597
    :pswitch_2
    move-object v11, v1

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide v14, v2

    mul-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2598
    move-object v11, v1

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide v14, v4

    mul-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2599
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_2

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_3

    .line 2600
    :cond_2
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x4

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2602
    :cond_3
    move-object v11, v1

    const/4 v12, -0x1

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2603
    goto :goto_0

    .line 2606
    :pswitch_3
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    .line 2607
    move-object v11, v1

    move-wide v12, v4

    iput-wide v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    .line 2608
    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_5

    .line 2609
    :cond_4
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    or-int/lit8 v12, v12, 0x2

    const/4 v13, 0x4

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2610
    move-object v11, v1

    const/4 v12, -0x1

    iput v12, v11, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2612
    :cond_5
    goto/16 :goto_0

    .line 2568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->is2D()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->is2D()Z

    move-result v3

    if-nez v3, :cond_1

    .line 964
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->transform3DBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .line 966
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/transform/AffineBase;->transform2DBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 5

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/AffineBase;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;
    .locals 17

    .prologue
    .line 650
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v2, p1

    .local v2, "ptSrc":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v3, p2

    .local v3, "ptDst":Lcom/sun/javafx/geom/Point2D;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 651
    new-instance v8, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object v3, v8

    .line 654
    :cond_0
    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    move-wide v4, v8

    .line 655
    .local v4, "x":D
    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v8, v8

    move-wide v6, v8

    .line 661
    .local v6, "y":D
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v9, 0x7

    and-int/lit8 v8, v8, 0x7

    packed-switch v8, :pswitch_data_0

    .line 663
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 666
    :pswitch_0
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v9, v11

    move-wide v11, v6

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v6

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 668
    move-object v8, v3

    move-object v1, v8

    .line 691
    .end local v1    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v1

    .line 670
    .restart local v1    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v9, v11

    move-wide v11, v6

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v6

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 672
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 674
    :pswitch_2
    move-object v8, v3

    move-wide v9, v6

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v9, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 676
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 678
    :pswitch_3
    move-object v8, v3

    move-wide v9, v6

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 679
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 681
    :pswitch_4
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v9, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v6

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 682
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 684
    :pswitch_5
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v6

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 685
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 687
    :pswitch_6
    move-object v8, v3

    move-wide v9, v4

    move-object v11, v1

    iget-wide v11, v11, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-wide v10, v6

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 688
    move-object v8, v3

    move-object v1, v8

    goto/16 :goto_0

    .line 690
    :pswitch_7
    move-object v8, v3

    move-wide v9, v4

    double-to-float v9, v9

    move-wide v10, v6

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 691
    move-object v8, v3

    move-object v1, v8

    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 17

    .prologue
    .line 698
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v2

    if-nez v9, :cond_0

    .line 699
    new-instance v9, Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v2, v9

    .line 702
    :cond_0
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide v3, v9

    .line 703
    .local v3, "x":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide v5, v9

    .line 704
    .local v5, "y":D
    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide v7, v9

    .line 706
    .local v7, "z":D
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v9, :pswitch_data_0

    .line 708
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 711
    :pswitch_0
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 712
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 713
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 714
    move-object v9, v2

    move-object v0, v9

    .line 749
    .end local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :goto_0
    return-object v0

    .line 716
    .restart local v0    # "this":Lcom/sun/javafx/geom/transform/AffineBase;
    :pswitch_1
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 717
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-wide v12, v5

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 718
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 719
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 721
    :pswitch_2
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 722
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 723
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 724
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 726
    :pswitch_3
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 727
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 728
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 729
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 731
    :pswitch_4
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 732
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 733
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 734
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 736
    :pswitch_5
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 737
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 738
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 739
    move-object v9, v2

    move-object v0, v9

    goto/16 :goto_0

    .line 741
    :pswitch_6
    move-object v9, v2

    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 742
    move-object v9, v2

    move-wide v10, v5

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 743
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 744
    move-object v9, v2

    move-object v0, v9

    goto/16 :goto_0

    .line 746
    :pswitch_7
    move-object v9, v2

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->x:D

    .line 747
    move-object v9, v2

    move-wide v10, v5

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->y:D

    .line 748
    move-object v9, v2

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec3d;->z:D

    .line 749
    move-object v9, v2

    move-object v0, v9

    goto/16 :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 11

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "dst":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 973
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 981
    :pswitch_0
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v4

    .line 983
    .local v3, "b":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/AffineBase;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v4

    .line 984
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 985
    .line 993
    .end local v3    # "b":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-void

    .line 987
    :pswitch_1
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/Translate2D;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;DD)V

    .line 988
    goto :goto_0

    .line 990
    :pswitch_2
    move-object v4, v2

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 991
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 993
    :cond_0
    goto :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transform([DI[DII)V
    .locals 14

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[D
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[D
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v13, 0x7

    and-int/lit8 v12, v12, 0x7

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doTransform([DI[DIII)V

    .line 1187
    return-void
.end method

.method public transform([DI[FII)V
    .locals 32

    .prologue
    .line 1447
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v3, p1

    .local v3, "srcPts":[D
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[F
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v24, v0

    const/16 v25, 0x7

    and-int/lit8 v24, v24, 0x7

    packed-switch v24, :pswitch_data_0

    .line 1449
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1452
    :pswitch_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .local v8, "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .local v10, "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1453
    .local v12, "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .local v14, "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .local v16, "Myy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1454
    .local v18, "Myt":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_0

    .line 1455
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 1456
    .local v20, "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 1457
    .local v22, "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1458
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1459
    goto :goto_0

    .line 1460
    .line 1515
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 1462
    :pswitch_1
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .line 1463
    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .restart local v14    # "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 1464
    .restart local v16    # "Myy":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_1

    .line 1465
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 1466
    .restart local v20    # "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v22, v24

    .line 1467
    .restart local v22    # "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1468
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1469
    goto :goto_2

    .line 1470
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_1
    goto :goto_1

    .line 1472
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    :pswitch_2
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1473
    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .restart local v14    # "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1474
    .restart local v18    # "Myt":D
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_2

    .line 1475
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 1476
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1477
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1478
    goto :goto_3

    .line 1479
    .end local v20    # "x":D
    :cond_2
    goto/16 :goto_1

    .line 1481
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v18    # "Myt":D
    :pswitch_3
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .line 1482
    .restart local v14    # "Myx":D
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_3

    .line 1483
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v24, v24, v25

    move-wide/from16 v20, v24

    .line 1484
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1485
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1486
    goto :goto_4

    .line 1487
    .end local v20    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 1489
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    :pswitch_4
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1490
    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .restart local v16    # "Myy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1491
    .restart local v18    # "Myt":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_4

    .line 1492
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1493
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    goto :goto_5

    .line 1495
    :cond_4
    goto/16 :goto_1

    .line 1497
    .end local v8    # "Mxx":D
    .end local v12    # "Mxt":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    :pswitch_5
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 1498
    .restart local v16    # "Myy":D
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_5

    .line 1499
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1500
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v28, v28, v29

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    goto :goto_6

    .line 1502
    :cond_5
    goto/16 :goto_1

    .line 1504
    .end local v8    # "Mxx":D
    .end local v16    # "Myy":D
    :pswitch_6
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1505
    .restart local v18    # "Myt":D
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_6

    .line 1506
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1507
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    goto :goto_7

    .line 1509
    :cond_6
    goto/16 :goto_1

    .line 1511
    .end local v12    # "Mxt":D
    .end local v18    # "Myt":D
    :goto_8
    :pswitch_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_7

    .line 1512
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 1513
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v26, v26, v27

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    goto :goto_8

    .line 1515
    :cond_7
    goto/16 :goto_1

    .line 1447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[DII)V
    .locals 32

    .prologue
    .line 1349
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object/from16 v3, p1

    .local v3, "srcPts":[F
    move/from16 v4, p2

    .local v4, "srcOff":I
    move-object/from16 v5, p3

    .local v5, "dstPts":[D
    move/from16 v6, p4

    .local v6, "dstOff":I
    move/from16 v7, p5

    .local v7, "numPts":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    move/from16 v24, v0

    const/16 v25, 0x7

    and-int/lit8 v24, v24, 0x7

    packed-switch v24, :pswitch_data_0

    .line 1351
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 1354
    :pswitch_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .local v8, "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .local v10, "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1355
    .local v12, "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .local v14, "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .local v16, "Myy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1356
    .local v18, "Myt":D
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_0

    .line 1357
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .line 1358
    .local v20, "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v22, v24

    .line 1359
    .local v22, "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1360
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1361
    goto :goto_0

    .line 1362
    .line 1417
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_0
    :goto_1
    return-void

    .line 1364
    :pswitch_1
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .line 1365
    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .restart local v14    # "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 1366
    .restart local v16    # "Myy":D
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_1

    .line 1367
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .line 1368
    .restart local v20    # "x":D
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v22, v24

    .line 1369
    .restart local v22    # "y":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1370
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v22

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1371
    goto :goto_2

    .line 1372
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_1
    goto :goto_1

    .line 1374
    .end local v8    # "Mxx":D
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    .end local v16    # "Myy":D
    :pswitch_2
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1375
    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .restart local v14    # "Myx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1376
    .restart local v18    # "Myt":D
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_2

    .line 1377
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .line 1378
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1379
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1380
    goto :goto_3

    .line 1381
    .end local v20    # "x":D
    :cond_2
    goto/16 :goto_1

    .line 1383
    .end local v10    # "Mxy":D
    .end local v12    # "Mxt":D
    .end local v14    # "Myx":D
    .end local v18    # "Myt":D
    :pswitch_3
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    move-wide/from16 v24, v0

    move-wide/from16 v10, v24

    .restart local v10    # "Mxy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    move-wide/from16 v24, v0

    move-wide/from16 v14, v24

    .line 1384
    .restart local v14    # "Myx":D
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_3

    .line 1385
    move-object/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v4, v4, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .line 1386
    .restart local v20    # "x":D
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v10

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1387
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v14

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1388
    goto :goto_4

    .line 1389
    .end local v20    # "x":D
    :cond_3
    goto/16 :goto_1

    .line 1391
    .end local v10    # "Mxy":D
    .end local v14    # "Myx":D
    :pswitch_4
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .line 1392
    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .restart local v16    # "Myy":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1393
    .restart local v18    # "Myt":D
    :goto_5
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_4

    .line 1394
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1395
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_5

    .line 1397
    :cond_4
    goto/16 :goto_1

    .line 1399
    .end local v8    # "Mxx":D
    .end local v12    # "Mxt":D
    .end local v16    # "Myy":D
    .end local v18    # "Myt":D
    :pswitch_5
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    move-wide/from16 v24, v0

    move-wide/from16 v8, v24

    .restart local v8    # "Mxx":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    move-wide/from16 v24, v0

    move-wide/from16 v16, v24

    .line 1400
    .restart local v16    # "Myy":D
    :goto_6
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_5

    .line 1401
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v8

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1402
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v26, v16

    move-object/from16 v28, v3

    move/from16 v29, v4

    add-int/lit8 v4, v4, 0x1

    aget v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_6

    .line 1404
    :cond_5
    goto/16 :goto_1

    .line 1406
    .end local v8    # "Mxx":D
    .end local v16    # "Myy":D
    :pswitch_6
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    move-wide/from16 v24, v0

    move-wide/from16 v12, v24

    .restart local v12    # "Mxt":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    move-wide/from16 v24, v0

    move-wide/from16 v18, v24

    .line 1407
    .restart local v18    # "Myt":D
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_6

    .line 1408
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 1409
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    goto :goto_7

    .line 1411
    :cond_6
    goto/16 :goto_1

    .line 1413
    .end local v12    # "Mxt":D
    .end local v18    # "Myt":D
    :goto_8
    :pswitch_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v24, v7

    if-ltz v24, :cond_7

    .line 1414
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    .line 1415
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v4

    add-int/lit8 v4, v4, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    goto :goto_8

    .line 1417
    :cond_7
    goto/16 :goto_1

    .line 1349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[FII)V
    .locals 14

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, p1

    .local v1, "srcPts":[F
    move/from16 v2, p2

    .local v2, "srcOff":I
    move-object/from16 v3, p3

    .local v3, "dstPts":[F
    move/from16 v4, p4

    .local v4, "dstOff":I
    move/from16 v5, p5

    .local v5, "numPts":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    const/4 v13, 0x7

    and-int/lit8 v12, v12, 0x7

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/transform/AffineBase;->doTransform([FI[FIII)V

    .line 1023
    return-void
.end method

.method public translate(DD)V
    .locals 13

    .prologue
    .line 2298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-wide v1, p1

    .local v1, "tx":D
    move-wide/from16 v3, p3

    .local v3, "ty":D
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    packed-switch v5, :pswitch_data_0

    .line 2300
    invoke-static {}, Lcom/sun/javafx/geom/transform/AffineBase;->stateError()V

    .line 2303
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2304
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2305
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 2306
    move-object v5, v0

    const/4 v6, 0x6

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2307
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 2308
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2311
    .line 2371
    :cond_0
    :goto_0
    return-void

    .line 2313
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2314
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2315
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 2316
    :cond_1
    move-object v5, v0

    const/4 v6, 0x7

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2317
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2319
    :cond_2
    goto :goto_0

    .line 2321
    :pswitch_2
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2322
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2323
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    .line 2324
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2325
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 2326
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2329
    :cond_3
    goto :goto_0

    .line 2331
    :pswitch_3
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2332
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2333
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_4

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_5

    .line 2334
    :cond_4
    move-object v5, v0

    const/4 v6, 0x5

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2335
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2337
    :cond_5
    goto/16 :goto_0

    .line 2339
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2340
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2341
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_6

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_6

    .line 2342
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2343
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 2344
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2347
    :cond_6
    goto/16 :goto_0

    .line 2349
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2350
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    mul-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2351
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_7

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_8

    .line 2352
    :cond_7
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2353
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2355
    :cond_8
    goto/16 :goto_0

    .line 2357
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2358
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2359
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_9

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_9

    .line 2360
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2361
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2363
    :cond_9
    goto/16 :goto_0

    .line 2365
    :pswitch_7
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    .line 2366
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    .line 2367
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_a

    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_b

    .line 2368
    :cond_a
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 2369
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 2371
    :cond_b
    goto/16 :goto_0

    .line 2298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState()V
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/transform/AffineBase;->updateState2D()V

    .line 231
    return-void
.end method

.method protected updateState2D()V
    .locals 6

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/transform/AffineBase;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxy:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myx:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 239
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 240
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 241
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 242
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    .line 271
    :goto_0
    return-void

    .line 244
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 245
    move-object v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_0

    .line 248
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 249
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 253
    :goto_1
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_0

    .line 251
    :cond_2
    move-object v2, v1

    const/4 v3, 0x3

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_1

    .line 256
    :cond_3
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxx:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myy:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    .line 257
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 258
    move-object v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    .line 269
    :goto_2
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->type:I

    goto :goto_0

    .line 260
    :cond_4
    move-object v2, v1

    const/4 v3, 0x5

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_2

    .line 263
    :cond_5
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->mxt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/transform/AffineBase;->myt:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 264
    move-object v2, v1

    const/4 v3, 0x6

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_2

    .line 266
    :cond_6
    move-object v2, v1

    const/4 v3, 0x7

    iput v3, v2, Lcom/sun/javafx/geom/transform/AffineBase;->state:I

    goto :goto_2
.end method
