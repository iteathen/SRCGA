.class public Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
.super Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.source "JSWBrightpassPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private getThreshold()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getEffect()Lcom/sun/scenario/effect/Brightpass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Brightpass;->getThreshold()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    return v0
.end method


# virtual methods
.method public varargs filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 69

    .prologue
    .line 70
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    move-object/from16 v3, p1

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p2

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v5, p3

    .local v5, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p4

    .local v6, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p5

    .local v7, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v59, v2

    move-object/from16 v60, v3

    invoke-virtual/range {v59 .. v60}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 71
    move-object/from16 v59, v2

    move-object/from16 v60, v5

    move-object/from16 v61, v6

    move-object/from16 v62, v7

    invoke-virtual/range {v59 .. v62}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v59

    move-object/from16 v8, v59

    .line 72
    .local v8, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v59, v2

    move-object/from16 v60, v8

    invoke-virtual/range {v59 .. v60}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V

    .line 75
    move-object/from16 v59, v7

    const/16 v60, 0x0

    aget-object v59, v59, v60

    move-object/from16 v60, v8

    invoke-virtual/range {v59 .. v60}, Lcom/sun/scenario/effect/ImageData;->getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v59

    check-cast v59, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v9, v59

    .line 76
    .local v9, "src0":Lcom/sun/scenario/effect/impl/HeapImage;
    const/16 v59, 0x0

    move/from16 v10, v59

    .line 77
    .local v10, "src0x":I
    const/16 v59, 0x0

    move/from16 v11, v59

    .line 78
    .local v11, "src0y":I
    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v59

    move/from16 v12, v59

    .line 79
    .local v12, "src0w":I
    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v59

    move/from16 v13, v59

    .line 80
    .local v13, "src0h":I
    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v59

    move/from16 v14, v59

    .line 81
    .local v14, "src0scan":I
    move-object/from16 v59, v9

    .line 82
    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v59

    move-object/from16 v15, v59

    .line 83
    .local v15, "baseImg":[I
    new-instance v59, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v68, v59

    move-object/from16 v59, v68

    move-object/from16 v60, v68

    move/from16 v61, v10

    move/from16 v62, v11

    move/from16 v63, v12

    move/from16 v64, v13

    invoke-direct/range {v60 .. v64}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v16, v59

    .line 84
    .local v16, "src0Bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v59, v7

    const/16 v60, 0x0

    aget-object v59, v59, v60

    move-object/from16 v60, v8

    invoke-virtual/range {v59 .. v60}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v59

    move-object/from16 v17, v59

    .line 85
    .local v17, "src0InputBounds":Lcom/sun/javafx/geom/Rectangle;
    sget-object v59, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v18, v59

    .line 86
    .local v18, "src0Transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v59, v2

    const/16 v60, 0x0

    move-object/from16 v61, v17

    invoke-virtual/range {v59 .. v61}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 87
    move-object/from16 v59, v2

    const/16 v60, 0x0

    move-object/from16 v61, v16

    invoke-virtual/range {v59 .. v61}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V

    .line 90
    const/16 v59, 0x4

    move/from16 v0, v59

    new-array v0, v0, [F

    move-object/from16 v59, v0

    move-object/from16 v19, v59

    .line 91
    .local v19, "src0Rect":[F
    move-object/from16 v59, v2

    const/16 v60, 0x0

    move-object/from16 v61, v19

    move-object/from16 v62, v17

    move-object/from16 v0, v62

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move-object/from16 v63, v17

    move-object/from16 v0, v63

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v12

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    move/from16 v65, v13

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    move-object/from16 v66, v8

    move-object/from16 v67, v18

    invoke-virtual/range {v59 .. v67}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v59

    .line 97
    const/16 v59, 0x0

    move/from16 v20, v59

    .line 98
    .local v20, "dstx":I
    const/16 v59, 0x0

    move/from16 v21, v59

    .line 99
    .local v21, "dsty":I
    move-object/from16 v59, v8

    move-object/from16 v0, v59

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v59, v0

    move/from16 v22, v59

    .line 100
    .local v22, "dstw":I
    move-object/from16 v59, v8

    move-object/from16 v0, v59

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v59, v0

    move/from16 v23, v59

    .line 102
    .local v23, "dsth":I
    move-object/from16 v59, v2

    invoke-virtual/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v59

    move/from16 v60, v22

    move/from16 v61, v23

    invoke-virtual/range {v59 .. v61}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v59

    check-cast v59, Lcom/sun/scenario/effect/impl/HeapImage;

    move-object/from16 v24, v59

    .line 103
    .local v24, "dst":Lcom/sun/scenario/effect/impl/HeapImage;
    move-object/from16 v59, v2

    move-object/from16 v60, v24

    invoke-interface/range {v60 .. v60}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalWidth()I

    move-result v60

    move-object/from16 v61, v24

    invoke-interface/range {v61 .. v61}, Lcom/sun/scenario/effect/impl/HeapImage;->getPhysicalHeight()I

    move-result v61

    invoke-virtual/range {v59 .. v61}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->setDestNativeBounds(II)V

    .line 104
    move-object/from16 v59, v24

    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getScanlineStride()I

    move-result v59

    move/from16 v25, v59

    .line 105
    .local v25, "dstscan":I
    move-object/from16 v59, v24

    invoke-interface/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/HeapImage;->getPixelArray()[I

    move-result-object v59

    move-object/from16 v26, v59

    .line 110
    .local v26, "dstPixels":[I
    move-object/from16 v59, v2

    invoke-direct/range {v59 .. v59}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getThreshold()F

    move-result v59

    move/from16 v32, v59

    .line 113
    .local v32, "threshold":F
    move-object/from16 v59, v19

    const/16 v60, 0x2

    aget v59, v59, v60

    move-object/from16 v60, v19

    const/16 v61, 0x0

    aget v60, v60, v61

    sub-float v59, v59, v60

    move/from16 v60, v22

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    div-float v59, v59, v60

    move/from16 v33, v59

    .line 114
    .local v33, "inc0_x":F
    move-object/from16 v59, v19

    const/16 v60, 0x3

    aget v59, v59, v60

    move-object/from16 v60, v19

    const/16 v61, 0x1

    aget v60, v60, v61

    sub-float v59, v59, v60

    move/from16 v60, v23

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    div-float v59, v59, v60

    move/from16 v34, v59

    .line 117
    .local v34, "inc0_y":F
    move-object/from16 v59, v19

    const/16 v60, 0x1

    aget v59, v59, v60

    move/from16 v60, v34

    const/high16 v61, 0x3f000000    # 0.5f

    mul-float v60, v60, v61

    add-float v59, v59, v60

    move/from16 v35, v59

    .line 119
    .local v35, "pos0_y":F
    const/16 v59, 0x0

    move/from16 v36, v59

    .local v36, "dy":I
    :goto_0
    move/from16 v59, v36

    const/16 v60, 0x0

    move/from16 v61, v23

    add-int v60, v60, v61

    move/from16 v0, v59

    move/from16 v1, v60

    if-ge v0, v1, :cond_e

    .line 120
    move/from16 v59, v36

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    move/from16 v37, v59

    .line 122
    .local v37, "pixcoord_y":F
    move/from16 v59, v36

    move/from16 v60, v25

    mul-int v59, v59, v60

    move/from16 v27, v59

    .line 124
    .local v27, "dyi":I
    move-object/from16 v59, v19

    const/16 v60, 0x0

    aget v59, v59, v60

    move/from16 v60, v33

    const/high16 v61, 0x3f000000    # 0.5f

    mul-float v60, v60, v61

    add-float v59, v59, v60

    move/from16 v38, v59

    .line 126
    .local v38, "pos0_x":F
    const/16 v59, 0x0

    move/from16 v39, v59

    .local v39, "dx":I
    :goto_1
    move/from16 v59, v39

    const/16 v60, 0x0

    move/from16 v61, v22

    add-int v60, v60, v61

    move/from16 v0, v59

    move/from16 v1, v60

    if-ge v0, v1, :cond_d

    .line 127
    move/from16 v59, v39

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    move/from16 v40, v59

    .line 131
    .local v40, "pixcoord_x":F
    const v59, 0x3e59999a    # 0.2125f

    move/from16 v41, v59

    .line 132
    .local v41, "luminanceVector_x":F
    const v59, 0x3f372474    # 0.7154f

    move/from16 v42, v59

    .line 133
    .local v42, "luminanceVector_y":F
    const v59, 0x3d93a92a    # 0.0721f

    move/from16 v43, v59

    .line 136
    .local v43, "luminanceVector_z":F
    move/from16 v59, v38

    move/from16 v48, v59

    .line 137
    .local v48, "loc_tmp_x":F
    move/from16 v59, v35

    move/from16 v49, v59

    .line 139
    .local v49, "loc_tmp_y":F
    move/from16 v59, v48

    const/16 v60, 0x0

    cmpl-float v59, v59, v60

    if-ltz v59, :cond_7

    move/from16 v59, v49

    const/16 v60, 0x0

    cmpl-float v59, v59, v60

    if-ltz v59, :cond_7

    .line 140
    move/from16 v59, v48

    move/from16 v60, v12

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v59, v0

    move/from16 v51, v59

    .line 141
    .local v51, "iloc_tmp_x":I
    move/from16 v59, v49

    move/from16 v60, v13

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    mul-float v59, v59, v60

    move/from16 v0, v59

    float-to-int v0, v0

    move/from16 v59, v0

    move/from16 v52, v59

    .line 142
    .local v52, "iloc_tmp_y":I
    move/from16 v59, v51

    move/from16 v60, v12

    move/from16 v0, v59

    move/from16 v1, v60

    if-ge v0, v1, :cond_0

    move/from16 v59, v52

    move/from16 v60, v13

    move/from16 v0, v59

    move/from16 v1, v60

    if-lt v0, v1, :cond_5

    :cond_0
    const/16 v59, 0x1

    :goto_2
    move/from16 v53, v59

    .line 145
    .local v53, "out":Z
    move/from16 v59, v53

    if-eqz v59, :cond_6

    const/16 v59, 0x0

    :goto_3
    move/from16 v50, v59

    .line 150
    .end local v51    # "iloc_tmp_x":I
    .end local v52    # "iloc_tmp_y":I
    .end local v53    # "out":Z
    .local v50, "baseImg_tmp":I
    :goto_4
    move/from16 v59, v50

    const/16 v60, 0x10

    shr-int/lit8 v59, v59, 0x10

    const/16 v60, 0xff

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    const/high16 v60, 0x437f0000    # 255.0f

    div-float v59, v59, v60

    move/from16 v44, v59

    .line 151
    .local v44, "sample_res_x":F
    move/from16 v59, v50

    const/16 v60, 0x8

    shr-int/lit8 v59, v59, 0x8

    const/16 v60, 0xff

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    const/high16 v60, 0x437f0000    # 255.0f

    div-float v59, v59, v60

    move/from16 v45, v59

    .line 152
    .local v45, "sample_res_y":F
    move/from16 v59, v50

    const/16 v60, 0xff

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    const/high16 v60, 0x437f0000    # 255.0f

    div-float v59, v59, v60

    move/from16 v46, v59

    .line 153
    .local v46, "sample_res_z":F
    move/from16 v59, v50

    const/16 v60, 0x18

    ushr-int/lit8 v59, v59, 0x18

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    const/high16 v60, 0x437f0000    # 255.0f

    div-float v59, v59, v60

    move/from16 v47, v59

    .line 156
    .local v47, "sample_res_w":F
    move/from16 v59, v44

    move/from16 v48, v59

    .line 157
    .local v48, "val_x":F
    move/from16 v59, v45

    move/from16 v49, v59

    .line 158
    .local v49, "val_y":F
    move/from16 v59, v46

    move/from16 v50, v59

    .line 159
    .local v50, "val_z":F
    move/from16 v59, v47

    move/from16 v51, v59

    .line 162
    .local v51, "val_w":F
    move/from16 v59, v41

    move/from16 v53, v59

    .line 163
    .local v53, "x_tmp_x":F
    move/from16 v59, v42

    move/from16 v54, v59

    .line 164
    .local v54, "x_tmp_y":F
    move/from16 v59, v43

    move/from16 v55, v59

    .line 165
    .local v55, "x_tmp_z":F
    move/from16 v59, v48

    move/from16 v56, v59

    .line 166
    .local v56, "y_tmp_x":F
    move/from16 v59, v49

    move/from16 v57, v59

    .line 167
    .local v57, "y_tmp_y":F
    move/from16 v59, v50

    move/from16 v58, v59

    .line 168
    .local v58, "y_tmp_z":F
    move/from16 v59, v53

    move/from16 v60, v56

    mul-float v59, v59, v60

    move/from16 v60, v54

    move/from16 v61, v57

    mul-float v60, v60, v61

    add-float v59, v59, v60

    move/from16 v60, v55

    move/from16 v61, v58

    mul-float v60, v60, v61

    add-float v59, v59, v60

    move/from16 v52, v59

    .line 173
    .local v52, "dot_res":F
    move/from16 v59, v52

    move/from16 v53, v59

    .line 176
    .local v53, "luminance":F
    const/16 v59, 0x0

    move/from16 v55, v59

    .line 177
    .local v55, "x_tmp":F
    move/from16 v59, v53

    move/from16 v60, v51

    move/from16 v61, v32

    mul-float v60, v60, v61

    sub-float v59, v59, v60

    move/from16 v56, v59

    .line 178
    .local v56, "y_tmp":F
    move/from16 v59, v55

    move/from16 v60, v56

    cmpl-float v59, v59, v60

    if-lez v59, :cond_8

    move/from16 v59, v55

    :goto_5
    move/from16 v54, v59

    .line 181
    .local v54, "max_res":F
    move/from16 v59, v54

    move/from16 v53, v59

    .line 184
    move/from16 v59, v53

    move/from16 v56, v59

    .line 185
    .end local v55    # "x_tmp":F
    .local v56, "x_tmp":F
    move/from16 v59, v56

    invoke-static/range {v59 .. v59}, Ljava/lang/Math;->signum(F)F

    move-result v59

    move/from16 v55, v59

    .line 188
    .local v55, "sign_res":F
    move/from16 v59, v48

    move/from16 v60, v55

    mul-float v59, v59, v60

    move/from16 v28, v59

    .line 189
    .local v28, "color_x":F
    move/from16 v59, v49

    move/from16 v60, v55

    mul-float v59, v59, v60

    move/from16 v29, v59

    .line 190
    .local v29, "color_y":F
    move/from16 v59, v50

    move/from16 v60, v55

    mul-float v59, v59, v60

    move/from16 v30, v59

    .line 191
    .local v30, "color_z":F
    move/from16 v59, v51

    move/from16 v60, v55

    mul-float v59, v59, v60

    move/from16 v31, v59

    .line 195
    .local v31, "color_w":F
    move/from16 v59, v31

    const/16 v60, 0x0

    cmpg-float v59, v59, v60

    if-gez v59, :cond_9

    const/16 v59, 0x0

    move/from16 v31, v59

    .line 196
    :cond_1
    :goto_6
    move/from16 v59, v28

    const/16 v60, 0x0

    cmpg-float v59, v59, v60

    if-gez v59, :cond_a

    const/16 v59, 0x0

    move/from16 v28, v59

    .line 197
    :cond_2
    :goto_7
    move/from16 v59, v29

    const/16 v60, 0x0

    cmpg-float v59, v59, v60

    if-gez v59, :cond_b

    const/16 v59, 0x0

    move/from16 v29, v59

    .line 198
    :cond_3
    :goto_8
    move/from16 v59, v30

    const/16 v60, 0x0

    cmpg-float v59, v59, v60

    if-gez v59, :cond_c

    const/16 v59, 0x0

    move/from16 v30, v59

    .line 199
    :cond_4
    :goto_9
    move-object/from16 v59, v26

    move/from16 v60, v27

    move/from16 v61, v39

    add-int v60, v60, v61

    move/from16 v61, v28

    const/high16 v62, 0x437f0000    # 255.0f

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v61, v0

    const/16 v62, 0x10

    shl-int/lit8 v61, v61, 0x10

    move/from16 v62, v29

    const/high16 v63, 0x437f0000    # 255.0f

    mul-float v62, v62, v63

    move/from16 v0, v62

    float-to-int v0, v0

    move/from16 v62, v0

    const/16 v63, 0x8

    shl-int/lit8 v62, v62, 0x8

    or-int v61, v61, v62

    move/from16 v62, v30

    const/high16 v63, 0x437f0000    # 255.0f

    mul-float v62, v62, v63

    move/from16 v0, v62

    float-to-int v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    shl-int/lit8 v62, v62, 0x0

    or-int v61, v61, v62

    move/from16 v62, v31

    const/high16 v63, 0x437f0000    # 255.0f

    mul-float v62, v62, v63

    move/from16 v0, v62

    float-to-int v0, v0

    move/from16 v62, v0

    const/16 v63, 0x18

    shl-int/lit8 v62, v62, 0x18

    or-int v61, v61, v62

    aput v61, v59, v60

    .line 205
    move/from16 v59, v38

    move/from16 v60, v33

    add-float v59, v59, v60

    move/from16 v38, v59

    .line 126
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 142
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v44    # "sample_res_x":F
    .end local v45    # "sample_res_y":F
    .end local v46    # "sample_res_z":F
    .end local v47    # "sample_res_w":F
    .end local v50    # "val_z":F
    .end local v53    # "luminance":F
    .end local v54    # "max_res":F
    .end local v55    # "sign_res":F
    .end local v56    # "x_tmp":F
    .end local v57    # "y_tmp_y":F
    .end local v58    # "y_tmp_z":F
    .local v48, "loc_tmp_x":F
    .local v49, "loc_tmp_y":F
    .local v51, "iloc_tmp_x":I
    .local v52, "iloc_tmp_y":I
    :cond_5
    const/16 v59, 0x0

    goto/16 :goto_2

    .line 145
    .local v53, "out":Z
    :cond_6
    move-object/from16 v59, v15

    move/from16 v60, v52

    move/from16 v61, v14

    mul-int v60, v60, v61

    move/from16 v61, v51

    add-int v60, v60, v61

    aget v59, v59, v60

    goto/16 :goto_3

    .line 148
    .end local v51    # "iloc_tmp_x":I
    .end local v52    # "iloc_tmp_y":I
    .end local v53    # "out":Z
    :cond_7
    const/16 v59, 0x0

    move/from16 v50, v59

    .local v50, "baseImg_tmp":I
    goto/16 :goto_4

    .line 178
    .restart local v44    # "sample_res_x":F
    .restart local v45    # "sample_res_y":F
    .restart local v46    # "sample_res_z":F
    .restart local v47    # "sample_res_w":F
    .local v48, "val_x":F
    .local v49, "val_y":F
    .local v50, "val_z":F
    .local v51, "val_w":F
    .local v52, "dot_res":F
    .local v53, "luminance":F
    .local v54, "x_tmp_y":F
    .local v55, "x_tmp":F
    .local v56, "y_tmp":F
    .restart local v57    # "y_tmp_y":F
    .restart local v58    # "y_tmp_z":F
    :cond_8
    move/from16 v59, v56

    goto/16 :goto_5

    .line 195
    .restart local v28    # "color_x":F
    .restart local v29    # "color_y":F
    .restart local v30    # "color_z":F
    .restart local v31    # "color_w":F
    .local v54, "max_res":F
    .local v55, "sign_res":F
    .local v56, "x_tmp":F
    :cond_9
    move/from16 v59, v31

    const/high16 v60, 0x3f800000    # 1.0f

    cmpl-float v59, v59, v60

    if-lez v59, :cond_1

    const/high16 v59, 0x3f800000    # 1.0f

    move/from16 v31, v59

    goto/16 :goto_6

    .line 196
    :cond_a
    move/from16 v59, v28

    move/from16 v60, v31

    cmpl-float v59, v59, v60

    if-lez v59, :cond_2

    move/from16 v59, v31

    move/from16 v28, v59

    goto/16 :goto_7

    .line 197
    :cond_b
    move/from16 v59, v29

    move/from16 v60, v31

    cmpl-float v59, v59, v60

    if-lez v59, :cond_3

    move/from16 v59, v31

    move/from16 v29, v59

    goto/16 :goto_8

    .line 198
    :cond_c
    move/from16 v59, v30

    move/from16 v60, v31

    cmpl-float v59, v59, v60

    if-lez v59, :cond_4

    move/from16 v59, v31

    move/from16 v30, v59

    goto/16 :goto_9

    .line 209
    .end local v28    # "color_x":F
    .end local v29    # "color_y":F
    .end local v30    # "color_z":F
    .end local v31    # "color_w":F
    .end local v40    # "pixcoord_x":F
    .end local v41    # "luminanceVector_x":F
    .end local v42    # "luminanceVector_y":F
    .end local v43    # "luminanceVector_z":F
    .end local v44    # "sample_res_x":F
    .end local v45    # "sample_res_y":F
    .end local v46    # "sample_res_z":F
    .end local v47    # "sample_res_w":F
    .end local v48    # "val_x":F
    .end local v49    # "val_y":F
    .end local v50    # "val_z":F
    .end local v51    # "val_w":F
    .end local v52    # "dot_res":F
    .end local v53    # "luminance":F
    .end local v54    # "max_res":F
    .end local v55    # "sign_res":F
    .end local v56    # "x_tmp":F
    .end local v57    # "y_tmp_y":F
    .end local v58    # "y_tmp_z":F
    :cond_d
    move/from16 v59, v35

    move/from16 v60, v34

    add-float v59, v59, v60

    move/from16 v35, v59

    .line 119
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    .line 213
    .end local v27    # "dyi":I
    .end local v37    # "pixcoord_y":F
    .end local v38    # "pos0_x":F
    .end local v39    # "dx":I
    :cond_e
    move-object/from16 v59, v7

    const/16 v60, 0x0

    aget-object v59, v59, v60

    move-object/from16 v60, v9

    invoke-virtual/range {v59 .. v60}, Lcom/sun/scenario/effect/ImageData;->releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 216
    new-instance v59, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v68, v59

    move-object/from16 v59, v68

    move-object/from16 v60, v68

    move-object/from16 v61, v2

    invoke-virtual/range {v61 .. v61}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getFilterContext()Lcom/sun/scenario/effect/FilterContext;

    move-result-object v61

    move-object/from16 v62, v24

    move-object/from16 v63, v8

    invoke-direct/range {v60 .. v63}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v2, v59

    .end local v2    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    return-object v2
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Brightpass;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Brightpass;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    return-object v0
.end method

.method protected bridge synthetic getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;->getEffect()Lcom/sun/scenario/effect/Brightpass;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/java/JSWBrightpassPeer;
    return-object v0
.end method
