.class abstract Lcom/sun/prism/impl/paint/MultipleGradientContext;
.super Ljava/lang/Object;
.source "MultipleGradientContext.java"


# static fields
.field protected static final GRADIENT_SIZE:I = 0x100

.field protected static final GRADIENT_SIZE_INDEX:I = 0xff

.field private static final MAX_GRADIENT_ARRAY_SIZE:I = 0x1388


# instance fields
.field protected a00:F

.field protected a01:F

.field protected a02:F

.field protected a10:F

.field protected a11:F

.field protected a12:F

.field protected cycleMethod:I

.field protected fastGradientArraySize:I

.field private fractions:[F

.field protected gradient:[I

.field private gradients:[[I

.field protected isSimpleLookup:Z

.field private normalizedIntervals:[F

.field private transparencyTest:I


# direct methods
.method protected constructor <init>(Lcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;[F[Lcom/sun/prism/paint/Color;I)V
    .locals 13

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move-object v2, p1

    .local v2, "mgp":Lcom/sun/prism/paint/Gradient;
    move-object v3, p2

    .local v3, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "fractions":[F
    move-object/from16 v5, p4

    .local v5, "colors":[Lcom/sun/prism/paint/Color;
    move/from16 v6, p5

    .local v6, "cycleMethod":I
    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 108
    move-object v9, v3

    if-nez v9, :cond_0

    .line 109
    new-instance v9, Ljava/lang/NullPointerException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Transform cannot be null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 118
    :cond_0
    move-object v9, v3

    :try_start_0
    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->createInverse()Lcom/sun/javafx/geom/transform/BaseTransform;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v7, v9

    .line 123
    .line 124
    .local v7, "tInv":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a00:F

    .line 125
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a10:F

    .line 126
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a01:F

    .line 127
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a11:F

    .line 128
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a02:F

    .line 129
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->a12:F

    .line 132
    move-object v9, v1

    move v10, v6

    iput v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->cycleMethod:I

    .line 135
    move-object v9, v1

    move-object v10, v4

    iput-object v10, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    .line 137
    move-object v9, v1

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->calculateLookupData([Lcom/sun/prism/paint/Color;)V

    .line 173
    return-void

    .line 119
    .end local v7    # "tInv":Lcom/sun/javafx/geom/transform/BaseTransform;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 122
    .local v8, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v9

    .restart local v7    # "tInv":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_0
.end method

.method private calculateLookupData([Lcom/sun/prism/paint/Color;)V
    .locals 11

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move-object v1, p1

    .local v1, "colors":[Lcom/sun/prism/paint/Color;
    move-object v6, v1

    move-object v2, v6

    .line 184
    .local v2, "normalizedColors":[Lcom/sun/prism/paint/Color;
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [F

    iput-object v7, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    .line 187
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 189
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    move v10, v3

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v6, v0

    const/high16 v7, -0x1000000

    iput v7, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    .line 196
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    array-length v7, v7

    new-array v7, v7, [[I

    iput-object v7, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    .line 199
    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v6

    .line 200
    .local v3, "Imin":F
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 201
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v8, v4

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v7, v4

    aget v6, v6, v7

    :goto_2
    move v3, v6

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    :cond_1
    move v6, v3

    goto :goto_2

    .line 210
    :cond_2
    const/4 v6, 0x0

    move v4, v6

    .line 211
    .local v4, "estimatedSize":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_3
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 212
    move v6, v4

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v8, v5

    aget v7, v7, v8

    move v8, v3

    div-float/2addr v7, v8

    const/high16 v8, 0x43800000    # 256.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 215
    :cond_3
    move v6, v4

    const/16 v7, 0x1388

    if-le v6, v7, :cond_4

    .line 217
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->calculateMultipleArrayGradient([Lcom/sun/prism/paint/Color;)V

    .line 222
    :goto_4
    return-void

    .line 220
    :cond_4
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->calculateSingleArrayGradient([Lcom/sun/prism/paint/Color;F)V

    goto :goto_4
.end method

.method private calculateMultipleArrayGradient([Lcom/sun/prism/paint/Color;)V
    .locals 11

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move-object v1, p1

    .local v1, "colors":[Lcom/sun/prism/paint/Color;
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->isSimpleLookup:Z

    .line 317
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 320
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v6, v4

    const/16 v7, 0x100

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 323
    move-object v5, v1

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v5

    move v2, v5

    .line 324
    .local v2, "rgb1":I
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v5

    move v3, v5

    .line 327
    .local v3, "rgb2":I
    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v9, v4

    aget-object v8, v8, v9

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->interpolate(II[I)V

    .line 331
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    move v7, v2

    and-int/2addr v6, v7

    iput v6, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    .line 332
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    move v7, v3

    and-int/2addr v6, v7

    iput v6, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "rgb1":I
    .end local v3    # "rgb2":I
    :cond_0
    return-void
.end method

.method private calculateSingleArrayGradient([Lcom/sun/prism/paint/Color;F)V
    .locals 15

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move-object/from16 v1, p1

    .local v1, "colors":[Lcom/sun/prism/paint/Color;
    move/from16 v2, p2

    .local v2, "Imin":F
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->isSimpleLookup:Z

    .line 255
    const/4 v8, 0x1

    move v5, v8

    .line 258
    .local v5, "gradientsTot":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 261
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v9, v6

    aget v8, v8, v9

    move v9, v2

    div-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v7, v8

    .line 262
    .local v7, "nGradients":I
    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    .line 263
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v9, v6

    move v10, v7

    new-array v10, v10, [I

    aput-object v10, v8, v9

    .line 266
    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v8

    move v3, v8

    .line 267
    .local v3, "rgb1":I
    move-object v8, v1

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v8

    move v4, v8

    .line 270
    .local v4, "rgb2":I
    move-object v8, v0

    move v9, v3

    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v12, v6

    aget-object v11, v11, v12

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/prism/impl/paint/MultipleGradientContext;->interpolate(II[I)V

    .line 274
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    move v10, v3

    and-int/2addr v9, v10

    iput v9, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    .line 275
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    move v10, v4

    and-int/2addr v9, v10

    iput v9, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->transparencyTest:I

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "rgb1":I
    .end local v4    # "rgb2":I
    .end local v7    # "nGradients":I
    :cond_0
    move-object v8, v0

    move v9, v5

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    .line 280
    const/4 v8, 0x0

    move v6, v8

    .line 281
    .local v6, "curOffset":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 282
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v9, v7

    aget-object v8, v8, v9

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v13, v7

    aget-object v12, v12, v13

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v10, v7

    aget-object v9, v9, v10

    array-length v9, v9

    add-int/2addr v8, v9

    move v6, v8

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 286
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v1

    move-object v11, v1

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/sun/prism/paint/Color;->getIntArgbPre()I

    move-result v10

    aput v10, v8, v9

    .line 288
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fastGradientArraySize:I

    .line 289
    return-void
.end method

.method private interpolate(II[I)V
    .locals 24

    .prologue
    .line 349
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move/from16 v4, p1

    .local v4, "rgb1":I
    move/from16 v5, p2

    .local v5, "rgb2":I
    move-object/from16 v6, p3

    .local v6, "output":[I
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 352
    .local v15, "stepSize":F
    move/from16 v17, v4

    const/16 v18, 0x18

    shr-int/lit8 v17, v17, 0x18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v7, v17

    .line 353
    .local v7, "a1":I
    move/from16 v17, v4

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v8, v17

    .line 354
    .local v8, "r1":I
    move/from16 v17, v4

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v9, v17

    .line 355
    .local v9, "g1":I
    move/from16 v17, v4

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v10, v17

    .line 358
    .local v10, "b1":I
    move/from16 v17, v5

    const/16 v18, 0x18

    shr-int/lit8 v17, v17, 0x18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v7

    sub-int v17, v17, v18

    move/from16 v11, v17

    .line 359
    .local v11, "da":I
    move/from16 v17, v5

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v8

    sub-int v17, v17, v18

    move/from16 v12, v17

    .line 360
    .local v12, "dr":I
    move/from16 v17, v5

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v13, v17

    .line 361
    .local v13, "dg":I
    move/from16 v17, v5

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v14, v17

    .line 366
    .local v14, "db":I
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "i":I
    :goto_0
    move/from16 v17, v16

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 367
    move-object/from16 v17, v6

    move/from16 v18, v16

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v11

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x18

    shl-int/lit8 v19, v19, 0x18

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v16

    move/from16 v22, v12

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v15

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v16

    move/from16 v22, v13

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v15

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x8

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v16

    move/from16 v22, v14

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v15

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 366
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract fillRaster([IIIIIII)V
.end method

.method protected final indexIntoGradientsArrays(F)I
    .locals 9

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    move v1, p1

    .local v1, "position":F
    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->cycleMethod:I

    if-nez v5, :cond_2

    .line 388
    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 390
    const/high16 v5, 0x3f800000    # 1.0f

    move v1, v5

    .line 425
    :cond_0
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->isSimpleLookup:Z

    if-eqz v5, :cond_5

    .line 427
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradient:[I

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fastGradientArraySize:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aget v5, v5, v6

    move v0, v5

    .line 450
    .end local v0    # "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    :goto_1
    return v0

    .line 391
    .restart local v0    # "this":Lcom/sun/prism/impl/paint/MultipleGradientContext;
    :cond_1
    move v5, v1

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 393
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 395
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->cycleMethod:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 398
    move v5, v1

    move v6, v1

    float-to-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v1, v5

    .line 401
    move v5, v1

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 403
    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    move v1, v5

    goto :goto_0

    .line 406
    :cond_3
    move v5, v1

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 408
    move v5, v1

    neg-float v5, v5

    move v1, v5

    .line 412
    :cond_4
    move v5, v1

    float-to-int v5, v5

    move v2, v5

    .line 415
    .local v2, "part":I
    move v5, v1

    move v6, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v1, v5

    .line 417
    move v5, v2

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 419
    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v1

    sub-float/2addr v5, v6

    move v1, v5

    goto :goto_0

    .line 431
    .end local v2    # "part":I
    :cond_5
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 432
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    goto :goto_1

    .line 436
    :cond_6
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_2
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 437
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 439
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->fractions:[F

    move v7, v2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    move v3, v5

    .line 442
    .local v3, "delta":F
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->normalizedIntervals:[F

    move v7, v2

    aget v6, v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 445
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move v6, v2

    aget-object v5, v5, v6

    move v6, v4

    aget v5, v5, v6

    move v0, v5

    goto/16 :goto_1

    .line 436
    .end local v3    # "delta":F
    .end local v4    # "index":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 450
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/paint/MultipleGradientContext;->gradients:[[I

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    const/16 v6, 0xff

    aget v5, v5, v6

    move v0, v5

    goto/16 :goto_1
.end method
