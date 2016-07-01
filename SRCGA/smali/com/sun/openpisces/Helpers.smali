.class final Lcom/sun/openpisces/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sun/openpisces/Helpers;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/openpisces/Helpers;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Helpers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This is a non instantiable class"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static cubicRootsInAB(FFFF[FIFF)I
    .locals 38

    .prologue
    .line 89
    move/from16 v3, p0

    .local v3, "d":F
    move/from16 v4, p1

    .local v4, "a":F
    move/from16 v5, p2

    .local v5, "b":F
    move/from16 v6, p3

    .local v6, "c":F
    move-object/from16 v7, p4

    .local v7, "pts":[F
    move/from16 v8, p5

    .local v8, "off":I
    move/from16 v9, p6

    .local v9, "A":F
    move/from16 v10, p7

    .local v10, "B":F
    move/from16 v28, v3

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_0

    .line 90
    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    move/from16 v32, v8

    invoke-static/range {v28 .. v32}, Lcom/sun/openpisces/Helpers;->quadraticRoots(FFF[FI)I

    move-result v28

    move/from16 v11, v28

    .line 91
    .local v11, "num":I
    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v11

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-static/range {v28 .. v32}, Lcom/sun/openpisces/Helpers;->filterOutNotInAB([FIIFF)I

    move-result v28

    move/from16 v29, v8

    sub-int v28, v28, v29

    move/from16 v3, v28

    .line 151
    .end local v3    # "d":F
    .end local v11    # "num":I
    :goto_0
    return v3

    .line 100
    .restart local v3    # "d":F
    :cond_0
    move/from16 v28, v4

    move/from16 v29, v3

    div-float v28, v28, v29

    move/from16 v4, v28

    .line 101
    move/from16 v28, v5

    move/from16 v29, v3

    div-float v28, v28, v29

    move/from16 v5, v28

    .line 102
    move/from16 v28, v6

    move/from16 v29, v3

    div-float v28, v28, v29

    move/from16 v6, v28

    .line 112
    move/from16 v28, v4

    move/from16 v29, v4

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v11, v28

    .line 113
    .local v11, "sq_A":D
    const-wide v28, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v30, -0x402aaaaaaaaaaaabL    # -0.3333333333333333

    move-wide/from16 v32, v11

    mul-double v30, v30, v32

    move/from16 v32, v5

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v13, v28

    .line 114
    .local v13, "p":D
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    const-wide v30, 0x3fb2f684bda12f68L    # 0.07407407407407407

    move/from16 v32, v4

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v32, v11

    mul-double v30, v30, v32

    const-wide v32, 0x3fd5555555555555L    # 0.3333333333333333

    move/from16 v34, v4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move/from16 v34, v5

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move/from16 v32, v6

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    mul-double v28, v28, v30

    move-wide/from16 v15, v28

    .line 118
    .local v15, "q":D
    move-wide/from16 v28, v13

    move-wide/from16 v30, v13

    mul-double v28, v28, v30

    move-wide/from16 v30, v13

    mul-double v28, v28, v30

    move-wide/from16 v17, v28

    .line 119
    .local v17, "cb_p":D
    move-wide/from16 v28, v15

    move-wide/from16 v30, v15

    mul-double v28, v28, v30

    move-wide/from16 v30, v17

    add-double v28, v28, v30

    move-wide/from16 v19, v28

    .line 122
    .local v19, "D":D
    move-wide/from16 v28, v19

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_2

    .line 124
    const-wide v28, 0x3fd5555555555555L    # 0.3333333333333333

    move-wide/from16 v30, v15

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v17

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->acos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 125
    .local v22, "phi":D
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-wide/from16 v30, v13

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 127
    .local v24, "t":D
    move-object/from16 v28, v7

    move/from16 v29, v8

    const/16 v30, 0x0

    add-int/lit8 v29, v29, 0x0

    move-wide/from16 v30, v24

    move-wide/from16 v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 128
    move-object/from16 v28, v7

    move/from16 v29, v8

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move-wide/from16 v30, v24

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    const-wide v34, 0x3ff0c152382d7365L    # 1.0471975511965976

    add-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 129
    move-object/from16 v28, v7

    move/from16 v29, v8

    const/16 v30, 0x2

    add-int/lit8 v29, v29, 0x2

    move-wide/from16 v30, v24

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v22

    const-wide v34, 0x3ff0c152382d7365L    # 1.0471975511965976

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 130
    const/16 v28, 0x3

    move/from16 v21, v28

    .line 145
    .end local v22    # "phi":D
    .end local v24    # "t":D
    .local v21, "num":I
    :cond_1
    :goto_1
    const v28, 0x3eaaaaab

    move/from16 v29, v4

    mul-float v28, v28, v29

    move/from16 v22, v28

    .line 147
    .local v22, "sub":F
    const/16 v28, 0x0

    move/from16 v23, v28

    .local v23, "i":I
    :goto_2
    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 148
    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v23

    add-int v29, v29, v30

    move-object/from16 v36, v28

    move/from16 v37, v29

    move-object/from16 v28, v36

    move/from16 v29, v37

    move-object/from16 v30, v36

    move/from16 v31, v37

    aget v30, v30, v31

    move/from16 v31, v22

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 147
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 132
    .end local v21    # "num":I
    .end local v22    # "sub":F
    .end local v23    # "i":I
    :cond_2
    move-wide/from16 v28, v19

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 133
    .local v22, "sqrt_D":D
    move-wide/from16 v28, v22

    move-wide/from16 v30, v15

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 134
    .local v24, "u":D
    move-wide/from16 v28, v22

    move-wide/from16 v30, v15

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v26, v28

    .line 136
    .local v26, "v":D
    move-object/from16 v28, v7

    move/from16 v29, v8

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 137
    const/16 v28, 0x1

    move/from16 v21, v28

    .line 139
    .restart local v21    # "num":I
    move-wide/from16 v28, v19

    const-wide/16 v30, 0x0

    const-wide v32, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-static/range {v28 .. v33}, Lcom/sun/openpisces/Helpers;->within(DDD)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 140
    move-object/from16 v28, v7

    move/from16 v29, v8

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v30, v7

    move/from16 v31, v8

    aget v30, v30, v31

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    aput v30, v28, v29

    .line 141
    const/16 v28, 0x2

    move/from16 v21, v28

    goto/16 :goto_1

    .line 151
    .end local v24    # "u":D
    .end local v26    # "v":D
    .local v22, "sub":F
    .restart local v23    # "i":I
    :cond_3
    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v21

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-static/range {v28 .. v32}, Lcom/sun/openpisces/Helpers;->filterOutNotInAB([FIIFF)I

    move-result v28

    move/from16 v29, v8

    sub-int v28, v28, v29

    move/from16 v3, v28

    goto/16 :goto_0
.end method

.method static evalCubic(FFFFF)F
    .locals 9

    .prologue
    .line 174
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "c":F
    move v3, p3

    .local v3, "d":F
    move v4, p4

    .local v4, "t":F
    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v0

    mul-float/2addr v7, v8

    move v8, v1

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    move v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    move v6, v3

    add-float/2addr v5, v6

    move v0, v5

    .end local v0    # "a":F
    return v0
.end method

.method static evalQuad(FFFF)F
    .locals 7

    .prologue
    .line 180
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "c":F
    move v3, p3

    .local v3, "t":F
    move v4, v3

    move v5, v3

    move v6, v0

    mul-float/2addr v5, v6

    move v6, v1

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    move v5, v2

    add-float/2addr v4, v5

    move v0, v4

    .end local v0    # "a":F
    return v0
.end method

.method static filterOutNotInAB([FIIFF)I
    .locals 11

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "nums":[F
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "len":I
    move v3, p3

    .local v3, "a":F
    move v4, p4

    .local v4, "b":F
    move v7, v1

    move v5, v7

    .line 188
    .local v5, "ret":I
    move v7, v1

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    .line 189
    move-object v7, v0

    move v8, v6

    aget v7, v7, v8

    move v8, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    move-object v7, v0

    move v8, v6

    aget v7, v7, v8

    move v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 190
    move-object v7, v0

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move-object v9, v0

    move v10, v6

    aget v9, v9, v10

    aput v9, v7, v8

    .line 188
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    :cond_1
    move v7, v5

    move v0, v7

    .end local v0    # "nums":[F
    return v0
.end method

.method static isort([FII)V
    .locals 10

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "a":[F
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "len":I
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_1

    .line 228
    move-object v6, v0

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 229
    .local v4, "ai":F
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .line 230
    .local v5, "j":I
    :goto_1
    move v6, v5

    move v7, v1

    if-lt v6, v7, :cond_0

    move-object v6, v0

    move v7, v5

    aget v6, v6, v7

    move v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 231
    move-object v6, v0

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    move v9, v5

    aget v8, v8, v9

    aput v8, v6, v7

    .line 230
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 233
    :cond_0
    move-object v6, v0

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    aput v8, v6, v7

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v4    # "ai":F
    .end local v5    # "j":I
    :cond_1
    return-void
.end method

.method static linelen(FFFF)F
    .locals 9

    .prologue
    .line 206
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v6, v2

    move v7, v0

    sub-float/2addr v6, v7

    move v4, v6

    .line 207
    .local v4, "dx":F
    move v6, v3

    move v7, v1

    sub-float/2addr v6, v7

    move v5, v6

    .line 208
    .local v5, "dy":F
    move v6, v4

    move v7, v4

    mul-float/2addr v6, v7

    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method static polyLineLength([FII)F
    .locals 13

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "poly":[F
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "nCoords":I
    sget-boolean v5, Lcom/sun/openpisces/Helpers;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move v5, v2

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    move-object v5, v0

    array-length v5, v5

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 198
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 199
    .local v3, "acc":F
    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 200
    move v5, v3

    move-object v6, v0

    move v7, v4

    aget v6, v6, v7

    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    move-object v8, v0

    move v9, v4

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    aget v8, v8, v9

    move-object v9, v0

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/sun/openpisces/Helpers;->linelen(FFFF)F

    move-result v6

    add-float/2addr v5, v6

    move v3, v5

    .line 199
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 202
    :cond_2
    move v5, v3

    move v0, v5

    .end local v0    # "poly":[F
    return v0
.end method

.method static quadraticRoots(FFF[FI)I
    .locals 15

    .prologue
    .line 54
    move v1, p0

    .local v1, "a":F
    move/from16 v2, p1

    .local v2, "b":F
    move/from16 v3, p2

    .local v3, "c":F
    move-object/from16 v4, p3

    .local v4, "zeroes":[F
    move/from16 v5, p4

    .local v5, "off":I
    move v10, v5

    move v6, v10

    .line 56
    .local v6, "ret":I
    move v10, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_3

    .line 57
    move v10, v2

    move v11, v2

    mul-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    move v12, v1

    mul-float/2addr v11, v12

    move v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v8, v10

    .line 58
    .local v8, "dis":F
    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 59
    move v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v9, v10

    .line 64
    .local v9, "sqrtDis":F
    move v10, v2

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 65
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v2

    neg-float v13, v13

    move v14, v9

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 66
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v2

    neg-float v12, v12

    move v13, v9

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move v14, v1

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 71
    .line 75
    .line 81
    .end local v8    # "dis":F
    .end local v9    # "sqrtDis":F
    :cond_0
    :goto_0
    move v10, v6

    move v11, v5

    sub-int/2addr v10, v11

    move v1, v10

    .end local v1    # "a":F
    return v1

    .line 68
    .restart local v1    # "a":F
    .restart local v8    # "dis":F
    .restart local v9    # "sqrtDis":F
    :cond_1
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v2

    neg-float v12, v12

    move v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    move v14, v1

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 69
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v2

    neg-float v13, v13

    move v14, v9

    add-float/2addr v13, v14

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto :goto_0

    .line 71
    .end local v9    # "sqrtDis":F
    :cond_2
    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    .line 72
    move v10, v2

    neg-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v1

    mul-float/2addr v11, v12

    div-float/2addr v10, v11

    move v7, v10

    .line 73
    .local v7, "t":F
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    aput v12, v10, v11

    goto :goto_0

    .line 76
    .end local v7    # "t":F
    .end local v8    # "dis":F
    :cond_3
    move v10, v2

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_0

    .line 77
    move v10, v3

    neg-float v10, v10

    move v11, v2

    div-float/2addr v10, v11

    move v7, v10

    .line 78
    .restart local v7    # "t":F
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    aput v12, v10, v11

    goto :goto_0
.end method

.method static subdivide([FI[FI[FII)V
    .locals 14

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "src":[F
    move v1, p1

    .local v1, "srcoff":I
    move-object/from16 v2, p2

    .local v2, "left":[F
    move/from16 v3, p3

    .local v3, "leftoff":I
    move-object/from16 v4, p4

    .local v4, "right":[F
    move/from16 v5, p5

    .local v5, "rightoff":I
    move/from16 v6, p6

    .local v6, "type":I
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 222
    :pswitch_0
    new-instance v7, Ljava/lang/InternalError;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Unsupported curve type"

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 216
    :pswitch_1
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/openpisces/Helpers;->subdivideQuad([FI[FI[FI)V

    .line 217
    .line 224
    :goto_0
    return-void

    .line 219
    :pswitch_2
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/openpisces/Helpers;->subdivideCubic([FI[FI[FI)V

    .line 220
    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static subdivideAt(F[FI[FI[FII)V
    .locals 15

    .prologue
    .line 448
    move v0, p0

    .local v0, "t":F
    move-object/from16 v1, p1

    .local v1, "src":[F
    move/from16 v2, p2

    .local v2, "srcoff":I
    move-object/from16 v3, p3

    .local v3, "left":[F
    move/from16 v4, p4

    .local v4, "leftoff":I
    move-object/from16 v5, p5

    .local v5, "right":[F
    move/from16 v6, p6

    .local v6, "rightoff":I
    move/from16 v7, p7

    .local v7, "size":I
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 456
    :goto_0
    :pswitch_0
    return-void

    .line 450
    :pswitch_1
    move v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    invoke-static/range {v8 .. v14}, Lcom/sun/openpisces/Helpers;->subdivideCubicAt(F[FI[FI[FI)V

    .line 451
    goto :goto_0

    .line 453
    :pswitch_2
    move v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    invoke-static/range {v8 .. v14}, Lcom/sun/openpisces/Helpers;->subdivideQuadAt(F[FI[FI[FI)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static subdivideCubic([FI[FI[FI)V
    .locals 19

    .prologue
    .line 271
    move-object/from16 v0, p0

    .local v0, "src":[F
    move/from16 v1, p1

    .local v1, "srcoff":I
    move-object/from16 v2, p2

    .local v2, "left":[F
    move/from16 v3, p3

    .local v3, "leftoff":I
    move-object/from16 v4, p4

    .local v4, "right":[F
    move/from16 v5, p5

    .local v5, "rightoff":I
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget v16, v16, v17

    move/from16 v6, v16

    .line 272
    .local v6, "x1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v7, v16

    .line 273
    .local v7, "y1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v8, v16

    .line 274
    .local v8, "ctrlx1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    aget v16, v16, v17

    move/from16 v9, v16

    .line 275
    .local v9, "ctrly1":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    aget v16, v16, v17

    move/from16 v10, v16

    .line 276
    .local v10, "ctrlx2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    aget v16, v16, v17

    move/from16 v11, v16

    .line 277
    .local v11, "ctrly2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    aget v16, v16, v17

    move/from16 v12, v16

    .line 278
    .local v12, "x2":F
    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    aget v16, v16, v17

    move/from16 v13, v16

    .line 279
    .local v13, "y2":F
    move-object/from16 v16, v2

    if-eqz v16, :cond_0

    .line 280
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v18, v6

    aput v18, v16, v17

    .line 281
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v7

    aput v18, v16, v17

    .line 283
    :cond_0
    move-object/from16 v16, v4

    if-eqz v16, :cond_1

    .line 284
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    move/from16 v18, v12

    aput v18, v16, v17

    .line 285
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v18, v13

    aput v18, v16, v17

    .line 287
    :cond_1
    move/from16 v16, v6

    move/from16 v17, v8

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v6, v16

    .line 288
    move/from16 v16, v7

    move/from16 v17, v9

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v7, v16

    .line 289
    move/from16 v16, v12

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v12, v16

    .line 290
    move/from16 v16, v13

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v13, v16

    .line 291
    move/from16 v16, v8

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v14, v16

    .line 292
    .local v14, "centerx":F
    move/from16 v16, v9

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v15, v16

    .line 293
    .local v15, "centery":F
    move/from16 v16, v6

    move/from16 v17, v14

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v8, v16

    .line 294
    move/from16 v16, v7

    move/from16 v17, v15

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v9, v16

    .line 295
    move/from16 v16, v12

    move/from16 v17, v14

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v10, v16

    .line 296
    move/from16 v16, v13

    move/from16 v17, v15

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v11, v16

    .line 297
    move/from16 v16, v8

    move/from16 v17, v10

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v14, v16

    .line 298
    move/from16 v16, v9

    move/from16 v17, v11

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v15, v16

    .line 299
    move-object/from16 v16, v2

    if-eqz v16, :cond_2

    .line 300
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v6

    aput v18, v16, v17

    .line 301
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v7

    aput v18, v16, v17

    .line 302
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move/from16 v18, v8

    aput v18, v16, v17

    .line 303
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v18, v9

    aput v18, v16, v17

    .line 304
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x6

    add-int/lit8 v17, v17, 0x6

    move/from16 v18, v14

    aput v18, v16, v17

    .line 305
    move-object/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x7

    add-int/lit8 v17, v17, 0x7

    move/from16 v18, v15

    aput v18, v16, v17

    .line 307
    :cond_2
    move-object/from16 v16, v4

    if-eqz v16, :cond_3

    .line 308
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v18, v14

    aput v18, v16, v17

    .line 309
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v15

    aput v18, v16, v17

    .line 310
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v10

    aput v18, v16, v17

    .line 311
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v11

    aput v18, v16, v17

    .line 312
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move/from16 v18, v12

    aput v18, v16, v17

    .line 313
    move-object/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x5

    add-int/lit8 v17, v17, 0x5

    move/from16 v18, v13

    aput v18, v16, v17

    .line 315
    :cond_3
    return-void
.end method

.method static subdivideCubicAt(F[FI[FI[FI)V
    .locals 21

    .prologue
    .line 322
    move/from16 v0, p0

    .local v0, "t":F
    move-object/from16 v1, p1

    .local v1, "src":[F
    move/from16 v2, p2

    .local v2, "srcoff":I
    move-object/from16 v3, p3

    .local v3, "left":[F
    move/from16 v4, p4

    .local v4, "leftoff":I
    move-object/from16 v5, p5

    .local v5, "right":[F
    move/from16 v6, p6

    .local v6, "rightoff":I
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v7, v17

    .line 323
    .local v7, "x1":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v8, v17

    .line 324
    .local v8, "y1":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v9, v17

    .line 325
    .local v9, "ctrlx1":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v10, v17

    .line 326
    .local v10, "ctrly1":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    aget v17, v17, v18

    move/from16 v11, v17

    .line 327
    .local v11, "ctrlx2":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v12, v17

    .line 328
    .local v12, "ctrly2":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    aget v17, v17, v18

    move/from16 v13, v17

    .line 329
    .local v13, "x2":F
    move-object/from16 v17, v1

    move/from16 v18, v2

    const/16 v19, 0x7

    add-int/lit8 v18, v18, 0x7

    aget v17, v17, v18

    move/from16 v14, v17

    .line 330
    .local v14, "y2":F
    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    .line 331
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    move/from16 v19, v7

    aput v19, v17, v18

    .line 332
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v8

    aput v19, v17, v18

    .line 334
    :cond_0
    move-object/from16 v17, v5

    if-eqz v17, :cond_1

    .line 335
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    move/from16 v19, v13

    aput v19, v17, v18

    .line 336
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x7

    add-int/lit8 v18, v18, 0x7

    move/from16 v19, v14

    aput v19, v17, v18

    .line 338
    :cond_1
    move/from16 v17, v7

    move/from16 v18, v0

    move/from16 v19, v9

    move/from16 v20, v7

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v7, v17

    .line 339
    move/from16 v17, v8

    move/from16 v18, v0

    move/from16 v19, v10

    move/from16 v20, v8

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 340
    move/from16 v17, v11

    move/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v11

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v13, v17

    .line 341
    move/from16 v17, v12

    move/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 342
    move/from16 v17, v9

    move/from16 v18, v0

    move/from16 v19, v11

    move/from16 v20, v9

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v15, v17

    .line 343
    .local v15, "centerx":F
    move/from16 v17, v10

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v10

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v16, v17

    .line 344
    .local v16, "centery":F
    move/from16 v17, v7

    move/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v7

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 345
    move/from16 v17, v8

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v8

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 346
    move/from16 v17, v15

    move/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v15

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 347
    move/from16 v17, v16

    move/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v16

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v12, v17

    .line 348
    move/from16 v17, v9

    move/from16 v18, v0

    move/from16 v19, v11

    move/from16 v20, v9

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v15, v17

    .line 349
    move/from16 v17, v10

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v10

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v16, v17

    .line 350
    move-object/from16 v17, v3

    if-eqz v17, :cond_2

    .line 351
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v19, v7

    aput v19, v17, v18

    .line 352
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move/from16 v19, v8

    aput v19, v17, v18

    .line 353
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    move/from16 v19, v9

    aput v19, v17, v18

    .line 354
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    move/from16 v19, v10

    aput v19, v17, v18

    .line 355
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    move/from16 v19, v15

    aput v19, v17, v18

    .line 356
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x7

    add-int/lit8 v18, v18, 0x7

    move/from16 v19, v16

    aput v19, v17, v18

    .line 358
    :cond_2
    move-object/from16 v17, v5

    if-eqz v17, :cond_3

    .line 359
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    move/from16 v19, v15

    aput v19, v17, v18

    .line 360
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v16

    aput v19, v17, v18

    .line 361
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v19, v11

    aput v19, v17, v18

    .line 362
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move/from16 v19, v12

    aput v19, v17, v18

    .line 363
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    move/from16 v19, v13

    aput v19, v17, v18

    .line 364
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    move/from16 v19, v14

    aput v19, v17, v18

    .line 366
    :cond_3
    return-void
.end method

.method static subdivideQuad([FI[FI[FI)V
    .locals 15

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "src":[F
    move/from16 v1, p1

    .local v1, "srcoff":I
    move-object/from16 v2, p2

    .local v2, "left":[F
    move/from16 v3, p3

    .local v3, "leftoff":I
    move-object/from16 v4, p4

    .local v4, "right":[F
    move/from16 v5, p5

    .local v5, "rightoff":I
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    aget v12, v12, v13

    move v6, v12

    .line 373
    .local v6, "x1":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    move v7, v12

    .line 374
    .local v7, "y1":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move v8, v12

    .line 375
    .local v8, "ctrlx":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    move v9, v12

    .line 376
    .local v9, "ctrly":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget v12, v12, v13

    move v10, v12

    .line 377
    .local v10, "x2":F
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    aget v12, v12, v13

    move v11, v12

    .line 378
    .local v11, "y2":F
    move-object v12, v2

    if-eqz v12, :cond_0

    .line 379
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move v14, v6

    aput v14, v12, v13

    .line 380
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v7

    aput v14, v12, v13

    .line 382
    :cond_0
    move-object v12, v4

    if-eqz v12, :cond_1

    .line 383
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v14, v10

    aput v14, v12, v13

    .line 384
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    move v14, v11

    aput v14, v12, v13

    .line 386
    :cond_1
    move v12, v6

    move v13, v8

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v6, v12

    .line 387
    move v12, v7

    move v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v7, v12

    .line 388
    move v12, v10

    move v13, v8

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v10, v12

    .line 389
    move v12, v11

    move v13, v9

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v11, v12

    .line 390
    move v12, v6

    move v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v8, v12

    .line 391
    move v12, v7

    move v13, v11

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v9, v12

    .line 392
    move-object v12, v2

    if-eqz v12, :cond_2

    .line 393
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v6

    aput v14, v12, v13

    .line 394
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v7

    aput v14, v12, v13

    .line 395
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    move v14, v8

    aput v14, v12, v13

    .line 396
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x5

    move v14, v9

    aput v14, v12, v13

    .line 398
    :cond_2
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 399
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x0

    move v14, v8

    aput v14, v12, v13

    .line 400
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v9

    aput v14, v12, v13

    .line 401
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v10

    aput v14, v12, v13

    .line 402
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v11

    aput v14, v12, v13

    .line 404
    :cond_3
    return-void
.end method

.method static subdivideQuadAt(F[FI[FI[FI)V
    .locals 17

    .prologue
    .line 410
    move/from16 v0, p0

    .local v0, "t":F
    move-object/from16 v1, p1

    .local v1, "src":[F
    move/from16 v2, p2

    .local v2, "srcoff":I
    move-object/from16 v3, p3

    .local v3, "left":[F
    move/from16 v4, p4

    .local v4, "leftoff":I
    move-object/from16 v5, p5

    .local v5, "right":[F
    move/from16 v6, p6

    .local v6, "rightoff":I
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    aget v13, v13, v14

    move v7, v13

    .line 411
    .local v7, "x1":F
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    move v8, v13

    .line 412
    .local v8, "y1":F
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    aget v13, v13, v14

    move v9, v13

    .line 413
    .local v9, "ctrlx":F
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    aget v13, v13, v14

    move v10, v13

    .line 414
    .local v10, "ctrly":F
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x4

    add-int/lit8 v14, v14, 0x4

    aget v13, v13, v14

    move v11, v13

    .line 415
    .local v11, "x2":F
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x5

    add-int/lit8 v14, v14, 0x5

    aget v13, v13, v14

    move v12, v13

    .line 416
    .local v12, "y2":F
    move-object v13, v3

    if-eqz v13, :cond_0

    .line 417
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    move v15, v7

    aput v15, v13, v14

    .line 418
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v8

    aput v15, v13, v14

    .line 420
    :cond_0
    move-object v13, v5

    if-eqz v13, :cond_1

    .line 421
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x4

    add-int/lit8 v14, v14, 0x4

    move v15, v11

    aput v15, v13, v14

    .line 422
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x5

    add-int/lit8 v14, v14, 0x5

    move v15, v12

    aput v15, v13, v14

    .line 424
    :cond_1
    move v13, v7

    move v14, v0

    move v15, v9

    move/from16 v16, v7

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v7, v13

    .line 425
    move v13, v8

    move v14, v0

    move v15, v10

    move/from16 v16, v8

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v8, v13

    .line 426
    move v13, v9

    move v14, v0

    move v15, v11

    move/from16 v16, v9

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v11, v13

    .line 427
    move v13, v10

    move v14, v0

    move v15, v12

    move/from16 v16, v10

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v12, v13

    .line 428
    move v13, v7

    move v14, v0

    move v15, v11

    move/from16 v16, v7

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v9, v13

    .line 429
    move v13, v8

    move v14, v0

    move v15, v12

    move/from16 v16, v8

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move v10, v13

    .line 430
    move-object v13, v3

    if-eqz v13, :cond_2

    .line 431
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    move v15, v7

    aput v15, v13, v14

    .line 432
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    move v15, v8

    aput v15, v13, v14

    .line 433
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x4

    add-int/lit8 v14, v14, 0x4

    move v15, v9

    aput v15, v13, v14

    .line 434
    move-object v13, v3

    move v14, v4

    const/4 v15, 0x5

    add-int/lit8 v14, v14, 0x5

    move v15, v10

    aput v15, v13, v14

    .line 436
    :cond_2
    move-object v13, v5

    if-eqz v13, :cond_3

    .line 437
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x0

    move v15, v9

    aput v15, v13, v14

    .line 438
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v10

    aput v15, v13, v14

    .line 439
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    move v15, v11

    aput v15, v13, v14

    .line 440
    move-object v13, v5

    move v14, v6

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    move v15, v12

    aput v15, v13, v14

    .line 442
    :cond_3
    return-void
.end method

.method static widenArray([FII)[F
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "in":[F
    move v1, p1

    .local v1, "cursize":I
    move v2, p2

    .local v2, "numToAdd":I
    move-object v3, v0

    array-length v3, v3

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_0

    .line 158
    move-object v3, v0

    move-object v0, v3

    .line 160
    .end local v0    # "in":[F
    :goto_0
    return-object v0

    .restart local v0    # "in":[F
    :cond_0
    move-object v3, v0

    const/4 v4, 0x2

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static widenArray([III)[I
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "in":[I
    move v1, p1

    .local v1, "cursize":I
    move v2, p2

    .local v2, "numToAdd":I
    move-object v3, v0

    array-length v3, v3

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_0

    .line 165
    move-object v3, v0

    move-object v0, v3

    .line 167
    .end local v0    # "in":[I
    :goto_0
    return-object v0

    .restart local v0    # "in":[I
    :cond_0
    move-object v3, v0

    const/4 v4, 0x2

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static within(DDD)Z
    .locals 12

    .prologue
    .line 47
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "err":D
    move-wide v8, v2

    move-wide v10, v0

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 48
    .local v6, "d":D
    move-wide v8, v6

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    move-wide v8, v6

    move-wide v10, v4

    neg-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .end local v0    # "x":D
    return v0

    .restart local v0    # "x":D
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method static within(FFF)Z
    .locals 6

    .prologue
    .line 42
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move v2, p2

    .local v2, "err":F
    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    move v3, v4

    .line 43
    .local v3, "d":F
    move v4, v3

    move v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    move v4, v3

    move v5, v2

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "x":F
    return v0

    .restart local v0    # "x":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
