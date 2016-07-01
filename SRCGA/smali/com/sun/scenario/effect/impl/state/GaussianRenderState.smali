.class public Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
.super Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
.source "GaussianRenderState.java"


# static fields
.field public static final MAX_RADIUS:F


# instance fields
.field private inputRadiusX:F

.field private inputRadiusY:F

.field private inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private isShadow:Z

.field private passRadius:F

.field private passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

.field private resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private samplevectors:[F

.field private shadowColor:Lcom/sun/scenario/effect/Color4f;

.field private space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

.field private spread:F

.field private spreadPass:F

.field private validatedPass:I

.field private weights:Ljava/nio/FloatBuffer;

.field private weightsValidRadius:F

.field private weightsValidSpread:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget v0, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_KERNEL_SIZE:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    return-void
.end method

.method public constructor <init>(FFFLcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 41

    .prologue
    .line 249
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move/from16 v3, p1

    .local v3, "radius":F
    move/from16 v4, p2

    .local v4, "dx":F
    move/from16 v5, p3

    .local v5, "dy":F
    move-object/from16 v6, p4

    .local v6, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v32}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;-><init>()V

    .line 253
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->isShadow:Z

    .line 254
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spread:F

    .line 255
    move-object/from16 v32, v6

    if-nez v32, :cond_0

    sget-object v32, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v6, v32

    .line 256
    :cond_0
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v32

    move-wide/from16 v7, v32

    .line 257
    .local v7, "mxx":D
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v32

    move-wide/from16 v9, v32

    .line 258
    .local v9, "mxy":D
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v32

    move-wide/from16 v11, v32

    .line 259
    .local v11, "myx":D
    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v32

    move-wide/from16 v13, v32

    .line 261
    .local v13, "myy":D
    move-wide/from16 v32, v7

    move/from16 v34, v4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move-wide/from16 v34, v9

    move/from16 v36, v5

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v15, v32

    .line 262
    .local v15, "tdx":D
    move-wide/from16 v32, v11

    move/from16 v34, v4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move-wide/from16 v34, v13

    move/from16 v36, v5

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v17, v32

    .line 263
    .local v17, "tdy":D
    move-wide/from16 v32, v15

    move-wide/from16 v34, v17

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v32

    move-wide/from16 v19, v32

    .line 264
    .local v19, "txScale":D
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 265
    .local v21, "scaled":Z
    move/from16 v32, v3

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v19

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move/from16 v22, v32

    .line 266
    .local v22, "scaledRadius":F
    move/from16 v32, v22

    const/high16 v33, 0x3b800000    # 0.00390625f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_1

    .line 267
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    .line 268
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    .line 269
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spreadPass:F

    .line 270
    move-object/from16 v32, v2

    sget-object v33, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 271
    move-object/from16 v32, v2

    move-object/from16 v33, v6

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 272
    move-object/from16 v32, v2

    sget-object v33, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 273
    move-object/from16 v32, v2

    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    fill-array-data v33, :array_0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    .line 333
    :goto_0
    return-void

    .line 275
    :cond_1
    move/from16 v32, v22

    sget v33, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    cmpl-float v32, v32, v33

    if-lez v32, :cond_2

    .line 276
    sget v32, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v22, v32

    .line 277
    sget v32, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v33, v3

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v19, v32

    .line 278
    const/16 v32, 0x1

    move/from16 v21, v32

    .line 280
    :cond_2
    move-object/from16 v32, v2

    move/from16 v33, v22

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    .line 281
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    .line 282
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spreadPass:F

    .line 283
    move/from16 v32, v21

    if-eqz v32, :cond_3

    .line 297
    move-wide/from16 v32, v9

    move/from16 v34, v4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move-wide/from16 v34, v7

    move/from16 v36, v5

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v23, v32

    .line 298
    .local v23, "odx":D
    move-wide/from16 v32, v13

    move/from16 v34, v4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move-wide/from16 v34, v11

    move/from16 v36, v5

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v25, v32

    .line 299
    .local v25, "ody":D
    move-wide/from16 v32, v23

    move-wide/from16 v34, v25

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v32

    move-wide/from16 v27, v32

    .line 300
    .local v27, "txOScale":D
    move-object/from16 v32, v2

    sget-object v33, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->CustomSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 301
    new-instance v32, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    move-object/from16 v29, v32

    .line 302
    .local v29, "a2d":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object/from16 v32, v29

    move-wide/from16 v33, v19

    move-wide/from16 v35, v27

    invoke-virtual/range {v32 .. v36}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 303
    move-object/from16 v32, v29

    move/from16 v33, v4

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v35, v5

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-virtual/range {v32 .. v36}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(DD)V

    .line 306
    move-object/from16 v32, v29

    :try_start_0
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/Affine2D;->createInverse()Lcom/sun/javafx/geom/transform/Affine2D;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    move-object/from16 v30, v32

    .line 309
    .line 310
    .local v30, "a2di":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    move-object/from16 v32, v2

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 311
    move-object/from16 v32, v2

    move-object/from16 v33, v6

    .line 312
    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v33

    move-object/from16 v34, v30

    .line 313
    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 315
    move-object/from16 v32, v2

    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    fill-array-data v33, :array_1

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    .line 316
    goto/16 :goto_0

    .line 307
    .end local v30    # "a2di":Lcom/sun/javafx/geom/transform/BaseTransform;
    :catch_0
    move-exception v32

    move-object/from16 v31, v32

    .line 308
    .local v31, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    sget-object v32, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v30, v32

    .restart local v30    # "a2di":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_1

    .line 317
    .end local v23    # "odx":D
    .end local v25    # "ody":D
    .end local v27    # "txOScale":D
    .end local v29    # "a2d":Lcom/sun/javafx/geom/transform/Affine2D;
    .end local v30    # "a2di":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v31    # "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_3
    move-object/from16 v32, v2

    sget-object v33, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 318
    move-object/from16 v32, v2

    move-object/from16 v33, v6

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 319
    move-object/from16 v32, v2

    sget-object v33, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 322
    move-object/from16 v32, v2

    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x0

    move-wide/from16 v36, v15

    move-wide/from16 v38, v19

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    aput v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x1

    move-wide/from16 v36, v17

    move-wide/from16 v38, v19

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    aput v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x2

    const/16 v36, 0x0

    aput v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x3

    const/16 v36, 0x0

    aput v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x4

    const/16 v36, 0x0

    aput v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x5

    const/16 v36, 0x0

    aput v36, v34, v35

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    goto/16 :goto_0

    .line 273
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 315
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFZLcom/sun/scenario/effect/Color4f;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 33

    .prologue
    .line 113
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move/from16 v3, p1

    .local v3, "xradius":F
    move/from16 v4, p2

    .local v4, "yradius":F
    move/from16 v5, p3

    .local v5, "spread":F
    move/from16 v6, p4

    .local v6, "isShadow":Z
    move-object/from16 v7, p5

    .local v7, "shadowColor":Lcom/sun/scenario/effect/Color4f;
    move-object/from16 v8, p6

    .local v8, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;-><init>()V

    .line 171
    move-object/from16 v24, v2

    move/from16 v25, v6

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->isShadow:Z

    .line 172
    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 173
    move-object/from16 v24, v2

    move/from16 v25, v5

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spread:F

    .line 174
    move-object/from16 v24, v8

    if-nez v24, :cond_0

    sget-object v24, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v8, v24

    .line 175
    :cond_0
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 176
    .local v9, "mxx":D
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 177
    .local v11, "mxy":D
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 178
    .local v13, "myx":D
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v24

    move-wide/from16 v15, v24

    .line 180
    .local v15, "myy":D
    move-wide/from16 v24, v9

    move-wide/from16 v26, v13

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 181
    .local v17, "txScaleX":D
    move-wide/from16 v24, v11

    move-wide/from16 v26, v15

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 182
    .local v19, "txScaleY":D
    const/16 v24, 0x0

    move/from16 v21, v24

    .line 183
    .local v21, "scaled":Z
    move/from16 v24, v3

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v17

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v22, v24

    .line 184
    .local v22, "scaledRadiusX":F
    move/from16 v24, v4

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v19

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v23, v24

    .line 185
    .local v23, "scaledRadiusY":F
    move/from16 v24, v22

    const/high16 v25, 0x3b800000    # 0.00390625f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_1

    move/from16 v24, v23

    const/high16 v25, 0x3b800000    # 0.00390625f

    cmpg-float v24, v24, v25

    if-gez v24, :cond_1

    .line 189
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    .line 190
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    .line 191
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spreadPass:F

    .line 192
    move-object/from16 v24, v2

    sget-object v25, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 193
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 194
    move-object/from16 v24, v2

    sget-object v25, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 195
    move-object/from16 v24, v2

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    .line 238
    :goto_0
    return-void

    .line 197
    :cond_1
    move/from16 v24, v22

    sget v25, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    cmpl-float v24, v24, v25

    if-lez v24, :cond_2

    .line 198
    sget v24, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v22, v24

    .line 199
    sget v24, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v25, v3

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v17, v24

    .line 200
    const/16 v24, 0x1

    move/from16 v21, v24

    .line 202
    :cond_2
    move/from16 v24, v23

    sget v25, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    cmpl-float v24, v24, v25

    if-lez v24, :cond_3

    .line 203
    sget v24, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v23, v24

    .line 204
    sget v24, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move/from16 v25, v4

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v19, v24

    .line 205
    const/16 v24, 0x1

    move/from16 v21, v24

    .line 207
    :cond_3
    move-object/from16 v24, v2

    move/from16 v25, v22

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    .line 208
    move-object/from16 v24, v2

    move/from16 v25, v23

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    .line 212
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    :cond_4
    const/high16 v25, 0x3f800000    # 1.0f

    :goto_1
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spreadPass:F

    .line 213
    move/from16 v24, v21

    if-eqz v24, :cond_6

    .line 214
    move-object/from16 v24, v2

    sget-object v25, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->CustomSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 215
    move-object/from16 v24, v2

    move-wide/from16 v25, v17

    move-wide/from16 v27, v19

    invoke-static/range {v25 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 216
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    .line 217
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v25

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v17

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v19

    div-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 218
    invoke-virtual/range {v25 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 220
    move-object/from16 v24, v2

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    goto/16 :goto_0

    .line 212
    :cond_5
    const/16 v25, 0x0

    goto :goto_1

    .line 222
    :cond_6
    move-object/from16 v24, v2

    sget-object v25, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 223
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 224
    move-object/from16 v24, v2

    sget-object v25, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 227
    move-object/from16 v24, v2

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x0

    move-wide/from16 v28, v9

    move-wide/from16 v30, v17

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x1

    move-wide/from16 v28, v13

    move-wide/from16 v30, v17

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x2

    move-wide/from16 v28, v11

    move-wide/from16 v30, v19

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x3

    move-wide/from16 v28, v15

    move-wide/from16 v30, v19

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x4

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x5

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    goto/16 :goto_0

    .line 195
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 220
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method static getGaussianWeights(Ljava/nio/FloatBuffer;IFF)Ljava/nio/FloatBuffer;
    .locals 16

    .prologue
    .line 70
    move-object/from16 v1, p0

    .local v1, "weights":Ljava/nio/FloatBuffer;
    move/from16 v2, p1

    .local v2, "pad":I
    move/from16 v3, p2

    .local v3, "radius":F
    move/from16 v4, p3

    .local v4, "spread":F
    move v12, v2

    move v5, v12

    .line 71
    .local v5, "r":I
    move v12, v5

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v12

    .line 72
    .local v6, "klen":I
    move-object v12, v1

    if-nez v12, :cond_0

    .line 73
    const/16 v12, 0x80

    invoke-static {v12}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v12

    move-object v1, v12

    .line 75
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v12

    .line 76
    move v12, v3

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    move v7, v12

    .line 77
    .local v7, "sigma":F
    const/high16 v12, 0x40000000    # 2.0f

    move v13, v7

    mul-float/2addr v12, v13

    move v13, v7

    mul-float/2addr v12, v13

    move v8, v12

    .line 78
    .local v8, "sigma22":F
    move v12, v8

    const/4 v13, 0x1

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 80
    const/4 v12, 0x1

    move v8, v12

    .line 82
    :cond_1
    const/4 v12, 0x0

    move v9, v12

    .line 83
    .local v9, "total":F
    move v12, v5

    neg-int v12, v12

    move v10, v12

    .local v10, "row":I
    :goto_0
    move v12, v10

    move v13, v5

    if-gt v12, v13, :cond_2

    .line 84
    move v12, v10

    move v13, v10

    mul-int/2addr v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    move v13, v8

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v11, v12

    .line 85
    .local v11, "kval":F
    move-object v12, v1

    move v13, v11

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 86
    move v12, v9

    move v13, v11

    add-float/2addr v12, v13

    move v9, v12

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 88
    .end local v11    # "kval":F
    :cond_2
    move v12, v9

    move-object v13, v1

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    move v14, v9

    sub-float/2addr v13, v14

    move v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v9, v12

    .line 89
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i":I
    :goto_1
    move v12, v10

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 90
    move-object v12, v1

    move v13, v10

    move-object v14, v1

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v14

    move v15, v9

    div-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 92
    :cond_3
    move v12, v6

    invoke-static {v12}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->getPeerSize(I)I

    move-result v12

    move v10, v12

    .line 93
    .local v10, "limit":I
    :goto_2
    move-object v12, v1

    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->position()I

    move-result v12

    move v13, v10

    if-ge v12, v13, :cond_4

    .line 94
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    goto :goto_2

    .line 96
    :cond_4
    move-object v12, v1

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v12

    .line 97
    move-object v12, v1

    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    .line 98
    move-object v12, v1

    move-object v1, v12

    .end local v1    # "weights":Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method private validateWeights()V
    .locals 9

    .prologue
    .line 549
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    move v2, v4

    .line 550
    .local v2, "r":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spreadPass:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->spread:F

    :goto_0
    move v3, v4

    .line 551
    .local v3, "s":F
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weightsValidRadius:F

    move v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weightsValidSpread:F

    move v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 555
    :cond_0
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    move v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v7, v2

    move v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->getGaussianWeights(Ljava/nio/FloatBuffer;IFF)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    .line 556
    move-object v4, v1

    move v5, v2

    iput v5, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weightsValidRadius:F

    .line 557
    move-object v4, v1

    move v5, v3

    iput v5, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weightsValidSpread:F

    .line 559
    :cond_1
    return-void

    .line 550
    .end local v3    # "s":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 19

    .prologue
    .line 369
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move/from16 v2, p1

    .local v2, "i":I
    move-object/from16 v3, p2

    .local v3, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v3

    if-eqz v14, :cond_0

    .line 370
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    move-wide v4, v14

    .line 371
    .local v4, "dx0":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    move-wide v6, v14

    .line 372
    .local v6, "dy0":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    move-wide v8, v14

    .line 373
    .local v8, "dx1":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x3

    aget v14, v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    move-wide v10, v14

    .line 374
    .local v10, "dy1":D
    move-wide v14, v4

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v12, v14

    .line 375
    .local v12, "padx":I
    move-wide v14, v6

    move-wide/from16 v16, v10

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v13, v14

    .line 376
    .local v13, "pady":I
    move v14, v12

    move v15, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 377
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v14

    .line 378
    move-object v14, v3

    move v15, v12

    move/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 381
    .end local v4    # "dx0":D
    .end local v6    # "dy0":D
    .end local v8    # "dx1":D
    .end local v10    # "dy1":D
    .end local v12    # "padx":I
    .end local v13    # "pady":I
    :cond_0
    move-object v14, v3

    move-object v1, v14

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v1
.end method

.method public getInputKernelSize(I)I
    .locals 6

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move v1, p1

    .local v1, "pass":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    float-to-double v4, v4

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    float-to-double v4, v4

    goto :goto_0
.end method

.method public getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getPassKernelSize()I
    .locals 6

    .prologue
    .line 532
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return v1
.end method

.method public getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 19

    .prologue
    .line 466
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object/from16 v2, p1

    .local v2, "srcdimension":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p2

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v1

    iget v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    if-nez v14, :cond_2

    move-object v14, v1

    iget v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    float-to-double v14, v14

    :goto_0
    move-wide v4, v14

    .line 467
    .local v4, "r":D
    move-object v14, v1

    iget v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    move v6, v14

    .line 468
    .local v6, "i":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    move v15, v6

    const/16 v16, 0x0

    add-int/lit8 v15, v15, 0x0

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide v7, v14

    .line 469
    .local v7, "dx":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide v9, v14

    .line 470
    .local v9, "dy":D
    move-wide v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v11, v14

    .line 471
    .local v11, "padx":I
    move-wide v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v12, v14

    .line 472
    .local v12, "pady":I
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v13, v14

    .line 473
    .local v13, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v13

    move v15, v11

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 474
    move-object v14, v3

    if-eqz v14, :cond_1

    .line 475
    move-object v14, v1

    iget v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    if-nez v14, :cond_0

    .line 479
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide v7, v14

    .line 480
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v15, 0x3

    aget v14, v14, v15

    float-to-double v14, v14

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    move-wide v9, v14

    .line 481
    move-wide v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v11, v14

    .line 482
    move-wide v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v12, v14

    .line 483
    move v14, v11

    move v15, v12

    or-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 484
    new-instance v14, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v14

    .line 485
    move-object v14, v3

    move v15, v11

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 488
    :cond_0
    move-object v14, v13

    move-object v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 490
    :cond_1
    move-object v14, v13

    move-object v1, v14

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v1

    .line 466
    .end local v4    # "r":D
    .end local v6    # "i":I
    .end local v7    # "dx":D
    .end local v9    # "dy":D
    .end local v11    # "padx":I
    .end local v12    # "pady":I
    .end local v13    # "ret":Lcom/sun/javafx/geom/Rectangle;
    .restart local v1    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_2
    move-object v14, v1

    iget v14, v14, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    float-to-double v14, v14

    goto/16 :goto_0
.end method

.method public getPassShadowColorComponents()[F
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->BLACK_COMPONENTS:[F

    .line 349
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0

    .line 347
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 349
    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    goto :goto_0
.end method

.method public getPassType()Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getPassVector()[F
    .locals 10

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    move v1, v6

    .line 501
    .local v1, "xoff":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    move v2, v6

    .line 502
    .local v2, "yoff":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->getPassKernelSize()I

    move-result v6

    move v3, v6

    .line 503
    .local v3, "ksize":I
    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 504
    .local v4, "center":I
    const/4 v6, 0x4

    new-array v6, v6, [F

    move-object v5, v6

    .line 505
    .local v5, "ret":[F
    move-object v6, v5

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 506
    move-object v6, v5

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 507
    move-object v6, v5

    const/4 v7, 0x2

    move v8, v4

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v1

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 508
    move-object v6, v5

    const/4 v7, 0x3

    move v8, v4

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 509
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getPassWeights()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validateWeights()V

    .line 521
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    .line 522
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getPassWeightsArrayLength()I
    .locals 3

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validateWeights()V

    .line 515
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->weights:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return v0
.end method

.method public getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return-object v0
.end method

.method public isNop()Z
    .locals 3

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->isShadow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 538
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    const/high16 v2, 0x3b800000    # 0.00390625f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    const/high16 v2, 0x3b800000    # 0.00390625f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPassNop()Z
    .locals 3

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->isShadow:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 545
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    const/high16 v2, 0x3b800000    # 0.00390625f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->isShadow:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    return v0
.end method

.method public validatePassInput(Lcom/sun/scenario/effect/ImageData;I)Lcom/sun/scenario/effect/ImageData;
    .locals 19

    .prologue
    .line 386
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/scenario/effect/ImageData;
    move/from16 v2, p2

    .local v2, "pass":I
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    .line 387
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v10

    move-object v3, v10

    .line 388
    .local v3, "f":Lcom/sun/scenario/effect/Filterable;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    move-object v4, v10

    .line 389
    .local v4, "srcTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v10, v2

    if-nez v10, :cond_0

    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusX:F

    :goto_0
    move v5, v10

    .line 390
    .local v5, "iRadius":F
    move v10, v2

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    move v6, v10

    .line 391
    .local v6, "vecindex":I
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 393
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    .line 394
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    move v13, v6

    aget v12, v12, v13

    aput v12, v10, v11

    .line 395
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 396
    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->validatedPass:I

    if-nez v10, :cond_2

    .line 397
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v11

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->nearOne(FI)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    move-object v11, v3

    .line 398
    invoke-interface {v11}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v11

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->nearZero(FI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 400
    move-object v10, v0

    sget-object v11, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    .line 451
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    move-object v13, v3

    invoke-interface {v13}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 452
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x5

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    move-object v13, v3

    invoke-interface {v13}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 453
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :goto_2
    return-object v0

    .line 389
    .end local v5    # "iRadius":F
    .end local v6    # "vecindex":I
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/GaussianRenderState;
    :cond_0
    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->inputRadiusY:F

    goto/16 :goto_0

    .line 402
    .restart local v5    # "iRadius":F
    .restart local v6    # "vecindex":I
    :cond_1
    move-object v10, v0

    sget-object v11, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    goto :goto_1

    .line 405
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v11

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->nearZero(FI)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    move-object v11, v3

    .line 406
    invoke-interface {v11}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v11

    invoke-static {v10, v11}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->nearOne(FI)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 408
    move-object v10, v0

    sget-object v11, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    goto :goto_1

    .line 410
    :cond_3
    move-object v10, v0

    sget-object v11, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    goto :goto_1

    .line 425
    :cond_4
    move-object v10, v0

    sget-object v11, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passType:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    .line 427
    move-object v10, v4

    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v14, 0x4

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform([FI[FII)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .line 433
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    float-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-wide v7, v10

    .line 434
    .local v7, "srcScale":D
    move v10, v5

    float-to-double v10, v10

    move-wide v12, v7

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move v9, v10

    .line 435
    .local v9, "pRad":F
    move v10, v9

    sget v11, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 436
    sget v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move v9, v10

    .line 437
    sget v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->MAX_RADIUS:F

    move v11, v5

    div-float/2addr v10, v11

    float-to-double v10, v10

    move-wide v7, v10

    .line 439
    :cond_5
    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    .line 448
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    float-to-double v12, v12

    move-wide v14, v7

    div-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 449
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x5

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    float-to-double v12, v12

    move-wide v14, v7

    div-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    goto/16 :goto_1

    .line 428
    .end local v7    # "srcScale":D
    .end local v9    # "pRad":F
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 429
    .local v7, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->passRadius:F

    .line 430
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v11, 0x4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;->samplevectors:[F

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v12, v18

    move-object/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    aput v15, v13, v14

    aput v12, v10, v11

    .line 431
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_2
.end method
