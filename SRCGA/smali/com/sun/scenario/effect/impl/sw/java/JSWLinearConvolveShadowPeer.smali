.class public Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;
.source "JSWLinearConvolveShadowPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, p3

    .local v3, "uniqueName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolvePeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private getShadowColor()[F
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassShadowColorComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
    return-object v0
.end method


# virtual methods
.method protected filterHV([IIIII[IIIII[F)V
    .locals 32

    .prologue
    .line 107
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstcols":I
    move/from16 v5, p3

    .local v5, "dstrows":I
    move/from16 v6, p4

    .local v6, "dcolinc":I
    move/from16 v7, p5

    .local v7, "drowinc":I
    move-object/from16 v8, p6

    .local v8, "srcPixels":[I
    move/from16 v9, p7

    .local v9, "srccols":I
    move/from16 v10, p8

    .local v10, "srcrows":I
    move/from16 v11, p9

    .local v11, "scolinc":I
    move/from16 v12, p10

    .local v12, "srowinc":I
    move-object/from16 v13, p11

    .local v13, "weights":[F
    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v27}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;->getShadowColor()[F

    move-result-object v27

    move-object/from16 v14, v27

    .line 111
    .local v14, "shadowColor":[F
    move-object/from16 v27, v13

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    move/from16 v15, v27

    .line 112
    .local v15, "kernelSize":I
    move/from16 v27, v15

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v16, v27

    .line 113
    .local v16, "avals":[F
    const/16 v27, 0x0

    move/from16 v17, v27

    .line 114
    .local v17, "dstrow":I
    const/16 v27, 0x0

    move/from16 v18, v27

    .line 115
    .local v18, "srcrow":I
    const/16 v27, 0x100

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v19, v27

    .line 116
    .local v19, "shadowRGBs":[I
    const/16 v27, 0x0

    move/from16 v20, v27

    .local v20, "i":I
    :goto_0
    move/from16 v27, v20

    move-object/from16 v28, v19

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 117
    move-object/from16 v27, v19

    move/from16 v28, v20

    move-object/from16 v29, v14

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v30, v20

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x10

    shl-int/lit8 v29, v29, 0x10

    move-object/from16 v30, v14

    const/16 v31, 0x1

    aget v30, v30, v31

    move/from16 v31, v20

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x8

    shl-int/lit8 v30, v30, 0x8

    or-int v29, v29, v30

    move-object/from16 v30, v14

    const/16 v31, 0x2

    aget v30, v30, v31

    move/from16 v31, v20

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    or-int v29, v29, v30

    move-object/from16 v30, v14

    const/16 v31, 0x3

    aget v30, v30, v31

    move/from16 v31, v20

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x18

    shl-int/lit8 v30, v30, 0x18

    or-int v29, v29, v30

    aput v29, v27, v28

    .line 116
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const/16 v27, 0x0

    move/from16 v20, v27

    .local v20, "r":I
    :goto_1
    move/from16 v27, v20

    move/from16 v28, v5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 123
    move/from16 v27, v17

    move/from16 v21, v27

    .line 124
    .local v21, "dstoff":I
    move/from16 v27, v18

    move/from16 v22, v27

    .line 128
    .local v22, "srcoff":I
    const/16 v27, 0x0

    move/from16 v23, v27

    .local v23, "i":I
    :goto_2
    move/from16 v27, v23

    move-object/from16 v28, v16

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 129
    move-object/from16 v27, v16

    move/from16 v28, v23

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 128
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 131
    :cond_1
    move/from16 v27, v15

    move/from16 v23, v27

    .line 132
    .local v23, "koff":I
    const/16 v27, 0x0

    move/from16 v24, v27

    .local v24, "c":I
    :goto_3
    move/from16 v27, v24

    move/from16 v28, v4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 134
    move-object/from16 v27, v16

    move/from16 v28, v15

    move/from16 v29, v23

    sub-int v28, v28, v29

    move/from16 v29, v24

    move/from16 v30, v9

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    move-object/from16 v29, v8

    move/from16 v30, v22

    aget v29, v29, v30

    :goto_4
    const/16 v30, 0x18

    ushr-int/lit8 v29, v29, 0x18

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    aput v29, v27, v28

    .line 137
    add-int/lit8 v23, v23, -0x1

    move/from16 v27, v23

    if-gtz v27, :cond_2

    .line 138
    move/from16 v27, v23

    move/from16 v28, v15

    add-int v27, v27, v28

    move/from16 v23, v27

    .line 140
    :cond_2
    const/high16 v27, -0x41000000    # -0.5f

    move/from16 v25, v27

    .line 141
    .local v25, "sum":F
    const/16 v27, 0x0

    move/from16 v26, v27

    .local v26, "i":I
    :goto_5
    move/from16 v27, v26

    move-object/from16 v28, v16

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 142
    move/from16 v27, v25

    move-object/from16 v28, v16

    move/from16 v29, v26

    aget v28, v28, v29

    move-object/from16 v29, v13

    move/from16 v30, v23

    move/from16 v31, v26

    add-int v30, v30, v31

    aget v29, v29, v30

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v25, v27

    .line 141
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 134
    .end local v25    # "sum":F
    .end local v26    # "i":I
    :cond_3
    const/16 v29, 0x0

    goto :goto_4

    .line 144
    .restart local v25    # "sum":F
    .restart local v26    # "i":I
    :cond_4
    move-object/from16 v27, v3

    move/from16 v28, v21

    move/from16 v29, v25

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_5

    const/16 v29, 0x0

    :goto_6
    aput v29, v27, v28

    .line 148
    move/from16 v27, v21

    move/from16 v28, v6

    add-int v27, v27, v28

    move/from16 v21, v27

    .line 149
    move/from16 v27, v22

    move/from16 v28, v11

    add-int v27, v27, v28

    move/from16 v22, v27

    .line 132
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 144
    :cond_5
    move/from16 v29, v25

    const/high16 v30, 0x437e0000    # 254.0f

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_6

    move-object/from16 v29, v19

    const/16 v30, 0xff

    aget v29, v29, v30

    goto :goto_6

    :cond_6
    move-object/from16 v29, v19

    move/from16 v30, v25

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    aget v29, v29, v30

    goto :goto_6

    .line 151
    .end local v25    # "sum":F
    .end local v26    # "i":I
    :cond_7
    move/from16 v27, v17

    move/from16 v28, v7

    add-int v27, v27, v28

    move/from16 v17, v27

    .line 152
    move/from16 v27, v18

    move/from16 v28, v12

    add-int v27, v27, v28

    move/from16 v18, v27

    .line 122
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 154
    .end local v21    # "dstoff":I
    .end local v22    # "srcoff":I
    .end local v23    # "koff":I
    .end local v24    # "c":I
    :cond_8
    return-void
.end method

.method protected filterVector([IIII[IIII[FIFFFFFFFFFF)V
    .locals 41

    .prologue
    .line 54
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;
    move-object/from16 v3, p1

    .local v3, "dstPixels":[I
    move/from16 v4, p2

    .local v4, "dstw":I
    move/from16 v5, p3

    .local v5, "dsth":I
    move/from16 v6, p4

    .local v6, "dstscan":I
    move-object/from16 v7, p5

    .local v7, "srcPixels":[I
    move/from16 v8, p6

    .local v8, "srcw":I
    move/from16 v9, p7

    .local v9, "srch":I
    move/from16 v10, p8

    .local v10, "srcscan":I
    move-object/from16 v11, p9

    .local v11, "weights":[F
    move/from16 v12, p10

    .local v12, "count":I
    move/from16 v13, p11

    .local v13, "srcx0":F
    move/from16 v14, p12

    .local v14, "srcy0":F
    move/from16 v15, p13

    .local v15, "offsetx":F
    move/from16 v16, p14

    .local v16, "offsety":F
    move/from16 v17, p15

    .local v17, "deltax":F
    move/from16 v18, p16

    .local v18, "deltay":F
    move/from16 v19, p17

    .local v19, "dxcol":F
    move/from16 v20, p18

    .local v20, "dycol":F
    move/from16 v21, p19

    .local v21, "dxrow":F
    move/from16 v22, p20

    .local v22, "dyrow":F
    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v36}, Lcom/sun/scenario/effect/impl/sw/java/JSWLinearConvolveShadowPeer;->getShadowColor()[F

    move-result-object v36

    move-object/from16 v23, v36

    .line 56
    .local v23, "shadowColor":[F
    const/16 v36, 0x0

    move/from16 v24, v36

    .line 58
    .local v24, "dstrow":I
    move/from16 v36, v13

    move/from16 v37, v21

    move/from16 v38, v19

    add-float v37, v37, v38

    const/high16 v38, 0x3f000000    # 0.5f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v13, v36

    .line 59
    move/from16 v36, v14

    move/from16 v37, v22

    move/from16 v38, v20

    add-float v37, v37, v38

    const/high16 v38, 0x3f000000    # 0.5f

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v14, v36

    .line 60
    const/16 v36, 0x0

    move/from16 v25, v36

    .local v25, "dy":I
    :goto_0
    move/from16 v36, v25

    move/from16 v37, v5

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    .line 61
    move/from16 v36, v13

    move/from16 v26, v36

    .line 62
    .local v26, "srcx":F
    move/from16 v36, v14

    move/from16 v27, v36

    .line 63
    .local v27, "srcy":F
    const/16 v36, 0x0

    move/from16 v28, v36

    .local v28, "dx":I
    :goto_1
    move/from16 v36, v28

    move/from16 v37, v4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    .line 64
    const/16 v36, 0x0

    move/from16 v29, v36

    .line 65
    .local v29, "sum":F
    move/from16 v36, v26

    move/from16 v37, v15

    add-float v36, v36, v37

    move/from16 v30, v36

    .line 66
    .local v30, "sampx":F
    move/from16 v36, v27

    move/from16 v37, v16

    add-float v36, v36, v37

    move/from16 v31, v36

    .line 67
    .local v31, "sampy":F
    const/16 v36, 0x0

    move/from16 v32, v36

    .local v32, "i":I
    :goto_2
    move/from16 v36, v32

    move/from16 v37, v12

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 68
    move/from16 v36, v30

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_0

    move/from16 v36, v31

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_0

    .line 69
    move/from16 v36, v30

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v33, v36

    .line 70
    .local v33, "ix":I
    move/from16 v36, v31

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v34, v36

    .line 71
    .local v34, "iy":I
    move/from16 v36, v33

    move/from16 v37, v8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_0

    move/from16 v36, v34

    move/from16 v37, v9

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_0

    .line 73
    move-object/from16 v36, v7

    move/from16 v37, v34

    move/from16 v38, v10

    mul-int v37, v37, v38

    move/from16 v38, v33

    add-int v37, v37, v38

    aget v36, v36, v37

    move/from16 v35, v36

    .line 74
    .local v35, "argb":I
    move/from16 v36, v29

    move/from16 v37, v35

    const/16 v38, 0x18

    ushr-int/lit8 v37, v37, 0x18

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v38, v11

    move/from16 v39, v32

    aget v38, v38, v39

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v29, v36

    .line 77
    .end local v33    # "ix":I
    .end local v34    # "iy":I
    .end local v35    # "argb":I
    :cond_0
    move/from16 v36, v30

    move/from16 v37, v17

    add-float v36, v36, v37

    move/from16 v30, v36

    .line 78
    move/from16 v36, v31

    move/from16 v37, v18

    add-float v36, v36, v37

    move/from16 v31, v36

    .line 67
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 80
    :cond_1
    move/from16 v36, v29

    const/16 v37, 0x0

    cmpg-float v36, v36, v37

    if-gez v36, :cond_2

    const/16 v36, 0x0

    :goto_3
    move/from16 v29, v36

    .line 81
    move-object/from16 v36, v3

    move/from16 v37, v24

    move/from16 v38, v28

    add-int v37, v37, v38

    move-object/from16 v38, v23

    const/16 v39, 0x0

    aget v38, v38, v39

    move/from16 v39, v29

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    const/16 v39, 0x10

    shl-int/lit8 v38, v38, 0x10

    move-object/from16 v39, v23

    const/16 v40, 0x1

    aget v39, v39, v40

    move/from16 v40, v29

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x8

    shl-int/lit8 v39, v39, 0x8

    or-int v38, v38, v39

    move-object/from16 v39, v23

    const/16 v40, 0x2

    aget v39, v39, v40

    move/from16 v40, v29

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    or-int v38, v38, v39

    move-object/from16 v39, v23

    const/16 v40, 0x3

    aget v39, v39, v40

    move/from16 v40, v29

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x18

    shl-int/lit8 v39, v39, 0x18

    or-int v38, v38, v39

    aput v38, v36, v37

    .line 85
    move/from16 v36, v26

    move/from16 v37, v19

    add-float v36, v36, v37

    move/from16 v26, v36

    .line 86
    move/from16 v36, v27

    move/from16 v37, v20

    add-float v36, v36, v37

    move/from16 v27, v36

    .line 63
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 80
    :cond_2
    move/from16 v36, v29

    const/high16 v37, 0x437f0000    # 255.0f

    cmpl-float v36, v36, v37

    if-lez v36, :cond_3

    const/high16 v36, 0x437f0000    # 255.0f

    goto :goto_3

    :cond_3
    move/from16 v36, v29

    goto :goto_3

    .line 88
    .end local v29    # "sum":F
    .end local v30    # "sampx":F
    .end local v31    # "sampy":F
    .end local v32    # "i":I
    :cond_4
    move/from16 v36, v13

    move/from16 v37, v21

    add-float v36, v36, v37

    move/from16 v13, v36

    .line 89
    move/from16 v36, v14

    move/from16 v37, v22

    add-float v36, v36, v37

    move/from16 v14, v36

    .line 90
    move/from16 v36, v24

    move/from16 v37, v6

    add-int v36, v36, v37

    move/from16 v24, v36

    .line 60
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 92
    .end local v26    # "srcx":F
    .end local v27    # "srcy":F
    .end local v28    # "dx":I
    :cond_5
    return-void
.end method
