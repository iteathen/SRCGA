.class public final Lcom/sun/pisces/GradientColorMap;
.super Ljava/lang/Object;
.source "GradientColorMap.java"


# static fields
.field public static final CYCLE_NONE:I = 0x0

.field public static final CYCLE_REFLECT:I = 0x2

.field public static final CYCLE_REPEAT:I = 0x1

.field private static final LG_RAMP_SIZE:I = 0x8

.field private static final RAMP_SIZE:I = 0x100


# instance fields
.field colors:[I

.field cycleMethod:I

.field fractions:[I

.field rgba:[I


# direct methods
.method constructor <init>([I[II)V
    .locals 12

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/GradientColorMap;
    move-object v1, p1

    .local v1, "fractions":[I
    move-object v2, p2

    .local v2, "rgba":[I
    move v3, p3

    .local v3, "cycleMethod":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    .line 60
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    .line 61
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/pisces/GradientColorMap;->colors:[I

    .line 64
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/pisces/GradientColorMap;->cycleMethod:I

    .line 66
    move-object v7, v1

    array-length v7, v7

    move v4, v7

    .line 67
    .local v4, "numStops":I
    move-object v7, v1

    const/4 v8, 0x0

    aget v7, v7, v8

    if-eqz v7, :cond_0

    .line 68
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v5, v7

    .line 69
    .local v5, "nfractions":[I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v6, v7

    .line 70
    .local v6, "nrgba":[I
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x1

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x1

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    move-object v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 73
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 74
    move-object v7, v5

    move-object v1, v7

    .line 75
    move-object v7, v6

    move-object v2, v7

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 79
    .end local v5    # "nfractions":[I
    .end local v6    # "nrgba":[I
    :cond_0
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    const/high16 v8, 0x10000

    if-eq v7, v8, :cond_1

    .line 80
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v5, v7

    .line 81
    .restart local v5    # "nfractions":[I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    move-object v6, v7

    .line 82
    .restart local v6    # "nrgba":[I
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object v7, v5

    move v8, v4

    const/high16 v9, 0x10000

    aput v9, v7, v8

    .line 85
    move-object v7, v6

    move v8, v4

    move-object v9, v2

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 86
    move-object v7, v5

    move-object v1, v7

    .line 87
    move-object v7, v6

    move-object v2, v7

    .line 90
    .end local v5    # "nfractions":[I
    .end local v6    # "nrgba":[I
    :cond_1
    move-object v7, v0

    move-object v8, v1

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v7, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    .line 91
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    const/4 v10, 0x0

    move-object v11, v1

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object v7, v0

    move-object v8, v2

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v7, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    .line 93
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    const/4 v10, 0x0

    move-object v11, v2

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/pisces/GradientColorMap;->createRamp()V

    .line 96
    return-void
.end method

.method private accumColor(I[I[I[I[I[I[I[I[I)V
    .locals 23

    .prologue
    .line 141
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/GradientColorMap;
    move/from16 v1, p1

    .local v1, "frac":I
    move-object/from16 v2, p2

    .local v2, "r":[I
    move-object/from16 v3, p3

    .local v3, "g":[I
    move-object/from16 v4, p4

    .local v4, "b":[I
    move-object/from16 v5, p5

    .local v5, "a":[I
    move-object/from16 v6, p6

    .local v6, "red":[I
    move-object/from16 v7, p7

    .local v7, "green":[I
    move-object/from16 v8, p8

    .local v8, "blue":[I
    move-object/from16 v9, p9

    .local v9, "alpha":[I
    move-object v12, v0

    move v13, v1

    invoke-direct {v12, v13}, Lcom/sun/pisces/GradientColorMap;->findStop(I)I

    move-result v12

    move v10, v12

    .line 143
    .local v10, "stop":I
    move v12, v1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move v1, v12

    .line 144
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move v13, v10

    aget v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move v11, v12

    .line 146
    .local v11, "delta":I
    move-object v12, v6

    const/4 v13, 0x0

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v21

    move/from16 v15, v22

    aget v14, v14, v15

    move-object v15, v2

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v10

    aget v17, v17, v18

    move-object/from16 v18, v2

    move/from16 v19, v10

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    mul-int v16, v16, v17

    move/from16 v17, v11

    div-int v16, v16, v17

    add-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 147
    move-object v12, v7

    const/4 v13, 0x0

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v21

    move/from16 v15, v22

    aget v14, v14, v15

    move-object v15, v3

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v10

    aget v17, v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v10

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    mul-int v16, v16, v17

    move/from16 v17, v11

    div-int v16, v16, v17

    add-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 148
    move-object v12, v8

    const/4 v13, 0x0

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v21

    move/from16 v15, v22

    aget v14, v14, v15

    move-object v15, v4

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v1

    move-object/from16 v17, v4

    move/from16 v18, v10

    aget v17, v17, v18

    move-object/from16 v18, v4

    move/from16 v19, v10

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    mul-int v16, v16, v17

    move/from16 v17, v11

    div-int v16, v16, v17

    add-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 149
    move-object v12, v9

    const/4 v13, 0x0

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v14, v21

    move/from16 v15, v22

    aget v14, v14, v15

    move-object v15, v5

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v1

    move-object/from16 v17, v5

    move/from16 v18, v10

    aget v17, v17, v18

    move-object/from16 v18, v5

    move/from16 v19, v10

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    mul-int v16, v16, v17

    move/from16 v17, v11

    div-int v16, v16, v17

    add-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 150
    return-void
.end method

.method private createRamp()V
    .locals 28

    .prologue
    .line 179
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/pisces/GradientColorMap;
    move-object v13, v0

    const/16 v14, 0x100

    new-array v14, v14, [I

    iput-object v14, v13, Lcom/sun/pisces/GradientColorMap;->colors:[I

    .line 181
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object v1, v13

    .line 182
    .local v1, "alpha":[I
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object v2, v13

    .line 183
    .local v2, "red":[I
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object v3, v13

    .line 184
    .local v3, "green":[I
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object v4, v13

    .line 186
    .local v4, "blue":[I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    array-length v13, v13

    move v5, v13

    .line 187
    .local v5, "numStops":I
    move v13, v5

    new-array v13, v13, [I

    move-object v6, v13

    .line 188
    .local v6, "a":[I
    move v13, v5

    new-array v13, v13, [I

    move-object v7, v13

    .line 189
    .local v7, "r":[I
    move v13, v5

    new-array v13, v13, [I

    move-object v8, v13

    .line 190
    .local v8, "g":[I
    move v13, v5

    new-array v13, v13, [I

    move-object v9, v13

    .line 192
    .local v9, "b":[I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_0
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_0

    .line 193
    move-object v13, v6

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    move/from16 v16, v10

    aget v15, v15, v16

    const/16 v16, 0x18

    shr-int/lit8 v15, v15, 0x18

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 194
    move-object v13, v7

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    move/from16 v16, v10

    aget v15, v15, v16

    const/16 v16, 0x10

    shr-int/lit8 v15, v15, 0x10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 195
    move-object v13, v8

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    move/from16 v16, v10

    aget v15, v15, v16

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 196
    move-object v13, v9

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    move/from16 v16, v10

    aget v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 192
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const/16 v13, 0xff

    move v10, v13

    .line 200
    .local v10, "lastColorIndex":I
    const/16 v13, 0x8

    move v11, v13

    .line 202
    .local v11, "shift":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->colors:[I

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 203
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/pisces/GradientColorMap;->rgba:[I

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 205
    const/4 v13, 0x1

    move v12, v13

    .local v12, "i":I
    :goto_1
    move v13, v12

    move v14, v10

    if-ge v13, v14, :cond_1

    .line 206
    move-object v13, v2

    const/4 v14, 0x0

    move-object v15, v3

    const/16 v16, 0x0

    move-object/from16 v17, v4

    const/16 v18, 0x0

    move-object/from16 v19, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v25, v19

    move/from16 v26, v20

    move/from16 v27, v21

    move/from16 v19, v27

    move-object/from16 v20, v25

    move/from16 v21, v26

    move/from16 v22, v27

    aput v22, v20, v21

    move-object/from16 v25, v17

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v17, v27

    move-object/from16 v18, v25

    move/from16 v19, v26

    move/from16 v20, v27

    aput v20, v18, v19

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v15, v27

    move-object/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    aput v18, v16, v17

    aput v15, v13, v14

    .line 207
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/pisces/GradientColorMap;->colors:[I

    move v14, v12

    move-object v15, v0

    move/from16 v16, v12

    move/from16 v17, v11

    shl-int v16, v16, v17

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    invoke-direct/range {v15 .. v24}, Lcom/sun/pisces/GradientColorMap;->getColorAA(I[I[I[I[I[I[I[I[I)I

    move-result v15

    aput v15, v13, v14

    .line 205
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 211
    :cond_1
    return-void
.end method

.method private findStop(I)I
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/GradientColorMap;
    move v1, p1

    .local v1, "frac":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    array-length v4, v4

    move v2, v4

    .line 129
    .local v2, "numStops":I
    const/4 v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move v5, v3

    aget v4, v4, v5

    move v5, v1

    if-le v4, v5, :cond_0

    .line 131
    move v4, v3

    move v0, v4

    .line 135
    .end local v0    # "this":Lcom/sun/pisces/GradientColorMap;
    :goto_1
    return v0

    .line 129
    .restart local v0    # "this":Lcom/sun/pisces/GradientColorMap;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method private getColorAA(I[I[I[I[I[I[I[I[I)I
    .locals 30

    .prologue
    .line 155
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/pisces/GradientColorMap;
    move/from16 v3, p1

    .local v3, "frac":I
    move-object/from16 v4, p2

    .local v4, "r":[I
    move-object/from16 v5, p3

    .local v5, "g":[I
    move-object/from16 v6, p4

    .local v6, "b":[I
    move-object/from16 v7, p5

    .local v7, "a":[I
    move-object/from16 v8, p6

    .local v8, "red":[I
    move-object/from16 v9, p7

    .local v9, "green":[I
    move-object/from16 v10, p8

    .local v10, "blue":[I
    move-object/from16 v11, p9

    .local v11, "alpha":[I
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/pisces/GradientColorMap;->findStop(I)I

    move-result v18

    move/from16 v12, v18

    .line 156
    .local v12, "stop":I
    const/16 v18, 0xc0

    move/from16 v13, v18

    .line 157
    .local v13, "delta":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move-object/from16 v18, v0

    move/from16 v19, v12

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v13

    sub-int v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/sun/pisces/GradientColorMap;->pad(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v13

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/sun/pisces/GradientColorMap;->pad(I)I

    move-result v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/pisces/GradientColorMap;->fractions:[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 159
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 161
    :cond_0
    const/16 v18, 0x40

    move/from16 v14, v18

    .line 162
    .local v14, "step":I
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 164
    .local v15, "total":I
    move/from16 v18, v13

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_0
    move/from16 v18, v16

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 165
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v16

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/sun/pisces/GradientColorMap;->pad(I)I

    move-result v18

    move/from16 v17, v18

    .line 166
    .local v17, "f":I
    move-object/from16 v18, v2

    move/from16 v19, v17

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    invoke-direct/range {v18 .. v27}, Lcom/sun/pisces/GradientColorMap;->accumColor(I[I[I[I[I[I[I[I[I)V

    .line 167
    add-int/lit8 v15, v15, 0x1

    .line 164
    move/from16 v18, v16

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v16, v18

    goto :goto_0

    .line 170
    .end local v17    # "f":I
    :cond_1
    move-object/from16 v18, v11

    const/16 v19, 0x0

    move-object/from16 v28, v18

    move/from16 v29, v19

    move-object/from16 v18, v28

    move/from16 v19, v29

    move-object/from16 v20, v28

    move/from16 v21, v29

    aget v20, v20, v21

    move/from16 v21, v15

    div-int v20, v20, v21

    aput v20, v18, v19

    .line 171
    move-object/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v28, v18

    move/from16 v29, v19

    move-object/from16 v18, v28

    move/from16 v19, v29

    move-object/from16 v20, v28

    move/from16 v21, v29

    aget v20, v20, v21

    move/from16 v21, v15

    div-int v20, v20, v21

    aput v20, v18, v19

    .line 172
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v28, v18

    move/from16 v29, v19

    move-object/from16 v18, v28

    move/from16 v19, v29

    move-object/from16 v20, v28

    move/from16 v21, v29

    aget v20, v20, v21

    move/from16 v21, v15

    div-int v20, v20, v21

    aput v20, v18, v19

    .line 173
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-object/from16 v28, v18

    move/from16 v29, v19

    move-object/from16 v18, v28

    move/from16 v19, v29

    move-object/from16 v20, v28

    move/from16 v21, v29

    aget v20, v20, v21

    move/from16 v21, v15

    div-int v20, v20, v21

    aput v20, v18, v19

    .line 175
    move-object/from16 v18, v11

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move-object/from16 v19, v8

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x10

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    move-object/from16 v19, v9

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move-object/from16 v19, v10

    const/16 v20, 0x0

    aget v19, v19, v20

    or-int v18, v18, v19

    move/from16 v2, v18

    .end local v2    # "this":Lcom/sun/pisces/GradientColorMap;
    return v2
.end method

.method private pad(I)I
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/GradientColorMap;
    move v1, p1

    .local v1, "frac":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/pisces/GradientColorMap;->cycleMethod:I

    packed-switch v2, :pswitch_data_0

    .line 123
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cycle method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/pisces/GradientColorMap;->cycleMethod:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :pswitch_0
    move v2, v1

    if-gez v2, :cond_0

    .line 102
    const/4 v2, 0x0

    move v0, v2

    .line 120
    .end local v0    # "this":Lcom/sun/pisces/GradientColorMap;
    :goto_0
    return v0

    .line 103
    .restart local v0    # "this":Lcom/sun/pisces/GradientColorMap;
    :cond_0
    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 104
    const v2, 0xffff

    move v0, v2

    goto :goto_0

    .line 106
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 110
    :pswitch_1
    move v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 113
    :pswitch_2
    move v2, v1

    if-gez v2, :cond_2

    .line 114
    move v2, v1

    neg-int v2, v2

    move v1, v2

    .line 116
    :cond_2
    move v2, v1

    const v3, 0x1ffff

    and-int/2addr v2, v3

    move v1, v2

    .line 117
    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 118
    const v2, 0x1ffff

    move v3, v1

    sub-int/2addr v2, v3

    move v1, v2

    .line 120
    :cond_3
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
