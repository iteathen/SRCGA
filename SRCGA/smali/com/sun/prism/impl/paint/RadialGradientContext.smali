.class final Lcom/sun/prism/impl/paint/RadialGradientContext;
.super Lcom/sun/prism/impl/paint/MultipleGradientContext;
.source "RadialGradientContext.java"


# static fields
.field private static final SCALEBACK:F = 0.99f

.field private static final SQRT_LUT_SIZE:I = 0x800

.field private static sqrtLut:[F


# instance fields
.field private centerX:F

.field private centerY:F

.field private constA:F

.field private constB:F

.field private focusX:F

.field private focusY:F

.field private gDeltaDelta:F

.field private isNonCyclic:Z

.field private isSimpleFocus:Z

.field private radius:F

.field private radiusSq:F

.field private trivial:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 285
    const/16 v2, 0x801

    new-array v2, v2, [F

    sput-object v2, Lcom/sun/prism/impl/paint/RadialGradientContext;->sqrtLut:[F

    .line 287
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Lcom/sun/prism/impl/paint/RadialGradientContext;->sqrtLut:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 288
    sget-object v2, Lcom/sun/prism/impl/paint/RadialGradientContext;->sqrtLut:[F

    move v3, v1

    move v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x45000000    # 2048.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/paint/RadialGradient;Lcom/sun/javafx/geom/transform/BaseTransform;FFFFF[F[Lcom/sun/prism/paint/Color;I)V
    .locals 24

    .prologue
    .line 105
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/paint/RadialGradientContext;
    move-object/from16 v3, p1

    .local v3, "paint":Lcom/sun/prism/paint/RadialGradient;
    move-object/from16 v4, p2

    .local v4, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p3

    .local v5, "cx":F
    move/from16 v6, p4

    .local v6, "cy":F
    move/from16 v7, p5

    .local v7, "r":F
    move/from16 v8, p6

    .local v8, "fx":F
    move/from16 v9, p7

    .local v9, "fy":F
    move-object/from16 v10, p8

    .local v10, "fractions":[F
    move-object/from16 v11, p9

    .local v11, "colors":[Lcom/sun/prism/paint/Color;
    move/from16 v12, p10

    .local v12, "cycleMethod":I
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-direct/range {v18 .. v23}, Lcom/sun/prism/impl/paint/MultipleGradientContext;-><init>(Lcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;[F[Lcom/sun/prism/paint/Color;I)V

    .line 43
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->isSimpleFocus:Z

    .line 46
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->isNonCyclic:Z

    .line 108
    move-object/from16 v18, v2

    move/from16 v19, v5

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    .line 109
    move-object/from16 v18, v2

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    .line 110
    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    .line 111
    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    .line 112
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->radius:F

    .line 114
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->isSimpleFocus:Z

    .line 115
    move-object/from16 v18, v2

    move/from16 v19, v12

    if-nez v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->isNonCyclic:Z

    .line 118
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radius:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radius:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    .line 120
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v13, v18

    .line 121
    .local v13, "dX":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v14, v18

    .line 123
    .local v14, "dY":F
    move/from16 v18, v13

    move/from16 v19, v13

    mul-float v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v14

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v15, v18

    .line 126
    .local v15, "distSq":D
    move-wide/from16 v18, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v20, v0

    const v21, 0x3f7d70a4    # 0.99f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 128
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v18, v0

    const v19, 0x3f7d70a4    # 0.99f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v15

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 129
    .local v17, "scalefactor":F
    move/from16 v18, v13

    move/from16 v19, v17

    mul-float v18, v18, v19

    move/from16 v13, v18

    .line 130
    move/from16 v18, v14

    move/from16 v19, v17

    mul-float v18, v18, v19

    move/from16 v14, v18

    .line 131
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v19, v0

    move/from16 v20, v13

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    .line 132
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v19, v0

    move/from16 v20, v14

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    .line 137
    .end local v17    # "scalefactor":F
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v19, v0

    move/from16 v20, v13

    move/from16 v21, v13

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->trivial:F

    .line 140
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a02:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->constA:F

    .line 141
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a12:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->constB:F

    .line 144
    move-object/from16 v18, v2

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    mul-float v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/paint/RadialGradientContext;->gDeltaDelta:F

    .line 145
    return-void

    .line 114
    .end local v13    # "dX":F
    .end local v14    # "dY":F
    .end local v15    # "distSq":D
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 115
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method private cyclicCircularGradientFillRaster([IIIIIII)V
    .locals 50

    .prologue
    .line 317
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/paint/RadialGradientContext;
    move-object/from16 v3, p1

    .local v3, "pixels":[I
    move/from16 v4, p2

    .local v4, "off":I
    move/from16 v5, p3

    .local v5, "adjust":I
    move/from16 v6, p4

    .local v6, "x":I
    move/from16 v7, p5

    .local v7, "y":I
    move/from16 v8, p6

    .local v8, "w":I
    move/from16 v9, p7

    .local v9, "h":I
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v42, v0

    move/from16 v0, v42

    neg-float v0, v0

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v43, v0

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v44, v0

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v43, v0

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v44, v0

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v10, v42

    .line 330
    .local v10, "constC":D
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v42, v0

    move/from16 v43, v6

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a01:F

    move/from16 v43, v0

    move/from16 v44, v7

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a02:F

    move/from16 v43, v0

    add-float v42, v42, v43

    move/from16 v26, v42

    .line 331
    .local v26, "constX":F
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v42, v0

    move/from16 v43, v6

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a11:F

    move/from16 v43, v0

    move/from16 v44, v7

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v43, v43, v44

    add-float v42, v42, v43

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a12:F

    move/from16 v43, v0

    add-float v42, v42, v43

    move/from16 v27, v42

    .line 334
    .local v27, "constY":F
    const/high16 v42, 0x40000000    # 2.0f

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v43, v0

    mul-float v42, v42, v43

    move/from16 v28, v42

    .line 335
    .local v28, "precalc2":F
    const/high16 v42, -0x40000000    # -2.0f

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerX:F

    move/from16 v43, v0

    mul-float v42, v42, v43

    move/from16 v29, v42

    .line 353
    .local v29, "precalc3":F
    move/from16 v42, v4

    move/from16 v36, v42

    .line 356
    .local v36, "indexer":I
    move/from16 v42, v8

    move/from16 v43, v5

    add-int v42, v42, v43

    move/from16 v37, v42

    .line 359
    .local v37, "pixInc":I
    const/16 v42, 0x0

    move/from16 v38, v42

    .local v38, "j":I
    :goto_0
    move/from16 v42, v38

    move/from16 v43, v9

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_4

    .line 362
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a01:F

    move/from16 v42, v0

    move/from16 v43, v38

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    move/from16 v43, v26

    add-float v42, v42, v43

    move/from16 v39, v42

    .line 363
    .local v39, "X":F
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a11:F

    move/from16 v42, v0

    move/from16 v43, v38

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    move/from16 v43, v27

    add-float v42, v42, v43

    move/from16 v40, v42

    .line 366
    .local v40, "Y":F
    const/16 v42, 0x0

    move/from16 v41, v42

    .local v41, "i":I
    :goto_1
    move/from16 v42, v41

    move/from16 v43, v8

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    .line 368
    move/from16 v42, v39

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v43, v0

    cmpl-float v42, v42, v43

    if-nez v42, :cond_1

    .line 370
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v42, v0

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v22, v42

    .line 371
    .local v22, "solutionX":D
    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v42, v0

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v24, v42

    .line 372
    .local v24, "solutionY":D
    move-wide/from16 v42, v24

    move/from16 v44, v40

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v45, v0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_0

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->trivial:F

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    :goto_2
    add-double v42, v42, v44

    move-wide/from16 v24, v42

    .line 399
    :goto_3
    move/from16 v42, v39

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    move/from16 v34, v42

    .line 400
    .local v34, "deltaXSq":F
    move/from16 v42, v34

    move/from16 v43, v34

    mul-float v42, v42, v43

    move/from16 v34, v42

    .line 402
    move/from16 v42, v40

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    move/from16 v35, v42

    .line 403
    .local v35, "deltaYSq":F
    move/from16 v42, v35

    move/from16 v43, v35

    mul-float v42, v42, v43

    move/from16 v35, v42

    .line 405
    move/from16 v42, v34

    move/from16 v43, v35

    add-float v42, v42, v43

    move/from16 v32, v42

    .line 407
    .local v32, "currentToFocusSq":F
    move-wide/from16 v42, v22

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    move/from16 v34, v42

    .line 408
    move/from16 v42, v34

    move/from16 v43, v34

    mul-float v42, v42, v43

    move/from16 v34, v42

    .line 410
    move-wide/from16 v42, v24

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    move/from16 v35, v42

    .line 411
    move/from16 v42, v35

    move/from16 v43, v35

    mul-float v42, v42, v43

    move/from16 v35, v42

    .line 413
    move/from16 v42, v34

    move/from16 v43, v35

    add-float v42, v42, v43

    move/from16 v33, v42

    .line 417
    .local v33, "intersectToFocusSq":F
    move/from16 v42, v32

    move/from16 v43, v33

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move/from16 v30, v42

    .line 420
    .local v30, "g":F
    move-object/from16 v42, v3

    move/from16 v43, v36

    move/from16 v44, v41

    add-int v43, v43, v44

    move-object/from16 v44, v2

    move/from16 v45, v30

    invoke-virtual/range {v44 .. v45}, Lcom/sun/prism/impl/paint/RadialGradientContext;->indexIntoGradientsArrays(F)I

    move-result v44

    aput v44, v42, v43

    .line 423
    move/from16 v42, v39

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v43, v0

    add-float v42, v42, v43

    move/from16 v39, v42

    .line 424
    move/from16 v42, v40

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v43, v0

    add-float v42, v42, v43

    move/from16 v40, v42

    .line 366
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 372
    .end local v30    # "g":F
    .end local v32    # "currentToFocusSq":F
    .end local v33    # "intersectToFocusSq":F
    .end local v34    # "deltaXSq":F
    .end local v35    # "deltaYSq":F
    :cond_0
    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->trivial:F

    move/from16 v44, v0

    move/from16 v0, v44

    neg-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    goto/16 :goto_2

    .line 375
    .end local v22    # "solutionX":D
    .end local v24    # "solutionY":D
    :cond_1
    move/from16 v42, v40

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusY:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    move/from16 v43, v39

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v44, v0

    sub-float v43, v43, v44

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v18, v42

    .line 376
    .local v18, "slope":D
    move/from16 v42, v40

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v44, v18

    move/from16 v46, v39

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    move-wide/from16 v20, v42

    .line 380
    .local v20, "yintcpt":D
    move-wide/from16 v42, v18

    move-wide/from16 v44, v18

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    add-double v42, v42, v44

    move-wide/from16 v12, v42

    .line 381
    .local v12, "A":D
    move/from16 v42, v29

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide/high16 v44, -0x4000000000000000L    # -2.0

    move-wide/from16 v46, v18

    mul-double v44, v44, v46

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->centerY:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v20

    sub-double v46, v46, v48

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v14, v42

    .line 382
    .local v14, "B":D
    move-wide/from16 v42, v10

    move-wide/from16 v44, v20

    move-wide/from16 v46, v20

    move/from16 v48, v28

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    sub-double v46, v46, v48

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v16, v42

    .line 384
    .local v16, "C":D
    move-wide/from16 v42, v14

    move-wide/from16 v44, v14

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x4010000000000000L    # 4.0

    move-wide/from16 v46, v12

    mul-double v44, v44, v46

    move-wide/from16 v46, v16

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    move/from16 v31, v42

    .line 385
    .local v31, "det":F
    move-wide/from16 v42, v14

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v22, v42

    .line 389
    .restart local v22    # "solutionX":D
    move-wide/from16 v42, v22

    move/from16 v44, v39

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->focusX:F

    move/from16 v45, v0

    cmpg-float v44, v44, v45

    if-gez v44, :cond_2

    move/from16 v44, v31

    move/from16 v0, v44

    neg-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    :goto_4
    add-double v42, v42, v44

    move-wide/from16 v22, v42

    .line 390
    move-wide/from16 v42, v22

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-wide/from16 v46, v12

    mul-double v44, v44, v46

    div-double v42, v42, v44

    move-wide/from16 v22, v42

    .line 391
    move-wide/from16 v42, v18

    move-wide/from16 v44, v22

    mul-double v42, v42, v44

    move-wide/from16 v44, v20

    add-double v42, v42, v44

    move-wide/from16 v24, v42

    .restart local v24    # "solutionY":D
    goto/16 :goto_3

    .line 389
    .end local v24    # "solutionY":D
    :cond_2
    move/from16 v44, v31

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    goto :goto_4

    .line 427
    .end local v12    # "A":D
    .end local v14    # "B":D
    .end local v16    # "C":D
    .end local v18    # "slope":D
    .end local v20    # "yintcpt":D
    .end local v22    # "solutionX":D
    .end local v31    # "det":F
    :cond_3
    move/from16 v42, v36

    move/from16 v43, v37

    add-int v42, v42, v43

    move/from16 v36, v42

    .line 359
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 429
    .end local v39    # "X":F
    .end local v40    # "Y":F
    .end local v41    # "i":I
    :cond_4
    return-void
.end method

.method private simpleNonCyclicFillRaster([IIIIIII)V
    .locals 27

    .prologue
    .line 207
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/paint/RadialGradientContext;
    move-object/from16 v3, p1

    .local v3, "pixels":[I
    move/from16 v4, p2

    .local v4, "off":I
    move/from16 v5, p3

    .local v5, "adjust":I
    move/from16 v6, p4

    .local v6, "x":I
    move/from16 v7, p5

    .local v7, "y":I
    move/from16 v8, p6

    .local v8, "w":I
    move/from16 v9, p7

    .local v9, "h":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v23, v0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a01:F

    move/from16 v24, v0

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->constA:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v10, v23

    .line 208
    .local v10, "rowX":F
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v23, v0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a11:F

    move/from16 v24, v0

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->constB:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v11, v23

    .line 211
    .local v11, "rowY":F
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->gDeltaDelta:F

    move/from16 v23, v0

    move/from16 v12, v23

    .line 214
    .local v12, "gDeltaDelta":F
    move/from16 v23, v5

    move/from16 v24, v8

    add-int v23, v23, v24

    move/from16 v5, v23

    .line 217
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->gradient:[I

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->fastGradientArraySize:I

    move/from16 v24, v0

    aget v23, v23, v24

    move/from16 v13, v23

    .line 219
    .local v13, "rgbclip":I
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "j":I
    :goto_0
    move/from16 v23, v14

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 221
    move/from16 v23, v10

    move/from16 v24, v10

    mul-float v23, v23, v24

    move/from16 v24, v11

    move/from16 v25, v11

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v15, v23

    .line 222
    .local v15, "gRel":F
    const/high16 v23, 0x40000000    # 2.0f

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a00:F

    move/from16 v24, v0

    move/from16 v25, v10

    mul-float v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a10:F

    move/from16 v25, v0

    move/from16 v26, v11

    mul-float v25, v25, v26

    add-float v24, v24, v25

    mul-float v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->radiusSq:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v24, v12

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 240
    .local v16, "gDelta":F
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 242
    .local v17, "i":I
    :goto_1
    move/from16 v23, v17

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    move/from16 v23, v15

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_0

    .line 243
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v17

    add-int v24, v24, v25

    move/from16 v25, v13

    aput v25, v23, v24

    .line 244
    move/from16 v23, v15

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v15, v23

    .line 245
    move/from16 v23, v16

    move/from16 v24, v12

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 246
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 249
    :cond_0
    :goto_2
    move/from16 v23, v17

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move/from16 v23, v15

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_2

    .line 252
    move/from16 v23, v15

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_1

    .line 253
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 264
    .local v18, "gIndex":I
    :goto_3
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v17

    add-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->gradient:[I

    move-object/from16 v25, v0

    move/from16 v26, v18

    aget v25, v25, v26

    aput v25, v23, v24

    .line 267
    move/from16 v23, v15

    move/from16 v24, v16

    add-float v23, v23, v24

    move/from16 v15, v23

    .line 268
    move/from16 v23, v16

    move/from16 v24, v12

    add-float v23, v23, v24

    move/from16 v16, v23

    .line 269
    add-int/lit8 v17, v17, 0x1

    .line 270
    goto :goto_2

    .line 255
    .end local v18    # "gIndex":I
    :cond_1
    move/from16 v23, v15

    const/high16 v24, 0x45000000    # 2048.0f

    mul-float v23, v23, v24

    move/from16 v19, v23

    .line 256
    .local v19, "fIndex":F
    move/from16 v23, v19

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v20, v23

    .line 257
    .local v20, "iIndex":I
    sget-object v23, Lcom/sun/prism/impl/paint/RadialGradientContext;->sqrtLut:[F

    move/from16 v24, v20

    aget v23, v23, v24

    move/from16 v21, v23

    .line 258
    .local v21, "s0":F
    sget-object v23, Lcom/sun/prism/impl/paint/RadialGradientContext;->sqrtLut:[F

    move/from16 v24, v20

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move/from16 v24, v21

    sub-float v23, v23, v24

    move/from16 v22, v23

    .line 259
    .local v22, "s1":F
    move/from16 v23, v21

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v25, v22

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v19, v23

    .line 260
    move/from16 v23, v19

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->fastGradientArraySize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v18, v23

    .restart local v18    # "gIndex":I
    goto :goto_3

    .line 272
    .end local v18    # "gIndex":I
    .end local v19    # "fIndex":F
    .end local v20    # "iIndex":I
    .end local v21    # "s0":F
    .end local v22    # "s1":F
    :cond_2
    :goto_4
    move/from16 v23, v17

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 273
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v17

    add-int v24, v24, v25

    move/from16 v25, v13

    aput v25, v23, v24

    .line 274
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 277
    :cond_3
    move/from16 v23, v4

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v4, v23

    .line 278
    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a01:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v10, v23

    .line 279
    move/from16 v23, v11

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/paint/RadialGradientContext;->a11:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v11, v23

    .line 219
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 281
    .end local v15    # "gRel":F
    .end local v16    # "gDelta":F
    .end local v17    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected fillRaster([IIIIIII)V
    .locals 16

    .prologue
    .line 157
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/RadialGradientContext;
    move-object/from16 v1, p1

    .local v1, "pixels":[I
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "adjust":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "w":I
    move/from16 v7, p7

    .local v7, "h":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/prism/impl/paint/RadialGradientContext;->isSimpleFocus:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/prism/impl/paint/RadialGradientContext;->isNonCyclic:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/prism/impl/paint/RadialGradientContext;->isSimpleLookup:Z

    if-eqz v8, :cond_0

    .line 158
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/prism/impl/paint/RadialGradientContext;->simpleNonCyclicFillRaster([IIIIIII)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/prism/impl/paint/RadialGradientContext;->cyclicCircularGradientFillRaster([IIIIIII)V

    goto :goto_0
.end method
