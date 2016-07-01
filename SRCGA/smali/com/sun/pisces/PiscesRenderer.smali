.class public final Lcom/sun/pisces/PiscesRenderer;
.super Ljava/lang/Object;
.source "PiscesRenderer.java"


# static fields
.field public static final ARC_CHORD:I = 0x1

.field public static final ARC_OPEN:I = 0x0

.field public static final ARC_PIE:I = 0x2


# instance fields
.field private nativePtr:J

.field private surface:Lcom/sun/pisces/AbstractSurface;


# direct methods
.method public constructor <init>(Lcom/sun/pisces/AbstractSurface;)V
    .locals 6

    .prologue
    .line 86
    move-object v1, p0

    .local v1, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object v2, p1

    .local v2, "surface":Lcom/sun/pisces/AbstractSurface;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/pisces/PiscesRenderer;->nativePtr:J

    .line 87
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    .line 88
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/pisces/PiscesRenderer;->initialize()V

    .line 89
    return-void
.end method

.method private checkColorRange(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "v":I
    move-object v2, p2

    .local v2, "componentName":Ljava/lang/String;
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 113
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " color component is out of range"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_1
    return-void
.end method

.method private native clearRectImpl(IIII)V
.end method

.method private native drawImageImpl(II[IIIIILcom/sun/pisces/Transform6;ZIIIIIIIIIIIIZ)V
.end method

.method private native emitAndClearAlphaRowImpl([B[IIIII)V
.end method

.method private native fillAlphaMaskImpl([BIIIIII)V
.end method

.method private native fillLCDAlphaMaskImpl([BIIIIII)V
.end method

.method private native fillRectImpl(IIII)V
.end method

.method private native initialize()V
.end method

.method private inputImageCheck(IIIII)V
    .locals 12

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "stride":I
    move/from16 v5, p5

    .local v5, "data_length":I
    move v7, v1

    if-gez v7, :cond_0

    .line 410
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "WIDTH must be positive"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 412
    :cond_0
    move v7, v2

    if-gez v7, :cond_1

    .line 413
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "HEIGHT must be positive"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 415
    :cond_1
    move v7, v3

    if-gez v7, :cond_2

    .line 416
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "OFFSET must be positive"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_2
    move v7, v4

    if-gez v7, :cond_3

    .line 419
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "STRIDE must be positive"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 421
    :cond_3
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_4

    .line 422
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "STRIDE must be >= WIDTH"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 424
    :cond_4
    const/16 v7, 0x20

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    rsub-int/lit8 v7, v8, 0x20

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 425
    .local v6, "nbits":I
    move v7, v6

    const/16 v8, 0x1f

    if-le v7, v8, :cond_5

    .line 426
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "STRIDE * HEIGHT is too large"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 428
    :cond_5
    move v7, v3

    move v8, v4

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move v8, v1

    add-int/2addr v7, v8

    move v8, v5

    if-le v7, v8, :cond_6

    .line 429
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "STRIDE * HEIGHT exceeds length of data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 431
    :cond_6
    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native setClipImpl(IIII)V
.end method

.method private native setColorImpl(IIII)V
.end method

.method private native setCompositeRuleImpl(I)V
.end method

.method private native setLCDGammaCorrectionImpl(F)V
.end method

.method private native setLinearGradientImpl(IIII[IILcom/sun/pisces/Transform6;)V
.end method

.method private native setRadialGradientImpl(IIIII[IILcom/sun/pisces/Transform6;)V
.end method

.method private native setTextureImpl(I[IIIILcom/sun/pisces/Transform6;ZZ)V
.end method


# virtual methods
.method public clearRect(IIII)V
    .locals 15

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move v9, v1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v9

    .line 321
    .local v5, "x1":I
    move v9, v2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v6, v9

    .line 322
    .local v6, "y1":I
    move v9, v1

    move v10, v3

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v10}, Lcom/sun/pisces/AbstractSurface;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v9

    .line 323
    .local v7, "x2":I
    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v10}, Lcom/sun/pisces/AbstractSurface;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v8, v9

    .line 324
    .local v8, "y2":I
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    move v13, v8

    move v14, v6

    sub-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/pisces/PiscesRenderer;->clearRectImpl(IIII)V

    .line 325
    return-void
.end method

.method public drawImage(II[IIIIILcom/sun/pisces/Transform6;ZIIIIIIIIIIIIZ)V
    .locals 47

    .prologue
    .line 392
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v2, p1

    .local v2, "imageType":I
    move/from16 v3, p2

    .local v3, "imageMode":I
    move-object/from16 v4, p3

    .local v4, "data":[I
    move/from16 v5, p4

    .local v5, "width":I
    move/from16 v6, p5

    .local v6, "height":I
    move/from16 v7, p6

    .local v7, "offset":I
    move/from16 v8, p7

    .local v8, "stride":I
    move-object/from16 v9, p8

    .local v9, "textureTransform":Lcom/sun/pisces/Transform6;
    move/from16 v10, p9

    .local v10, "repeat":Z
    move/from16 v11, p10

    .local v11, "bboxX":I
    move/from16 v12, p11

    .local v12, "bboxY":I
    move/from16 v13, p12

    .local v13, "bboxW":I
    move/from16 v14, p13

    .local v14, "bboxH":I
    move/from16 v15, p14

    .local v15, "lEdge":I
    move/from16 v16, p15

    .local v16, "rEdge":I
    move/from16 v17, p16

    .local v17, "tEdge":I
    move/from16 v18, p17

    .local v18, "bEdge":I
    move/from16 v19, p18

    .local v19, "txMin":I
    move/from16 v20, p19

    .local v20, "tyMin":I
    move/from16 v21, p20

    .local v21, "txMax":I
    move/from16 v22, p21

    .local v22, "tyMax":I
    move/from16 v23, p22

    .local v23, "hasAlpha":Z
    move-object/from16 v24, v1

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v29, v4

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    invoke-direct/range {v24 .. v29}, Lcom/sun/pisces/PiscesRenderer;->inputImageCheck(IIIII)V

    .line 393
    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v45, v22

    move/from16 v46, v23

    invoke-direct/range {v24 .. v46}, Lcom/sun/pisces/PiscesRenderer;->drawImageImpl(II[IIIIILcom/sun/pisces/Transform6;ZIIIIIIIIIIIIZ)V

    .line 399
    return-void
.end method

.method public emitAndClearAlphaRow([B[IIIII)V
    .locals 15

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object/from16 v1, p1

    .local v1, "alphaMap":[B
    move-object/from16 v2, p2

    .local v2, "alphaDeltas":[I
    move/from16 v3, p3

    .local v3, "pix_y":I
    move/from16 v4, p4

    .local v4, "pix_x_from":I
    move/from16 v5, p5

    .local v5, "pix_x_to":I
    move/from16 v6, p6

    .local v6, "rowNum":I
    move v7, v5

    move v8, v4

    sub-int/2addr v7, v8

    move-object v8, v2

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 347
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "rendering range exceeds length of data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 349
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/pisces/PiscesRenderer;->emitAndClearAlphaRowImpl([B[IIIII)V

    .line 350
    return-void
.end method

.method public fillAlphaMask([BIIIIII)V
    .locals 17

    .prologue
    .line 356
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object/from16 v1, p1

    .local v1, "mask":[B
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "offset":I
    move/from16 v7, p7

    .local v7, "stride":I
    move-object v8, v1

    if-nez v8, :cond_0

    .line 357
    new-instance v8, Ljava/lang/NullPointerException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string v10, "Mask is NULL"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 359
    :cond_0
    move-object v8, v0

    move v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    move-object v13, v1

    array-length v13, v13

    invoke-direct/range {v8 .. v13}, Lcom/sun/pisces/PiscesRenderer;->inputImageCheck(IIIII)V

    .line 360
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/PiscesRenderer;->fillAlphaMaskImpl([BIIIIII)V

    .line 361
    return-void
.end method

.method public fillLCDAlphaMask([BIIIIII)V
    .locals 17

    .prologue
    .line 376
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object/from16 v1, p1

    .local v1, "mask":[B
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "offset":I
    move/from16 v7, p7

    .local v7, "stride":I
    move-object v8, v1

    if-nez v8, :cond_0

    .line 377
    new-instance v8, Ljava/lang/NullPointerException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string v10, "Mask is NULL"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 379
    :cond_0
    move-object v8, v0

    move v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    move-object v13, v1

    array-length v13, v13

    invoke-direct/range {v8 .. v13}, Lcom/sun/pisces/PiscesRenderer;->inputImageCheck(IIIII)V

    .line 380
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/sun/pisces/PiscesRenderer;->fillLCDAlphaMaskImpl([BIIIIII)V

    .line 381
    return-void
.end method

.method public fillRect(IIII)V
    .locals 16

    .prologue
    .line 330
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move v11, v1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v5, v11

    .line 331
    .local v5, "x1":I
    move v11, v2

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v6, v11

    .line 332
    .local v6, "y1":I
    move v11, v1

    move v12, v3

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v12}, Lcom/sun/pisces/AbstractSurface;->getWidth()I

    move-result v12

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v7, v11

    .line 333
    .local v7, "x2":I
    move v11, v2

    move v12, v4

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v12}, Lcom/sun/pisces/AbstractSurface;->getHeight()I

    move-result v12

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 334
    .local v8, "y2":I
    move v11, v7

    move v12, v5

    sub-int/2addr v11, v12

    move v9, v11

    .line 335
    .local v9, "w2":I
    move v11, v8

    move v12, v6

    sub-int/2addr v11, v12

    move v10, v11

    .line 336
    .local v10, "h2":I
    move v11, v9

    if-lez v11, :cond_0

    move v11, v10

    if-lez v11, :cond_0

    .line 337
    move-object v11, v0

    move v12, v5

    move v13, v6

    move v14, v9

    move v15, v10

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/pisces/PiscesRenderer;->fillRectImpl(IIII)V

    .line 339
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/pisces/PiscesRenderer;->nativeFinalize()V

    .line 435
    return-void
.end method

.method public resetClip()V
    .locals 6

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v4}, Lcom/sun/pisces/AbstractSurface;->getWidth()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v5}, Lcom/sun/pisces/AbstractSurface;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/pisces/PiscesRenderer;->setClipImpl(IIII)V

    .line 314
    return-void
.end method

.method public setClip(IIII)V
    .locals 15

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "minX":I
    move/from16 v2, p2

    .local v2, "minY":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move v9, v1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v9

    .line 300
    .local v5, "x1":I
    move v9, v2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v6, v9

    .line 301
    .local v6, "y1":I
    move v9, v1

    move v10, v3

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v10}, Lcom/sun/pisces/AbstractSurface;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v9

    .line 302
    .local v7, "x2":I
    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/pisces/PiscesRenderer;->surface:Lcom/sun/pisces/AbstractSurface;

    invoke-virtual {v10}, Lcom/sun/pisces/AbstractSurface;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v8, v9

    .line 303
    .local v8, "y2":I
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    move v13, v8

    move v14, v6

    sub-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/pisces/PiscesRenderer;->setClipImpl(IIII)V

    .line 304
    return-void
.end method

.method public setColor(III)V
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "red":I
    move v2, p2

    .local v2, "green":I
    move v3, p3

    .local v3, "blue":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/16 v8, 0xff

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/pisces/PiscesRenderer;->setColor(IIII)V

    .line 129
    return-void
.end method

.method public setColor(IIII)V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "red":I
    move v2, p2

    .local v2, "green":I
    move v3, p3

    .local v3, "blue":I
    move v4, p4

    .local v4, "alpha":I
    move-object v5, v0

    move v6, v1

    const-string v7, "RED"

    invoke-direct {v5, v6, v7}, Lcom/sun/pisces/PiscesRenderer;->checkColorRange(ILjava/lang/String;)V

    .line 103
    move-object v5, v0

    move v6, v2

    const-string v7, "GREEN"

    invoke-direct {v5, v6, v7}, Lcom/sun/pisces/PiscesRenderer;->checkColorRange(ILjava/lang/String;)V

    .line 104
    move-object v5, v0

    move v6, v3

    const-string v7, "BLUE"

    invoke-direct {v5, v6, v7}, Lcom/sun/pisces/PiscesRenderer;->checkColorRange(ILjava/lang/String;)V

    .line 105
    move-object v5, v0

    move v6, v4

    const-string v7, "ALPHA"

    invoke-direct {v5, v6, v7}, Lcom/sun/pisces/PiscesRenderer;->checkColorRange(ILjava/lang/String;)V

    .line 106
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/pisces/PiscesRenderer;->setColorImpl(IIII)V

    .line 107
    return-void
.end method

.method public setCompositeRule(I)V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "compositeRule":I
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid value for Composite-Rule"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/pisces/PiscesRenderer;->setCompositeRuleImpl(I)V

    .line 144
    return-void
.end method

.method public setLCDGammaCorrection(F)V
    .locals 6

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move v1, p1

    .local v1, "gamma":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 367
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Gamma must be greater than zero"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/pisces/PiscesRenderer;->setLCDGammaCorrectionImpl(F)V

    .line 370
    return-void
.end method

.method public setLinearGradient(IIIIIII)V
    .locals 21

    .prologue
    .line 219
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "x0":I
    move/from16 v2, p2

    .local v2, "y0":I
    move/from16 v3, p3

    .local v3, "color0":I
    move/from16 v4, p4

    .local v4, "x1":I
    move/from16 v5, p5

    .local v5, "y1":I
    move/from16 v6, p6

    .local v6, "color1":I
    move/from16 v7, p7

    .local v7, "cycleMethod":I
    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    move-object v8, v11

    .line 220
    .local v8, "fractions":[I
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x0

    move v14, v3

    aput v14, v12, v13

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x1

    move v14, v6

    aput v14, v12, v13

    move-object v9, v11

    .line 221
    .local v9, "rgba":[I
    new-instance v11, Lcom/sun/pisces/Transform6;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/high16 v13, 0x10000

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x10000

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    move-object v10, v11

    .line 222
    .local v10, "ident":Lcom/sun/pisces/Transform6;
    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v4

    move v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/sun/pisces/PiscesRenderer;->setLinearGradient(IIII[I[IILcom/sun/pisces/Transform6;)V

    .line 223
    return-void

    .line 219
    :array_0
    .array-data 4
        0x0
        0x10000
    .end array-data
.end method

.method public setLinearGradient(IIIILcom/sun/pisces/GradientColorMap;Lcom/sun/pisces/Transform6;)V
    .locals 23

    .prologue
    .line 194
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "x0":I
    move/from16 v2, p2

    .local v2, "y0":I
    move/from16 v3, p3

    .local v3, "x1":I
    move/from16 v4, p4

    .local v4, "y1":I
    move-object/from16 v5, p5

    .local v5, "gradientColorMap":Lcom/sun/pisces/GradientColorMap;
    move-object/from16 v6, p6

    .local v6, "gradientTransform":Lcom/sun/pisces/Transform6;
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    iget-object v12, v12, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move-object v13, v5

    iget v13, v13, Lcom/sun/pisces/GradientColorMap;->cycleMethod:I

    move-object v14, v6

    if-nez v14, :cond_0

    new-instance v14, Lcom/sun/pisces/Transform6;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/high16 v16, 0x10000

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    :goto_0
    invoke-direct/range {v7 .. v14}, Lcom/sun/pisces/PiscesRenderer;->setLinearGradientImpl(IIII[IILcom/sun/pisces/Transform6;)V

    .line 198
    return-void

    .line 194
    :cond_0
    move-object v14, v6

    goto :goto_0
.end method

.method public setLinearGradient(IIII[I[IILcom/sun/pisces/Transform6;)V
    .locals 26

    .prologue
    .line 172
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "x0":I
    move/from16 v2, p2

    .local v2, "y0":I
    move/from16 v3, p3

    .local v3, "x1":I
    move/from16 v4, p4

    .local v4, "y1":I
    move-object/from16 v5, p5

    .local v5, "fractions":[I
    move-object/from16 v6, p6

    .local v6, "rgba":[I
    move/from16 v7, p7

    .local v7, "cycleMethod":I
    move-object/from16 v8, p8

    .local v8, "gradientTransform":Lcom/sun/pisces/Transform6;
    new-instance v10, Lcom/sun/pisces/GradientColorMap;

    move-object/from16 v25, v10

    move-object/from16 v10, v25

    move-object/from16 v11, v25

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/pisces/GradientColorMap;-><init>([I[II)V

    move-object v9, v10

    .line 173
    .local v9, "gradientColorMap":Lcom/sun/pisces/GradientColorMap;
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v9

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move/from16 v16, v7

    move-object/from16 v17, v8

    if-nez v17, :cond_0

    new-instance v17, Lcom/sun/pisces/Transform6;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x10000

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v24}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    :goto_0
    invoke-direct/range {v10 .. v17}, Lcom/sun/pisces/PiscesRenderer;->setLinearGradientImpl(IIII[IILcom/sun/pisces/Transform6;)V

    .line 176
    return-void

    .line 173
    :cond_0
    move-object/from16 v17, v8

    goto :goto_0
.end method

.method public setRadialGradient(IIIIILcom/sun/pisces/GradientColorMap;Lcom/sun/pisces/Transform6;)V
    .locals 25

    .prologue
    .line 277
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "cx":I
    move/from16 v2, p2

    .local v2, "cy":I
    move/from16 v3, p3

    .local v3, "fx":I
    move/from16 v4, p4

    .local v4, "fy":I
    move/from16 v5, p5

    .local v5, "radius":I
    move-object/from16 v6, p6

    .local v6, "gradientColorMap":Lcom/sun/pisces/GradientColorMap;
    move-object/from16 v7, p7

    .local v7, "gradientTransform":Lcom/sun/pisces/Transform6;
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    iget-object v14, v14, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move-object v15, v6

    iget v15, v15, Lcom/sun/pisces/GradientColorMap;->cycleMethod:I

    move-object/from16 v16, v7

    if-nez v16, :cond_0

    new-instance v16, Lcom/sun/pisces/Transform6;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const/high16 v18, 0x10000

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x10000

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    :goto_0
    invoke-direct/range {v8 .. v16}, Lcom/sun/pisces/PiscesRenderer;->setRadialGradientImpl(IIIII[IILcom/sun/pisces/Transform6;)V

    .line 281
    return-void

    .line 277
    :cond_0
    move-object/from16 v16, v7

    goto :goto_0
.end method

.method public setRadialGradient(IIIII[I[IILcom/sun/pisces/Transform6;)V
    .locals 29

    .prologue
    .line 253
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v2, p1

    .local v2, "cx":I
    move/from16 v3, p2

    .local v3, "cy":I
    move/from16 v4, p3

    .local v4, "fx":I
    move/from16 v5, p4

    .local v5, "fy":I
    move/from16 v6, p5

    .local v6, "radius":I
    move-object/from16 v7, p6

    .local v7, "fractions":[I
    move-object/from16 v8, p7

    .local v8, "rgba":[I
    move/from16 v9, p8

    .local v9, "cycleMethod":I
    move-object/from16 v10, p9

    .local v10, "gradientTransform":Lcom/sun/pisces/Transform6;
    new-instance v12, Lcom/sun/pisces/GradientColorMap;

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v9

    invoke-direct/range {v13 .. v16}, Lcom/sun/pisces/GradientColorMap;-><init>([I[II)V

    move-object v11, v12

    .line 254
    .local v11, "gradientColorMap":Lcom/sun/pisces/GradientColorMap;
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move-object/from16 v18, v0

    move/from16 v19, v9

    move-object/from16 v20, v10

    if-nez v20, :cond_0

    new-instance v20, Lcom/sun/pisces/Transform6;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const/high16 v22, 0x10000

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x10000

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v21 .. v27}, Lcom/sun/pisces/Transform6;-><init>(IIIIII)V

    :goto_0
    invoke-direct/range {v12 .. v20}, Lcom/sun/pisces/PiscesRenderer;->setRadialGradientImpl(IIIII[IILcom/sun/pisces/Transform6;)V

    .line 257
    return-void

    .line 254
    :cond_0
    move-object/from16 v20, v10

    goto :goto_0
.end method

.method public setTexture(I[IIIILcom/sun/pisces/Transform6;ZZ)V
    .locals 18

    .prologue
    .line 286
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/PiscesRenderer;
    move/from16 v1, p1

    .local v1, "imageType":I
    move-object/from16 v2, p2

    .local v2, "data":[I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "stride":I
    move-object/from16 v6, p6

    .local v6, "textureTransform":Lcom/sun/pisces/Transform6;
    move/from16 v7, p7

    .local v7, "repeat":Z
    move/from16 v8, p8

    .local v8, "hasAlpha":Z
    move-object v9, v0

    move v10, v3

    move v11, v4

    const/4 v12, 0x0

    move v13, v5

    move-object v14, v2

    array-length v14, v14

    invoke-direct/range {v9 .. v14}, Lcom/sun/pisces/PiscesRenderer;->inputImageCheck(IIIII)V

    .line 287
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/sun/pisces/PiscesRenderer;->setTextureImpl(I[IIIILcom/sun/pisces/Transform6;ZZ)V

    .line 288
    return-void
.end method
