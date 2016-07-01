.class final Lcom/sun/prism/impl/paint/LinearGradientContext;
.super Lcom/sun/prism/impl/paint/MultipleGradientContext;
.source "LinearGradientContext.java"


# instance fields
.field private dgdX:F

.field private dgdY:F

.field private gc:F


# direct methods
.method constructor <init>(Lcom/sun/prism/paint/LinearGradient;Lcom/sun/javafx/geom/transform/BaseTransform;FFFF[F[Lcom/sun/prism/paint/Color;I)V
    .locals 23

    .prologue
    .line 71
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/paint/LinearGradientContext;
    move-object/from16 v3, p1

    .local v3, "paint":Lcom/sun/prism/paint/LinearGradient;
    move-object/from16 v4, p2

    .local v4, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p3

    .local v5, "startx":F
    move/from16 v6, p4

    .local v6, "starty":F
    move/from16 v7, p5

    .local v7, "endx":F
    move/from16 v8, p6

    .local v8, "endy":F
    move-object/from16 v9, p7

    .local v9, "fractions":[F
    move-object/from16 v10, p8

    .local v10, "colors":[Lcom/sun/prism/paint/Color;
    move/from16 v11, p9

    .local v11, "cycleMethod":I
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    invoke-direct/range {v17 .. v22}, Lcom/sun/prism/impl/paint/MultipleGradientContext;-><init>(Lcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;[F[Lcom/sun/prism/paint/Color;I)V

    .line 83
    move/from16 v17, v7

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 84
    .local v12, "dx":F
    move/from16 v17, v8

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 85
    .local v13, "dy":F
    move/from16 v17, v12

    move/from16 v18, v12

    mul-float v17, v17, v18

    move/from16 v18, v13

    move/from16 v19, v13

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 88
    .local v14, "dSq":F
    move/from16 v17, v12

    move/from16 v18, v14

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 89
    .local v15, "constX":F
    move/from16 v17, v13

    move/from16 v18, v14

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 92
    .local v16, "constY":F
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a00:F

    move/from16 v18, v0

    move/from16 v19, v15

    mul-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a10:F

    move/from16 v19, v0

    move/from16 v20, v16

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/paint/LinearGradientContext;->dgdX:F

    .line 94
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a01:F

    move/from16 v18, v0

    move/from16 v19, v15

    mul-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a11:F

    move/from16 v19, v0

    move/from16 v20, v16

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/paint/LinearGradientContext;->dgdY:F

    .line 97
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a02:F

    move/from16 v18, v0

    move/from16 v19, v5

    sub-float v18, v18, v19

    move/from16 v19, v15

    mul-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/paint/LinearGradientContext;->a12:F

    move/from16 v19, v0

    move/from16 v20, v6

    sub-float v19, v19, v20

    move/from16 v20, v16

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/paint/LinearGradientContext;->gc:F

    .line 98
    return-void
.end method


# virtual methods
.method protected fillRaster([IIIIIII)V
    .locals 16

    .prologue
    .line 112
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/paint/LinearGradientContext;
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
    const/4 v12, 0x0

    move v8, v12

    .line 115
    .local v8, "g":F
    move v12, v2

    move v13, v6

    add-int/2addr v12, v13

    move v9, v12

    .line 118
    .local v9, "rowLimit":I
    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/impl/paint/LinearGradientContext;->dgdX:F

    move v13, v4

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/paint/LinearGradientContext;->gc:F

    add-float/2addr v12, v13

    move v10, v12

    .line 120
    .local v10, "initConst":F
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_0
    move v12, v11

    move v13, v7

    if-ge v12, v13, :cond_1

    .line 123
    move v12, v10

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/paint/LinearGradientContext;->dgdY:F

    move v14, v5

    move v15, v11

    add-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v8, v12

    .line 125
    :goto_1
    move v12, v2

    move v13, v9

    if-ge v12, v13, :cond_0

    .line 127
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    move-object v14, v0

    move v15, v8

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/paint/LinearGradientContext;->indexIntoGradientsArrays(F)I

    move-result v14

    aput v14, v12, v13

    .line 130
    move v12, v8

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/paint/LinearGradientContext;->dgdX:F

    add-float/2addr v12, v13

    move v8, v12

    goto :goto_1

    .line 134
    :cond_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 137
    move v12, v2

    move v13, v6

    add-int/2addr v12, v13

    move v9, v12

    .line 120
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method
