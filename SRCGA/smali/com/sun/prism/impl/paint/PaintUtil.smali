.class public Lcom/sun/prism/impl/paint/PaintUtil;
.super Ljava/lang/Object;
.source "PaintUtil.java"


# static fields
.field private static final gradXform:Lcom/sun/javafx/geom/transform/Affine2D;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/PaintUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillImageWithGradient([ILcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;IIIIFFFF)V
    .locals 41

    .prologue
    .line 48
    move-object/from16 v2, p0

    .local v2, "pixels":[I
    move-object/from16 v3, p1

    .local v3, "grad":Lcom/sun/prism/paint/Gradient;
    move-object/from16 v4, p2

    .local v4, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p3

    .local v5, "px":I
    move/from16 v6, p4

    .local v6, "py":I
    move/from16 v7, p5

    .local v7, "pw":I
    move/from16 v8, p6

    .local v8, "ph":I
    move/from16 v9, p7

    .local v9, "bx":F
    move/from16 v10, p8

    .local v10, "by":F
    move/from16 v11, p9

    .local v11, "bw":F
    move/from16 v12, p10

    .local v12, "bh":F
    move-object/from16 v28, v3

    move-object/from16 v13, v28

    .line 49
    .local v13, "mgrad":Lcom/sun/prism/paint/Gradient;
    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Gradient;->getNumStops()I

    move-result v28

    move/from16 v14, v28

    .line 50
    .local v14, "numStops":I
    move/from16 v28, v14

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v15, v28

    .line 51
    .local v15, "fractions":[F
    move/from16 v28, v14

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sun/prism/paint/Color;

    move-object/from16 v28, v0

    move-object/from16 v16, v28

    .line 52
    .local v16, "colors":[Lcom/sun/prism/paint/Color;
    const/16 v28, 0x0

    move/from16 v17, v28

    .local v17, "i":I
    :goto_0
    move/from16 v28, v17

    move/from16 v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 53
    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Gradient;->getStops()Ljava/util/List;

    move-result-object v28

    move/from16 v29, v17

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sun/prism/paint/Stop;

    move-object/from16 v18, v28

    .line 54
    .local v18, "stop":Lcom/sun/prism/paint/Stop;
    move-object/from16 v28, v15

    move/from16 v29, v17

    move-object/from16 v30, v18

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/paint/Stop;->getOffset()F

    move-result v30

    aput v30, v28, v29

    .line 55
    move-object/from16 v28, v16

    move/from16 v29, v17

    move-object/from16 v30, v18

    invoke-virtual/range {v30 .. v30}, Lcom/sun/prism/paint/Stop;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v30

    aput-object v30, v28, v29

    .line 52
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 59
    .end local v18    # "stop":Lcom/sun/prism/paint/Stop;
    :cond_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/Gradient;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v28

    sget-object v29, Lcom/sun/prism/paint/Paint$Type;->LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 60
    move-object/from16 v28, v3

    check-cast v28, Lcom/sun/prism/paint/LinearGradient;

    move-object/from16 v18, v28

    .line 62
    .local v18, "lgrad":Lcom/sun/prism/paint/LinearGradient;
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->isProportional()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 63
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getX1()F

    move-result v28

    move/from16 v29, v11

    mul-float v28, v28, v29

    move/from16 v29, v9

    add-float v28, v28, v29

    move/from16 v19, v28

    .line 64
    .local v19, "x1":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getY1()F

    move-result v28

    move/from16 v29, v12

    mul-float v28, v28, v29

    move/from16 v29, v10

    add-float v28, v28, v29

    move/from16 v20, v28

    .line 65
    .local v20, "y1":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getX2()F

    move-result v28

    move/from16 v29, v11

    mul-float v28, v28, v29

    move/from16 v29, v9

    add-float v28, v28, v29

    move/from16 v21, v28

    .line 66
    .local v21, "x2":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getY2()F

    move-result v28

    move/from16 v29, v12

    mul-float v28, v28, v29

    move/from16 v29, v10

    add-float v28, v28, v29

    move/from16 v22, v28

    .line 73
    .local v22, "y2":F
    :goto_1
    move/from16 v28, v19

    move/from16 v29, v21

    cmpl-float v28, v28, v29

    if-nez v28, :cond_1

    move/from16 v28, v20

    move/from16 v29, v22

    cmpl-float v28, v28, v29

    if-nez v28, :cond_1

    .line 75
    move/from16 v28, v19

    const v29, 0x358637bd    # 1.0E-6f

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 76
    move/from16 v28, v21

    const v29, 0x358637bd    # 1.0E-6f

    add-float v28, v28, v29

    move/from16 v21, v28

    .line 78
    :cond_1
    new-instance v28, Lcom/sun/prism/impl/paint/LinearGradientContext;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v18

    move-object/from16 v31, v4

    move/from16 v32, v19

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v22

    move-object/from16 v36, v15

    move-object/from16 v37, v16

    move-object/from16 v38, v18

    .line 81
    invoke-virtual/range {v38 .. v38}, Lcom/sun/prism/paint/LinearGradient;->getSpreadMethod()I

    move-result v38

    invoke-direct/range {v29 .. v38}, Lcom/sun/prism/impl/paint/LinearGradientContext;-><init>(Lcom/sun/prism/paint/LinearGradient;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF[F[Lcom/sun/prism/paint/Color;I)V

    move-object/from16 v17, v28

    .line 115
    .end local v18    # "lgrad":Lcom/sun/prism/paint/LinearGradient;
    .end local v19    # "x1":F
    .end local v20    # "y1":F
    .end local v21    # "x2":F
    .end local v22    # "y2":F
    .local v17, "context":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    :goto_2
    move-object/from16 v28, v17

    move-object/from16 v29, v2

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v8

    invoke-virtual/range {v28 .. v35}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fillRaster([IIIIIII)V

    .line 116
    return-void

    .line 68
    .local v17, "i":I
    .restart local v18    # "lgrad":Lcom/sun/prism/paint/LinearGradient;
    :cond_2
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getX1()F

    move-result v28

    move/from16 v19, v28

    .line 69
    .restart local v19    # "x1":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getY1()F

    move-result v28

    move/from16 v20, v28

    .line 70
    .restart local v20    # "y1":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getX2()F

    move-result v28

    move/from16 v21, v28

    .line 71
    .restart local v21    # "x2":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/LinearGradient;->getY2()F

    move-result v28

    move/from16 v22, v28

    .restart local v22    # "y2":F
    goto :goto_1

    .line 83
    .end local v18    # "lgrad":Lcom/sun/prism/paint/LinearGradient;
    .end local v19    # "x1":F
    .end local v20    # "y1":F
    .end local v21    # "x2":F
    .end local v22    # "y2":F
    :cond_3
    move-object/from16 v28, v3

    check-cast v28, Lcom/sun/prism/paint/RadialGradient;

    move-object/from16 v18, v28

    .line 84
    .local v18, "rgrad":Lcom/sun/prism/paint/RadialGradient;
    sget-object v28, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 85
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->getRadius()F

    move-result v28

    move/from16 v19, v28

    .line 86
    .local v19, "radius":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->getCenterX()F

    move-result v28

    move/from16 v20, v28

    .line 87
    .local v20, "cx":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->getCenterY()F

    move-result v28

    move/from16 v21, v28

    .line 88
    .local v21, "cy":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->getFocusAngle()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 89
    .local v22, "fa":D
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->getFocusDistance()F

    move-result v28

    move/from16 v24, v28

    .line 90
    .local v24, "fd":F
    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/paint/RadialGradient;->isProportional()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 91
    move/from16 v28, v9

    move/from16 v29, v11

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v25, v28

    .line 92
    .local v25, "bcx":F
    move/from16 v28, v10

    move/from16 v29, v12

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v26, v28

    .line 93
    .local v26, "bcy":F
    move/from16 v28, v11

    move/from16 v29, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v28

    move/from16 v27, v28

    .line 94
    .local v27, "scale":F
    move/from16 v28, v20

    const/high16 v29, 0x3f000000    # 0.5f

    sub-float v28, v28, v29

    move/from16 v29, v27

    mul-float v28, v28, v29

    move/from16 v29, v25

    add-float v28, v28, v29

    move/from16 v20, v28

    .line 95
    move/from16 v28, v21

    const/high16 v29, 0x3f000000    # 0.5f

    sub-float v28, v28, v29

    move/from16 v29, v27

    mul-float v28, v28, v29

    move/from16 v29, v26

    add-float v28, v28, v29

    move/from16 v21, v28

    .line 96
    move/from16 v28, v11

    move/from16 v29, v12

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_4

    move/from16 v28, v11

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_4

    move/from16 v28, v12

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_4

    .line 97
    sget-object v28, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v29, v25

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    move/from16 v31, v26

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 98
    sget-object v28, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v29, v11

    move/from16 v30, v27

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    move/from16 v31, v12

    move/from16 v32, v27

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 99
    sget-object v28, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v29, v25

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    move/from16 v31, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v28 .. v32}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 101
    :cond_4
    move/from16 v28, v19

    move/from16 v29, v27

    mul-float v28, v28, v29

    move/from16 v19, v28

    .line 103
    .end local v25    # "bcx":F
    .end local v26    # "bcy":F
    .end local v27    # "scale":F
    :cond_5
    move/from16 v28, v19

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_6

    .line 104
    const v28, 0x3a83126f    # 0.001f

    move/from16 v19, v28

    .line 106
    :cond_6
    move/from16 v28, v24

    move/from16 v29, v19

    mul-float v28, v28, v29

    move/from16 v24, v28

    .line 107
    move/from16 v28, v20

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v24

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v25, v28

    .line 108
    .local v25, "fx":F
    move/from16 v28, v21

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v24

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v26, v28

    .line 109
    .local v26, "fy":F
    new-instance v28, Lcom/sun/prism/impl/paint/RadialGradientContext;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v18

    sget-object v31, Lcom/sun/prism/impl/paint/PaintUtil;->gradXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move/from16 v32, v20

    move/from16 v33, v21

    move/from16 v34, v19

    move/from16 v35, v25

    move/from16 v36, v26

    move-object/from16 v37, v15

    move-object/from16 v38, v16

    move-object/from16 v39, v18

    .line 112
    invoke-virtual/range {v39 .. v39}, Lcom/sun/prism/paint/RadialGradient;->getSpreadMethod()I

    move-result v39

    invoke-direct/range {v29 .. v39}, Lcom/sun/prism/impl/paint/RadialGradientContext;-><init>(Lcom/sun/prism/paint/RadialGradient;Lcom/sun/javafx/geom/transform/BaseTransform;FFFFF[F[Lcom/sun/prism/paint/Color;I)V

    move-object/from16 v17, v28

    .local v17, "context":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    goto/16 :goto_2
.end method
