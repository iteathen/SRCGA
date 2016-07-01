.class public Lcom/sun/scenario/effect/impl/state/BoxRenderState;
.super Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
.source "BoxRenderState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_BOX_SIZES:[I


# instance fields
.field private final blurPasses:I

.field private final inputSizeH:F

.field private final inputSizeV:F

.field private inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private final isShadow:Z

.field private passSize:F

.field private resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private samplevectors:[F

.field private shadowColor:Lcom/sun/scenario/effect/Color4f;

.field private space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

.field private final spread:F

.field private final spreadPass:I

.field private swCompatible:Z

.field private validatedPass:I

.field private weights:Ljava/nio/FloatBuffer;

.field private weightsValidSize:F

.field private weightsValidSpread:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 79
    const-class v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->$assertionsDisabled:Z

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget v3, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_KERNEL_SIZE:I

    const/4 v4, 0x0

    .line 81
    invoke-static {v3, v4}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getMaxSizeForKernelSize(II)I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget v3, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_KERNEL_SIZE:I

    const/4 v4, 0x1

    .line 82
    invoke-static {v3, v4}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getMaxSizeForKernelSize(II)I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget v3, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_KERNEL_SIZE:I

    const/4 v4, 0x2

    .line 83
    invoke-static {v3, v4}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getMaxSizeForKernelSize(II)I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget v3, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_KERNEL_SIZE:I

    const/4 v4, 0x3

    .line 84
    invoke-static {v3, v4}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getMaxSizeForKernelSize(II)I

    move-result v3

    aput v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_BOX_SIZES:[I

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(FFIFZLcom/sun/scenario/effect/Color4f;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 26

    .prologue
    .line 130
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move/from16 v3, p1

    .local v3, "hsize":F
    move/from16 v4, p2

    .local v4, "vsize":F
    move/from16 v5, p3

    .local v5, "blurPasses":I
    move/from16 v6, p4

    .local v6, "spread":F
    move/from16 v7, p5

    .local v7, "isShadow":Z
    move-object/from16 v8, p6

    .local v8, "shadowColor":Lcom/sun/scenario/effect/Color4f;
    move-object/from16 v9, p7

    .local v9, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;-><init>()V

    .line 200
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow:Z

    .line 201
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 202
    move-object/from16 v18, v2

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spread:F

    .line 203
    move-object/from16 v18, v2

    move/from16 v19, v5

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    .line 204
    move-object/from16 v18, v9

    if-nez v18, :cond_0

    sget-object v18, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v9, v18

    .line 205
    :cond_0
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v18

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 206
    .local v10, "txScaleX":D
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v18

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 207
    .local v12, "txScaleY":D
    move/from16 v18, v3

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 208
    .local v14, "fSizeH":F
    move/from16 v18, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 209
    .local v15, "fSizeV":F
    sget-object v18, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_BOX_SIZES:[I

    move/from16 v19, v5

    aget v18, v18, v19

    move/from16 v16, v18

    .line 210
    .local v16, "maxPassSize":I
    move/from16 v18, v14

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1

    .line 211
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v3

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 212
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 214
    :cond_1
    move/from16 v18, v15

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 215
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v4

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 216
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 218
    :cond_2
    move-object/from16 v18, v2

    move/from16 v19, v14

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeH:F

    .line 219
    move-object/from16 v18, v2

    move/from16 v19, v15

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeV:F

    .line 220
    move-object/from16 v18, v2

    move/from16 v19, v15

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spreadPass:I

    .line 226
    move-wide/from16 v18, v10

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_3

    const-wide/16 v18, 0x0

    move-object/from16 v20, v9

    .line 227
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_3

    move-wide/from16 v18, v12

    move-object/from16 v20, v9

    .line 228
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_3

    const-wide/16 v18, 0x0

    move-object/from16 v20, v9

    .line 229
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_5

    :cond_3
    const/16 v18, 0x1

    :goto_1
    move/from16 v17, v18

    .line 230
    .local v17, "custom":Z
    move/from16 v18, v17

    if-eqz v18, :cond_6

    .line 231
    move-object/from16 v18, v2

    sget-object v19, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->CustomSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 232
    move-object/from16 v18, v2

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-static/range {v19 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getScaleInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 233
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    .line 234
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v10

    div-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v12

    div-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 235
    invoke-virtual/range {v19 .. v25}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 242
    :goto_2
    return-void

    .line 220
    .end local v17    # "custom":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 229
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 237
    .restart local v17    # "custom":Z
    :cond_6
    move-object/from16 v18, v2

    sget-object v19, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    .line 238
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 239
    move-object/from16 v18, v2

    sget-object v19, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    goto :goto_2
.end method

.method public static getKernelSize(II)I
    .locals 5

    .prologue
    .line 122
    move v0, p0

    .local v0, "passSize":I
    move v1, p1

    .local v1, "blurPasses":I
    move v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 123
    .local v2, "kernelSize":I
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v4, v1

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 124
    move v3, v2

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 125
    move v3, v2

    move v0, v3

    .end local v0    # "passSize":I
    return v0

    .line 122
    .end local v2    # "kernelSize":I
    .restart local v0    # "passSize":I
    :cond_0
    move v3, v0

    goto :goto_0
.end method

.method public static getMaxSizeForKernelSize(II)I
    .locals 6

    .prologue
    .line 108
    move v0, p0

    .local v0, "kernelSize":I
    move v1, p1

    .local v1, "blurPasses":I
    move v3, v1

    if-nez v3, :cond_0

    .line 109
    const v3, 0x7fffffff

    move v0, v3

    .line 118
    .end local v0    # "kernelSize":I
    :goto_0
    return v0

    .line 115
    .restart local v0    # "kernelSize":I
    :cond_0
    move v3, v0

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 116
    .local v2, "passSize":I
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v4, v1

    div-int/2addr v3, v4

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 117
    sget-boolean v3, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move v3, v2

    move v4, v1

    invoke-static {v3, v4}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getKernelSize(II)I

    move-result v3

    move v4, v0

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 118
    :cond_1
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method private validateWeights()V
    .locals 30

    .prologue
    .line 464
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 465
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v3, v16

    .line 472
    .local v3, "pSize":F
    :cond_0
    :goto_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spreadPass:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spread:F

    move/from16 v16, v0

    :goto_1
    move/from16 v4, v16

    .line 473
    .local v4, "passSpread":F
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weightsValidSize:F

    move/from16 v16, v0

    move/from16 v17, v3

    cmpl-float v16, v16, v17

    if-nez v16, :cond_3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weightsValidSpread:F

    move/from16 v16, v0

    move/from16 v17, v4

    cmpl-float v16, v16, v17

    if-nez v16, :cond_3

    .line 477
    .line 553
    :goto_2
    return-void

    .line 467
    .end local v3    # "pSize":F
    .end local v4    # "passSpread":F
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    move/from16 v16, v0

    move/from16 v3, v16

    .line 470
    .restart local v3    # "pSize":F
    move/from16 v16, v3

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v16, v16, v17

    if-gez v16, :cond_0

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v3, v16

    goto :goto_0

    .line 472
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 488
    .restart local v4    # "passSpread":F
    :cond_3
    move/from16 v16, v3

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    or-int/lit8 v16, v16, 0x1

    move/from16 v5, v16

    .line 489
    .local v5, "klen":I
    move/from16 v16, v5

    move/from16 v6, v16

    .line 490
    .local v6, "totalklen":I
    const/16 v16, 0x1

    move/from16 v7, v16

    .local v7, "p":I
    :goto_3
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 491
    move/from16 v16, v6

    move/from16 v17, v5

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    add-int v16, v16, v17

    move/from16 v6, v16

    .line 490
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 493
    :cond_4
    move/from16 v16, v6

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    move-object/from16 v7, v16

    .line 494
    .local v7, "ik":[D
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_4
    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 495
    move-object/from16 v16, v7

    move/from16 v17, v8

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v16, v17

    .line 494
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 503
    :cond_5
    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v3

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v8, v16

    .line 504
    .local v8, "excess":D
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_6

    .line 506
    move-object/from16 v16, v7

    const/16 v17, 0x0

    move-object/from16 v18, v7

    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v8

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    move-object/from16 v26, v18

    move/from16 v27, v19

    move-wide/from16 v28, v20

    move-wide/from16 v18, v28

    move-object/from16 v20, v26

    move/from16 v21, v27

    move-wide/from16 v22, v28

    aput-wide v22, v20, v21

    aput-wide v18, v16, v17

    .line 508
    :cond_6
    move/from16 v16, v5

    move/from16 v10, v16

    .line 509
    .local v10, "filledklen":I
    const/16 v16, 0x1

    move/from16 v11, v16

    .local v11, "p":I
    :goto_5
    move/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 510
    move/from16 v16, v10

    move/from16 v17, v5

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    add-int v16, v16, v17

    move/from16 v10, v16

    .line 511
    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v12, v16

    .line 512
    .local v12, "i":I
    :goto_6
    move/from16 v16, v12

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 513
    move-object/from16 v16, v7

    move/from16 v17, v12

    aget-wide v16, v16, v17

    move-wide/from16 v13, v16

    .line 514
    .local v13, "sum":D
    const/16 v16, 0x1

    move/from16 v15, v16

    .local v15, "k":I
    :goto_7
    move/from16 v16, v15

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 515
    move-wide/from16 v16, v13

    move-object/from16 v18, v7

    move/from16 v19, v12

    move/from16 v20, v15

    sub-int v19, v19, v20

    aget-wide v18, v18, v19

    add-double v16, v16, v18

    move-wide/from16 v13, v16

    .line 514
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 517
    :cond_7
    move-object/from16 v16, v7

    move/from16 v17, v12

    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v18, v13

    aput-wide v18, v16, v17

    .line 518
    goto :goto_6

    .line 524
    :cond_8
    move-object/from16 v16, v7

    move/from16 v17, v12

    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v18, v13

    aput-wide v18, v16, v17

    .line 525
    .line 519
    .end local v13    # "sum":D
    .end local v15    # "k":I
    :cond_9
    move/from16 v16, v12

    if-lez v16, :cond_a

    .line 520
    move-object/from16 v16, v7

    move/from16 v17, v12

    aget-wide v16, v16, v17

    move-wide/from16 v13, v16

    .line 521
    .restart local v13    # "sum":D
    const/16 v16, 0x0

    move/from16 v15, v16

    .restart local v15    # "k":I
    :goto_8
    move/from16 v16, v15

    move/from16 v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 522
    move-wide/from16 v16, v13

    move-object/from16 v18, v7

    move/from16 v19, v15

    aget-wide v18, v18, v19

    add-double v16, v16, v18

    move-wide/from16 v13, v16

    .line 521
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 509
    .end local v13    # "sum":D
    .end local v15    # "k":I
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 528
    .end local v12    # "i":I
    :cond_b
    const-wide/16 v16, 0x0

    move-wide/from16 v11, v16

    .line 529
    .local v11, "sum":D
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "i":I
    :goto_9
    move/from16 v16, v13

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 530
    move-wide/from16 v16, v11

    move-object/from16 v18, v7

    move/from16 v19, v13

    aget-wide v18, v18, v19

    add-double v16, v16, v18

    move-wide/from16 v11, v16

    .line 529
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 535
    :cond_c
    move-wide/from16 v16, v11

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v11

    sub-double v18, v18, v20

    move/from16 v20, v4

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v11, v16

    .line 537
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    if-nez v16, :cond_d

    .line 539
    sget v16, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_KERNEL_SIZE:I

    invoke-static/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getPeerSize(I)I

    move-result v16

    move/from16 v13, v16

    .line 540
    .local v13, "maxbufsize":I
    move/from16 v16, v13

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    const/16 v17, -0x4

    and-int/lit8 v16, v16, -0x4

    move/from16 v13, v16

    .line 541
    move-object/from16 v16, v2

    move/from16 v17, v13

    invoke-static/range {v17 .. v17}, Lcom/sun/scenario/effect/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    .line 543
    .end local v13    # "maxbufsize":I
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v16

    .line 544
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "i":I
    :goto_a
    move/from16 v16, v13

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 545
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move/from16 v18, v13

    aget-wide v17, v17, v18

    move-wide/from16 v19, v11

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 544
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 547
    :cond_e
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getPeerSize(I)I

    move-result v16

    move/from16 v13, v16

    .line 548
    .local v13, "limit":I
    :goto_b
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->position()I

    move-result v16

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 549
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v16

    goto :goto_b

    .line 551
    :cond_f
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v16

    .line 552
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v16

    .line 553
    goto/16 :goto_2
.end method


# virtual methods
.method public getBlurPasses()I
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public getBoxPixelSize(I)I
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move v1, p1

    .local v1, "pass":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    move v2, v4

    .line 246
    .local v2, "size":F
    move v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    move v2, v4

    .line 247
    :cond_0
    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 248
    .local v3, "boxsize":I
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->space:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 10

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 319
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getInputKernelSize(I)I

    move-result v5

    move v3, v5

    .line 320
    .local v3, "klenh":I
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getInputKernelSize(I)I

    move-result v5

    move v4, v5

    .line 321
    .local v4, "klenv":I
    move v5, v3

    move v6, v4

    or-int/2addr v5, v6

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 322
    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v2, v5

    .line 326
    move-object v5, v2

    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v7, v4

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 329
    .end local v3    # "klenh":I
    .end local v4    # "klenv":I
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getInputKernelSize(I)I
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move v1, p1

    .local v1, "pass":I
    move v6, v1

    if-nez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeH:F

    :goto_0
    move v2, v6

    .line 558
    .local v2, "size":F
    move v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v6

    .line 559
    :cond_0
    move v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 560
    .local v3, "klen":I
    const/4 v6, 0x1

    move v4, v6

    .line 561
    .local v4, "totalklen":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "p":I
    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    if-ge v6, v7, :cond_2

    .line 562
    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v6, v7

    move v4, v6

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 557
    .end local v2    # "size":F
    .end local v3    # "klen":I
    .end local v4    # "totalklen":I
    .end local v5    # "p":I
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeV:F

    goto :goto_0

    .line 564
    .restart local v2    # "size":F
    .restart local v3    # "klen":I
    .restart local v4    # "totalklen":I
    .restart local v5    # "p":I
    :cond_2
    move v6, v4

    move v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputtx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getPassKernelSize()I
    .locals 9

    .prologue
    .line 569
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v6, v1

    iget v6, v6, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    move v2, v6

    .line 570
    .local v2, "size":F
    move v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v6

    .line 571
    :cond_0
    move v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 572
    .local v3, "klen":I
    const/4 v6, 0x1

    move v4, v6

    .line 573
    .local v4, "totalklen":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "p":I
    :goto_0
    move v6, v5

    move-object v7, v1

    iget v7, v7, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    if-ge v6, v7, :cond_1

    .line 574
    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v6, v7

    move v4, v6

    .line 573
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 576
    :cond_1
    move v6, v4

    move v1, v6

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v1
.end method

.method public getPassPeer(Lcom/sun/scenario/effect/impl/Renderer;Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/impl/Renderer;",
            "Lcom/sun/scenario/effect/FilterContext;",
            ")",
            "Lcom/sun/scenario/effect/impl/EffectPeer",
            "<",
            "Lcom/sun/scenario/effect/impl/state/BoxRenderState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, p1

    .local v1, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v2, p2

    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isPassNop()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 294
    const/4 v8, 0x0

    move-object v0, v8

    .line 313
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getPassKernelSize()I

    move-result v8

    move v3, v8

    .line 297
    .local v3, "ksize":I
    move v8, v3

    invoke-static {v8}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getPeerSize(I)I

    move-result v8

    move v4, v8

    .line 298
    .local v4, "psize":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v8

    move-object v5, v8

    .line 300
    .local v5, "actype":Lcom/sun/scenario/effect/Effect$AccelType;
    sget-object v8, Lcom/sun/scenario/effect/impl/state/BoxRenderState$1;->$SwitchMap$com$sun$scenario$effect$Effect$AccelType:[I

    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/scenario/effect/Effect$AccelType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 309
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "LinearConvolveShadow"

    :goto_1
    move-object v6, v8

    .line 312
    .local v6, "name":Ljava/lang/String;
    :goto_2
    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/scenario/effect/impl/Renderer;->getPeerInstance(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v8

    move-object v7, v8

    .line 313
    .local v7, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 303
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    :pswitch_0
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->swCompatible:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spread:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 304
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "BoxShadow"

    :goto_3
    move-object v6, v8

    .line 305
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_2

    .line 304
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    const-string v8, "BoxBlur"

    goto :goto_3

    .line 309
    :cond_3
    const-string v8, "LinearConvolve"

    goto :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 9

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, p1

    .local v1, "srcdimension":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v4

    .line 420
    .local v3, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    if-nez v4, :cond_2

    .line 421
    move-object v4, v3

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getInputKernelSize(I)I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 425
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 426
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    if-nez v4, :cond_0

    .line 427
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v2, v4

    .line 428
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getInputKernelSize(I)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 430
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 432
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0

    .line 423
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_2
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getInputKernelSize(I)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    goto :goto_0
.end method

.method public getPassShadowColorComponents()[F
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->BLACK_COMPONENTS:[F

    .line 273
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0

    .line 271
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    .line 273
    invoke-virtual {v1}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v1

    goto :goto_0
.end method

.method public getPassVector()[F
    .locals 10

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v1, v6

    .line 438
    .local v1, "xoff":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v2, v6

    .line 439
    .local v2, "yoff":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->getPassKernelSize()I

    move-result v6

    move v3, v6

    .line 440
    .local v3, "ksize":I
    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 441
    .local v4, "center":I
    const/4 v6, 0x4

    new-array v6, v6, [F

    move-object v5, v6

    .line 442
    .local v5, "ret":[F
    move-object v6, v5

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    .line 443
    move-object v6, v5

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    .line 444
    move-object v6, v5

    const/4 v7, 0x2

    move v8, v4

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v1

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 445
    move-object v6, v5

    const/4 v7, 0x3

    move v8, v4

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 446
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getPassWeights()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validateWeights()V

    .line 458
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    .line 459
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getPassWeightsArrayLength()I
    .locals 3

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validateWeights()V

    .line 452
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->weights:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->resulttx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getShadowColor()Lcom/sun/scenario/effect/Color4f;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->shadowColor:Lcom/sun/scenario/effect/Color4f;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return-object v0
.end method

.method public getSpread()F
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->spread:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public isNop()Z
    .locals 3

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 582
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    if-eqz v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeH:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeV:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPassNop()Z
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 589
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    if-eqz v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->isShadow:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    return v0
.end method

.method public validatePassInput(Lcom/sun/scenario/effect/ImageData;I)Lcom/sun/scenario/effect/ImageData;
    .locals 19

    .prologue
    .line 334
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    move-object/from16 v1, p1

    .local v1, "src":Lcom/sun/scenario/effect/ImageData;
    move/from16 v2, p2

    .local v2, "pass":I
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->validatedPass:I

    .line 335
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    move-object v3, v10

    .line 336
    .local v3, "srcTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v10, v0

    const/4 v11, 0x2

    new-array v11, v11, [F

    iput-object v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    .line 337
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    move v11, v2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 338
    move v10, v2

    if-nez v10, :cond_0

    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeH:F

    :goto_0
    move v4, v10

    .line 339
    .local v4, "iSize":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 340
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->swCompatible:Z

    .line 341
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    .line 403
    :goto_1
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v10

    move-object v5, v10

    .line 404
    .local v5, "f":Lcom/sun/scenario/effect/Filterable;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x0

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    move-object v13, v5

    invoke-interface {v13}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 405
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x1

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    move-object v13, v5

    invoke-interface {v13}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 406
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    .end local v5    # "f":Lcom/sun/scenario/effect/Filterable;
    :goto_2
    return-object v0

    .line 338
    .end local v4    # "iSize":F
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/BoxRenderState;
    :cond_0
    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->inputSizeV:F

    goto :goto_0

    .line 355
    .restart local v4    # "iSize":F
    :cond_1
    move-object v10, v3

    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform([FI[FII)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .line 362
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-wide v5, v10

    .line 363
    .local v5, "srcScale":D
    move v10, v4

    float-to-double v10, v10

    move-wide v12, v5

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move v7, v10

    .line 364
    .local v7, "pSize":F
    move v10, v7

    float-to-double v10, v10

    move-wide v12, v5

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move v7, v10

    .line 365
    sget-object v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->MAX_BOX_SIZES:[I

    move-object v11, v0

    iget v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->blurPasses:I

    aget v10, v10, v11

    move v8, v10

    .line 366
    .local v8, "maxPassSize":I
    move v10, v7

    move v11, v8

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 367
    move v10, v8

    int-to-float v10, v10

    move v7, v10

    .line 368
    move v10, v8

    int-to-float v10, v10

    move v11, v4

    div-float/2addr v10, v11

    float-to-double v10, v10

    move-wide v5, v10

    .line 370
    :cond_2
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    .line 379
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x0

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    float-to-double v12, v12

    move-wide v14, v5

    div-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 380
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x1

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    float-to-double v12, v12

    move-wide v14, v5

    div-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 394
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v10

    move-object v9, v10

    .line 395
    .local v9, "srcSize":Lcom/sun/javafx/geom/Rectangle;
    move v10, v2

    if-nez v10, :cond_4

    .line 396
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v9

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    invoke-static {v11, v12}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->nearOne(FI)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v9

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 397
    invoke-static {v11, v12}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->nearZero(FI)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->swCompatible:Z

    goto/16 :goto_1

    .line 356
    .end local v5    # "srcScale":D
    .end local v7    # "pSize":F
    .end local v8    # "maxPassSize":I
    .end local v9    # "srcSize":Lcom/sun/javafx/geom/Rectangle;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 357
    .local v5, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->passSize:F

    .line 358
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v13, 0x1

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

    .line 359
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->swCompatible:Z

    .line 360
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_2

    .line 397
    .local v5, "srcScale":D
    .restart local v7    # "pSize":F
    .restart local v8    # "maxPassSize":I
    .restart local v9    # "srcSize":Lcom/sun/javafx/geom/Rectangle;
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 399
    :cond_4
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v9

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-static {v11, v12}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->nearZero(FI)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->samplevectors:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v9

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 400
    invoke-static {v11, v12}, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->nearOne(FI)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v10, Lcom/sun/scenario/effect/impl/state/BoxRenderState;->swCompatible:Z

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_4
.end method
