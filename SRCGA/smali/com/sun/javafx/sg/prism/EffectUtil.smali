.class Lcom/sun/javafx/sg/prism/EffectUtil;
.super Ljava/lang/Object;
.source "EffectUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TEX_SIZE:I = 0x100

.field private static dtex:Lcom/sun/prism/Texture;

.field private static itex:Lcom/sun/prism/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sun/javafx/sg/prism/EffectUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/sg/prism/EffectUtil;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method static drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
    .locals 24

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "cx1":F
    move/from16 v3, p3

    .local v3, "cy1":F
    move/from16 v4, p4

    .local v4, "cx2":F
    move/from16 v5, p5

    .local v5, "cy2":F
    move/from16 v6, p6

    .local v6, "ox1":F
    move/from16 v7, p7

    .local v7, "oy1":F
    move/from16 v8, p8

    .local v8, "ox2":F
    move/from16 v9, p9

    .local v9, "oy2":F
    move/from16 v10, p10

    .local v10, "tx1":F
    move/from16 v11, p11

    .local v11, "ty1":F
    move/from16 v12, p12

    .local v12, "tx2":F
    move/from16 v13, p13

    .local v13, "ty2":F
    move v14, v6

    move v15, v8

    cmpl-float v14, v14, v15

    if-gez v14, :cond_0

    move v14, v7

    move v15, v9

    cmpl-float v14, v14, v15

    if-gez v14, :cond_0

    move v14, v2

    move v15, v4

    cmpl-float v14, v14, v15

    if-gez v14, :cond_0

    move v14, v3

    move v15, v5

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    move v14, v8

    move v15, v2

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    move v14, v6

    move v15, v4

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    .line 216
    move v14, v6

    move v15, v2

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 217
    move v14, v10

    move v15, v12

    move/from16 v16, v10

    sub-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v6

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v6

    sub-float v16, v16, v17

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move v10, v14

    .line 218
    move v14, v2

    move v6, v14

    .line 220
    :cond_2
    move v14, v8

    move v15, v4

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 221
    move v14, v12

    move v15, v12

    move/from16 v16, v10

    sub-float v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v4

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v6

    sub-float v16, v16, v17

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move v12, v14

    .line 222
    move v14, v4

    move v8, v14

    .line 227
    :cond_3
    move v14, v9

    move v15, v3

    cmpl-float v14, v14, v15

    if-lez v14, :cond_7

    move v14, v7

    move v15, v5

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 228
    move v14, v7

    move v15, v3

    cmpg-float v14, v14, v15

    if-gez v14, :cond_4

    .line 229
    move v14, v11

    move v15, v13

    move/from16 v16, v11

    sub-float v15, v15, v16

    move/from16 v16, v3

    move/from16 v17, v7

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move/from16 v16, v9

    move/from16 v17, v7

    sub-float v16, v16, v17

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move v11, v14

    .line 230
    move v14, v3

    move v7, v14

    .line 232
    :cond_4
    move v14, v9

    move v15, v5

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    .line 233
    move v14, v13

    move v15, v13

    move/from16 v16, v11

    sub-float v15, v15, v16

    move/from16 v16, v9

    move/from16 v17, v5

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    move/from16 v16, v9

    move/from16 v17, v7

    sub-float v16, v16, v17

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move v13, v14

    .line 234
    move v14, v5

    move v9, v14

    .line 239
    :cond_5
    move-object v14, v0

    move-object v15, v1

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    invoke-interface/range {v14 .. v23}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 240
    goto/16 :goto_0

    .line 225
    :cond_6
    goto/16 :goto_0

    .line 237
    :cond_7
    goto/16 :goto_0
.end method

.method private static fillGaussian([BIFFZ)V
    .locals 23

    .prologue
    .line 303
    move-object/from16 v3, p0

    .local v3, "pixels":[B
    move/from16 v4, p1

    .local v4, "dim":I
    move/from16 v5, p2

    .local v5, "r":F
    move/from16 v6, p3

    .local v6, "spread":F
    move/from16 v7, p4

    .local v7, "inner":Z
    move/from16 v17, v5

    const/high16 v18, 0x40400000    # 3.0f

    div-float v17, v17, v18

    move/from16 v8, v17

    .line 304
    .local v8, "sigma":F
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v9, v17

    .line 305
    .local v9, "sigma22":F
    move/from16 v17, v9

    const/16 v18, 0x1

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    .line 307
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 310
    :cond_0
    move/from16 v17, v4

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 311
    .local v10, "kvals":[F
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v11, v17

    .line 312
    .local v11, "center":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 313
    .local v12, "total":F
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_0
    move/from16 v17, v13

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 314
    move/from16 v17, v11

    move/from16 v18, v13

    sub-int v17, v17, v18

    move/from16 v14, v17

    .line 315
    .local v14, "d":I
    move/from16 v17, v12

    move/from16 v18, v14

    move/from16 v19, v14

    mul-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v12, v17

    .line 316
    move-object/from16 v17, v10

    move/from16 v18, v13

    move/from16 v19, v12

    aput v19, v17, v18

    .line 313
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 319
    .end local v14    # "d":I
    :cond_1
    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_1
    move/from16 v17, v13

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 320
    move-object/from16 v17, v10

    move/from16 v18, v13

    move-object/from16 v21, v17

    move/from16 v22, v18

    move-object/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v21

    move/from16 v20, v22

    aget v19, v19, v20

    move/from16 v20, v12

    div-float v19, v19, v20

    aput v19, v17, v18

    .line 319
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 322
    :cond_2
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "y":I
    :goto_2
    move/from16 v17, v13

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 323
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "x":I
    :goto_3
    move/from16 v17, v14

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 324
    move-object/from16 v17, v10

    move/from16 v18, v13

    aget v17, v17, v18

    move-object/from16 v18, v10

    move/from16 v19, v14

    aget v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v15, v17

    .line 325
    .local v15, "v":F
    move/from16 v17, v7

    if-eqz v17, :cond_3

    .line 327
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v15

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 329
    :cond_3
    move/from16 v17, v15

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v16, v17

    .line 331
    .local v16, "a":I
    move/from16 v17, v16

    if-gez v17, :cond_5

    const/16 v17, 0x0

    move/from16 v16, v17

    .line 332
    :cond_4
    :goto_4
    move-object/from16 v17, v3

    move/from16 v18, v13

    move/from16 v19, v4

    mul-int v18, v18, v19

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 323
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 331
    :cond_5
    move/from16 v17, v16

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/16 v17, 0xff

    move/from16 v16, v17

    goto :goto_4

    .line 322
    .end local v15    # "v":F
    .end local v16    # "a":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 335
    .end local v14    # "x":I
    :cond_7
    return-void
.end method

.method static renderEffectForRectangularNode(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/Effect;FZFFFF)Z
    .locals 18

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v2, p2

    .local v2, "effect":Lcom/sun/scenario/effect/Effect;
    move/from16 v3, p3

    .local v3, "alpha":F
    move/from16 v4, p4

    .local v4, "aa":Z
    move/from16 v5, p5

    .local v5, "rx":F
    move/from16 v6, p6

    .local v6, "ry":F
    move/from16 v7, p7

    .local v7, "rw":F
    move/from16 v8, p8

    .local v8, "rh":F
    move-object v11, v1

    invoke-interface {v11}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v1

    invoke-interface {v11}, Lcom/sun/prism/Graphics;->isDepthBuffer()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-interface {v11}, Lcom/sun/prism/Graphics;->isDepthTest()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 92
    const/4 v11, 0x0

    move v0, v11

    .line 125
    .end local v0    # "node":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return v0

    .line 94
    .restart local v0    # "node":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v11, v2

    instance-of v11, v11, Lcom/sun/scenario/effect/InnerShadow;

    if-eqz v11, :cond_2

    move v11, v4

    if-nez v11, :cond_2

    .line 97
    move-object v11, v2

    check-cast v11, Lcom/sun/scenario/effect/InnerShadow;

    move-object v9, v11

    .line 98
    .local v9, "shadow":Lcom/sun/scenario/effect/InnerShadow;
    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/scenario/effect/InnerShadow;->getRadius()F

    move-result v11

    move v10, v11

    .line 99
    .local v10, "radius":F
    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move v11, v10

    move v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move v11, v10

    move v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move-object v11, v9

    .line 102
    invoke-virtual {v11}, Lcom/sun/scenario/effect/InnerShadow;->getChoke()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    move-object v11, v9

    .line 103
    invoke-virtual {v11}, Lcom/sun/scenario/effect/InnerShadow;->getShadowSourceInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    if-nez v11, :cond_1

    move-object v11, v9

    .line 104
    invoke-virtual {v11}, Lcom/sun/scenario/effect/InnerShadow;->getContentInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    if-nez v11, :cond_1

    .line 106
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 107
    move-object v11, v1

    move-object v12, v9

    move v13, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-static/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/EffectUtil;->renderRectInnerShadow(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/InnerShadow;FFFFF)V

    .line 108
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0

    .line 110
    .line 125
    .end local v9    # "shadow":Lcom/sun/scenario/effect/InnerShadow;
    .end local v10    # "radius":F
    :cond_1
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 110
    :cond_2
    move-object v11, v2

    instance-of v11, v11, Lcom/sun/scenario/effect/DropShadow;

    if-eqz v11, :cond_1

    .line 111
    move-object v11, v2

    check-cast v11, Lcom/sun/scenario/effect/DropShadow;

    move-object v9, v11

    .line 112
    .local v9, "shadow":Lcom/sun/scenario/effect/DropShadow;
    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/scenario/effect/DropShadow;->getRadius()F

    move-result v11

    move v10, v11

    .line 113
    .restart local v10    # "radius":F
    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move v11, v10

    move v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move v11, v10

    move v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    move-object v11, v9

    .line 116
    invoke-virtual {v11}, Lcom/sun/scenario/effect/DropShadow;->getSpread()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    move-object v11, v9

    .line 117
    invoke-virtual {v11}, Lcom/sun/scenario/effect/DropShadow;->getShadowSourceInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    if-nez v11, :cond_1

    move-object v11, v9

    .line 118
    invoke-virtual {v11}, Lcom/sun/scenario/effect/DropShadow;->getContentInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    if-nez v11, :cond_1

    .line 120
    move-object v11, v1

    move-object v12, v9

    move v13, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-static/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/EffectUtil;->renderRectDropShadow(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/DropShadow;FFFFF)V

    .line 121
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 122
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0
.end method

.method static renderRectDropShadow(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/DropShadow;FFFFF)V
    .locals 30

    .prologue
    .line 245
    move-object/from16 v2, p0

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v3, p1

    .local v3, "shadow":Lcom/sun/scenario/effect/DropShadow;
    move/from16 v4, p2

    .local v4, "alpha":F
    move/from16 v5, p3

    .local v5, "rx":F
    move/from16 v6, p4

    .local v6, "ry":F
    move/from16 v7, p5

    .local v7, "rw":F
    move/from16 v8, p6

    .local v8, "rh":F
    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    if-nez v19, :cond_1

    .line 246
    const/high16 v19, 0x10000

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 247
    .local v9, "sdata":[B
    move-object/from16 v19, v9

    const/16 v20, 0x100

    const/high16 v21, 0x43000000    # 128.0f

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/scenario/effect/DropShadow;->getSpread()F

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v19 .. v23}, Lcom/sun/javafx/sg/prism/EffectUtil;->fillGaussian([BIFFZ)V

    .line 249
    move-object/from16 v19, v9

    const/16 v20, 0x100

    const/16 v21, 0x100

    invoke-static/range {v19 .. v21}, Lcom/sun/prism/Image;->fromByteAlphaData([BII)Lcom/sun/prism/Image;

    move-result-object v19

    move-object/from16 v10, v19

    .line 250
    .local v10, "img":Lcom/sun/prism/Image;
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v19

    move-object/from16 v20, v10

    sget-object v21, Lcom/sun/prism/Texture$Usage;->STATIC:Lcom/sun/prism/Texture$Usage;

    sget-object v22, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v19 .. v22}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v19

    sput-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    .line 254
    sget-boolean v19, Lcom/sun/javafx/sg/prism/EffectUtil;->$assertionsDisabled:Z

    if-nez v19, :cond_0

    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v19

    sget-object v20, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    move-object/from16 v29, v19

    move-object/from16 v19, v29

    move-object/from16 v20, v29

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 255
    :cond_0
    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 256
    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 258
    .end local v9    # "sdata":[B
    .end local v10    # "img":Lcom/sun/prism/Image;
    :cond_1
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/scenario/effect/DropShadow;->getRadius()F

    move-result v19

    move/from16 v9, v19

    .line 259
    .local v9, "r":F
    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v19

    move/from16 v10, v19

    .line 260
    .local v10, "texsize":I
    sget-object v19, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v19

    move/from16 v11, v19

    .line 261
    .local v11, "cx1":I
    move/from16 v19, v11

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 262
    .local v12, "cx2":I
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v13, v19

    .line 263
    .local v13, "t1":F
    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v14, v19

    .line 264
    .local v14, "t2":F
    move/from16 v19, v5

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/DropShadow;->getOffsetX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v15, v19

    .line 265
    .local v15, "x1":F
    move/from16 v19, v6

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/DropShadow;->getOffsetY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 266
    .local v16, "y1":F
    move/from16 v19, v15

    move/from16 v20, v7

    add-float v19, v19, v20

    move/from16 v17, v19

    .line 267
    .local v17, "x2":F
    move/from16 v19, v16

    move/from16 v20, v8

    add-float v19, v19, v20

    move/from16 v18, v19

    .line 268
    .local v18, "y2":F
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/DropShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v20

    move/from16 v21, v4

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/sg/prism/EffectUtil;->toPrismColor(Lcom/sun/scenario/effect/Color4f;F)Lcom/sun/prism/paint/Color;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 269
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v15

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v16

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 272
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v17

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v16

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v13

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 275
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v17

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v18

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v14

    move/from16 v27, v13

    move/from16 v28, v13

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 278
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v18

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v15

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v14

    move/from16 v28, v13

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 281
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    add-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    add-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    sub-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    sub-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v14

    move/from16 v27, v14

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 284
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    add-float v22, v22, v23

    move/from16 v23, v15

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    sub-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v14

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 287
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v17

    move/from16 v22, v9

    sub-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    add-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    add-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    sub-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v14

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 290
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    add-float v21, v21, v22

    move/from16 v22, v16

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    sub-float v23, v23, v24

    move/from16 v24, v16

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v14

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 293
    move-object/from16 v19, v2

    sget-object v20, Lcom/sun/javafx/sg/prism/EffectUtil;->dtex:Lcom/sun/prism/Texture;

    move/from16 v21, v15

    move/from16 v22, v9

    add-float v21, v21, v22

    move/from16 v22, v18

    move/from16 v23, v9

    sub-float v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v9

    sub-float v23, v23, v24

    move/from16 v24, v18

    move/from16 v25, v9

    add-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v14

    move/from16 v27, v14

    move/from16 v28, v13

    invoke-interface/range {v19 .. v28}, Lcom/sun/prism/Graphics;->drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 296
    return-void
.end method

.method static renderRectInnerShadow(Lcom/sun/prism/Graphics;Lcom/sun/scenario/effect/InnerShadow;FFFFF)V
    .locals 38

    .prologue
    .line 131
    move-object/from16 v2, p0

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v3, p1

    .local v3, "shadow":Lcom/sun/scenario/effect/InnerShadow;
    move/from16 v4, p2

    .local v4, "alpha":F
    move/from16 v5, p3

    .local v5, "rx":F
    move/from16 v6, p4

    .local v6, "ry":F
    move/from16 v7, p5

    .local v7, "rw":F
    move/from16 v8, p6

    .local v8, "rh":F
    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    if-nez v23, :cond_1

    .line 132
    const/high16 v23, 0x10000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v9, v23

    .line 133
    .local v9, "sdata":[B
    move-object/from16 v23, v9

    const/16 v24, 0x100

    const/high16 v25, 0x43000000    # 128.0f

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/scenario/effect/InnerShadow;->getChoke()F

    move-result v26

    const/16 v27, 0x1

    invoke-static/range {v23 .. v27}, Lcom/sun/javafx/sg/prism/EffectUtil;->fillGaussian([BIFFZ)V

    .line 134
    move-object/from16 v23, v9

    const/16 v24, 0x100

    const/16 v25, 0x100

    invoke-static/range {v23 .. v25}, Lcom/sun/prism/Image;->fromByteAlphaData([BII)Lcom/sun/prism/Image;

    move-result-object v23

    move-object/from16 v10, v23

    .line 135
    .local v10, "img":Lcom/sun/prism/Image;
    move-object/from16 v23, v2

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v23

    move-object/from16 v24, v10

    sget-object v25, Lcom/sun/prism/Texture$Usage;->STATIC:Lcom/sun/prism/Texture$Usage;

    sget-object v26, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v23 .. v26}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v23

    sput-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    .line 139
    sget-boolean v23, Lcom/sun/javafx/sg/prism/EffectUtil;->$assertionsDisabled:Z

    if-nez v23, :cond_0

    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v23

    sget-object v24, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v23, Ljava/lang/AssertionError;

    move-object/from16 v37, v23

    move-object/from16 v23, v37

    move-object/from16 v24, v37

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 140
    :cond_0
    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 141
    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 143
    .end local v9    # "sdata":[B
    .end local v10    # "img":Lcom/sun/prism/Image;
    :cond_1
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/sun/scenario/effect/InnerShadow;->getRadius()F

    move-result v23

    move/from16 v9, v23

    .line 144
    .local v9, "r":F
    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v23

    move/from16 v10, v23

    .line 145
    .local v10, "texsize":I
    sget-object v23, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v23

    move/from16 v11, v23

    .line 146
    .local v11, "tcx1":I
    move/from16 v23, v11

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    invoke-interface/range {v24 .. v24}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v12, v23

    .line 147
    .local v12, "tcx2":I
    move/from16 v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    move/from16 v24, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v13, v23

    .line 148
    .local v13, "t1":F
    move/from16 v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    sub-float v23, v23, v24

    move/from16 v24, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v14, v23

    .line 149
    .local v14, "t2":F
    move/from16 v23, v5

    move/from16 v15, v23

    .line 150
    .local v15, "cx1":F
    move/from16 v23, v6

    move/from16 v16, v23

    .line 151
    .local v16, "cy1":F
    move/from16 v23, v5

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v17, v23

    .line 152
    .local v17, "cx2":F
    move/from16 v23, v6

    move/from16 v24, v8

    add-float v23, v23, v24

    move/from16 v18, v23

    .line 153
    .local v18, "cy2":F
    move/from16 v23, v15

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/scenario/effect/InnerShadow;->getOffsetX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v19, v23

    .line 154
    .local v19, "ox1":F
    move/from16 v23, v16

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/scenario/effect/InnerShadow;->getOffsetY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v20, v23

    .line 155
    .local v20, "oy1":F
    move/from16 v23, v19

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v21, v23

    .line 156
    .local v21, "ox2":F
    move/from16 v23, v20

    move/from16 v24, v8

    add-float v23, v23, v24

    move/from16 v22, v23

    .line 157
    .local v22, "oy2":F
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/scenario/effect/InnerShadow;->getColor()Lcom/sun/scenario/effect/Color4f;

    move-result-object v24

    move/from16 v25, v4

    invoke-static/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/EffectUtil;->toPrismColor(Lcom/sun/scenario/effect/Color4f;F)Lcom/sun/prism/paint/Color;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 159
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v15

    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v20

    move/from16 v33, v9

    sub-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v13

    move/from16 v35, v13

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 163
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v19

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v20

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v14

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 167
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v9

    add-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v21

    move/from16 v32, v9

    sub-float v31, v31, v32

    move/from16 v32, v20

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v14

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 171
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v21

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v21

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v20

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v13

    move/from16 v35, v13

    move/from16 v36, v14

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 175
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v15

    move/from16 v30, v20

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v19

    move/from16 v32, v9

    sub-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v13

    move/from16 v35, v13

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 179
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    add-float v30, v30, v31

    move/from16 v31, v19

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    sub-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v14

    move/from16 v36, v14

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 183
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v21

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    add-float v30, v30, v31

    move/from16 v31, v21

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    sub-float v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v14

    move/from16 v35, v13

    move/from16 v36, v14

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 187
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v21

    move/from16 v30, v9

    add-float v29, v29, v30

    move/from16 v30, v20

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v17

    move/from16 v32, v22

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v13

    move/from16 v35, v13

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 191
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v19

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v14

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 195
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v9

    add-float v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v21

    move/from16 v32, v9

    sub-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v14

    move/from16 v35, v14

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 199
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v21

    move/from16 v30, v9

    sub-float v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v9

    sub-float v30, v30, v31

    move/from16 v31, v21

    move/from16 v32, v9

    add-float v31, v31, v32

    move/from16 v32, v22

    move/from16 v33, v9

    add-float v32, v32, v33

    move/from16 v33, v14

    move/from16 v34, v14

    move/from16 v35, v13

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 203
    move-object/from16 v23, v2

    sget-object v24, Lcom/sun/javafx/sg/prism/EffectUtil;->itex:Lcom/sun/prism/Texture;

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v15

    move/from16 v30, v22

    move/from16 v31, v9

    add-float v30, v30, v31

    move/from16 v31, v17

    move/from16 v32, v18

    move/from16 v33, v13

    move/from16 v34, v13

    move/from16 v35, v13

    move/from16 v36, v13

    invoke-static/range {v23 .. v36}, Lcom/sun/javafx/sg/prism/EffectUtil;->drawClippedTexture(Lcom/sun/prism/Graphics;Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 207
    return-void
.end method

.method private static toPrismColor(Lcom/sun/scenario/effect/Color4f;F)Lcom/sun/prism/paint/Color;
    .locals 13

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "decoraColor":Lcom/sun/scenario/effect/Color4f;
    move v1, p1

    .local v1, "alpha":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/Color4f;->getRed()F

    move-result v6

    move v2, v6

    .line 339
    .local v2, "r":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/Color4f;->getGreen()F

    move-result v6

    move v3, v6

    .line 340
    .local v3, "g":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/Color4f;->getBlue()F

    move-result v6

    move v4, v6

    .line 341
    .local v4, "b":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/Color4f;->getAlpha()F

    move-result v6

    move v7, v1

    mul-float/2addr v6, v7

    move v5, v6

    .line 342
    .local v5, "a":F
    new-instance v6, Lcom/sun/prism/paint/Color;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    move-object v0, v6

    .end local v0    # "decoraColor":Lcom/sun/scenario/effect/Color4f;
    return-object v0
.end method
