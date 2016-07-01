.class public abstract Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;
.super Lcom/sun/scenario/effect/impl/EffectPeer;
.source "JSWEffectPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/impl/EffectPeer",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final FVALS_A:I = 0x3

.field protected static final FVALS_B:I = 0x2

.field protected static final FVALS_G:I = 0x1

.field protected static final FVALS_R:I


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/EffectPeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final faccum([FIF[F)V
    .locals 13

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "map":[F
    move v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "mul":F
    move-object/from16 v4, p4

    .local v4, "fvals":[F
    move-object v5, v4

    const/4 v6, 0x0

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 139
    move-object v5, v4

    const/4 v6, 0x1

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 140
    move-object v5, v4

    const/4 v6, 0x2

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 141
    move-object v5, v4

    const/4 v6, 0x3

    move-object v11, v5

    move v12, v6

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    move v8, v12

    aget v7, v7, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 142
    return-void
.end method

.method protected final fsample([FFFIII[F)V
    .locals 17

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
    move-object/from16 v1, p1

    .local v1, "map":[F
    move/from16 v2, p2

    .local v2, "floc_x":F
    move/from16 v3, p3

    .local v3, "floc_y":F
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "scan":I
    move-object/from16 v7, p7

    .local v7, "fvals":[F
    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 150
    move-object v12, v7

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 151
    move-object v12, v7

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 152
    move-object v12, v7

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 156
    move v12, v2

    move v13, v4

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    move v2, v12

    .line 157
    move v12, v3

    move v13, v5

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    move v3, v12

    .line 158
    move v12, v2

    float-to-int v12, v12

    move v8, v12

    .line 159
    .local v8, "iloc_x":I
    move v12, v3

    float-to-int v12, v12

    move v9, v12

    .line 162
    .local v9, "iloc_y":I
    move v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    move v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    move v12, v8

    move v13, v4

    if-gt v12, v13, :cond_3

    move v12, v9

    move v13, v5

    if-gt v12, v13, :cond_3

    .line 163
    move v12, v2

    move v13, v8

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move v2, v12

    .line 164
    move v12, v3

    move v13, v9

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move v3, v12

    .line 166
    const/4 v12, 0x4

    move v13, v9

    move v14, v6

    mul-int/2addr v13, v14

    move v14, v8

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    move v10, v12

    .line 167
    .local v10, "offset":I
    move v12, v2

    move v13, v3

    mul-float/2addr v12, v13

    move v11, v12

    .line 168
    .local v11, "fract":F
    move v12, v9

    move v13, v5

    if-ge v12, v13, :cond_1

    .line 169
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_0

    .line 170
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move v15, v11

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->faccum([FIF[F)V

    .line 172
    :cond_0
    move v12, v8

    if-lez v12, :cond_1

    .line 173
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    const/4 v15, 0x4

    add-int/lit8 v14, v14, -0x4

    move v15, v3

    move/from16 v16, v11

    sub-float v15, v15, v16

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->faccum([FIF[F)V

    .line 176
    :cond_1
    move v12, v9

    if-lez v12, :cond_3

    .line 177
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_2

    .line 178
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move v15, v6

    const/16 v16, 0x4

    mul-int/lit8 v15, v15, 0x4

    sub-int/2addr v14, v15

    move v15, v2

    move/from16 v16, v11

    sub-float v15, v15, v16

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->faccum([FIF[F)V

    .line 180
    :cond_2
    move v12, v8

    if-lez v12, :cond_3

    .line 181
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move v15, v6

    const/16 v16, 0x4

    mul-int/lit8 v15, v15, 0x4

    sub-int/2addr v14, v15

    const/4 v15, 0x4

    add-int/lit8 v14, v14, -0x4

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v2

    sub-float v15, v15, v16

    move/from16 v16, v3

    sub-float v15, v15, v16

    move/from16 v16, v11

    add-float v15, v15, v16

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->faccum([FIF[F)V

    .line 185
    .end local v10    # "offset":I
    .end local v11    # "fract":F
    :cond_3
    return-void
.end method

.method protected final laccum(IF[F)V
    .locals 11

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
    move v1, p1

    .local v1, "pixel":I
    move v2, p2

    .local v2, "mul":F
    move-object v3, p3

    .local v3, "fvals":[F
    move v4, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    move v2, v4

    .line 46
    move-object v4, v3

    const/4 v5, 0x0

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 47
    move-object v4, v3

    const/4 v5, 0x1

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move v7, v1

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 48
    move-object v4, v3

    const/4 v5, 0x2

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move v7, v1

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 49
    move-object v4, v3

    const/4 v5, 0x3

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move v7, v1

    const/16 v8, 0x18

    ushr-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 50
    return-void
.end method

.method protected final laccumsample([IFFIIIF[F)V
    .locals 17

    .prologue
    .line 100
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
    move-object/from16 v1, p1

    .local v1, "img":[I
    move/from16 v2, p2

    .local v2, "fpix_x":F
    move/from16 v3, p3

    .local v3, "fpix_y":F
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "scan":I
    move/from16 v7, p7

    .local v7, "factor":F
    move-object/from16 v8, p8

    .local v8, "fvals":[F
    move v13, v7

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v13, v14

    move v7, v13

    .line 104
    move v13, v2

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    move v2, v13

    .line 105
    move v13, v3

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    move v3, v13

    .line 106
    move v13, v2

    float-to-int v13, v13

    move v9, v13

    .line 107
    .local v9, "ipix_x":I
    move v13, v3

    float-to-int v13, v13

    move v10, v13

    .line 110
    .local v10, "ipix_y":I
    move v13, v2

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move v13, v9

    move v14, v4

    if-gt v13, v14, :cond_3

    move v13, v10

    move v14, v5

    if-gt v13, v14, :cond_3

    .line 111
    move v13, v2

    move v14, v9

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move v2, v13

    .line 112
    move v13, v3

    move v14, v10

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move v3, v13

    .line 114
    move v13, v10

    move v14, v6

    mul-int/2addr v13, v14

    move v14, v9

    add-int/2addr v13, v14

    move v11, v13

    .line 115
    .local v11, "offset":I
    move v13, v2

    move v14, v3

    mul-float/2addr v13, v14

    move v12, v13

    .line 116
    .local v12, "fract":F
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_1

    .line 117
    move v13, v9

    move v14, v4

    if-ge v13, v14, :cond_0

    .line 118
    move-object v13, v0

    move-object v14, v1

    move v15, v11

    aget v14, v14, v15

    move v15, v12

    move/from16 v16, v7

    mul-float v15, v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 120
    :cond_0
    move v13, v9

    if-lez v13, :cond_1

    .line 121
    move-object v13, v0

    move-object v14, v1

    move v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    move v15, v3

    move/from16 v16, v12

    sub-float v15, v15, v16

    move/from16 v16, v7

    mul-float v15, v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 124
    :cond_1
    move v13, v10

    if-lez v13, :cond_3

    .line 125
    move v13, v9

    move v14, v4

    if-ge v13, v14, :cond_2

    .line 126
    move-object v13, v0

    move-object v14, v1

    move v15, v11

    move/from16 v16, v6

    sub-int v15, v15, v16

    aget v14, v14, v15

    move v15, v2

    move/from16 v16, v12

    sub-float v15, v15, v16

    move/from16 v16, v7

    mul-float v15, v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 128
    :cond_2
    move v13, v9

    if-lez v13, :cond_3

    .line 129
    move-object v13, v0

    move-object v14, v1

    move v15, v11

    move/from16 v16, v6

    sub-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v2

    sub-float v15, v15, v16

    move/from16 v16, v3

    sub-float v15, v15, v16

    move/from16 v16, v12

    add-float v15, v15, v16

    move/from16 v16, v7

    mul-float v15, v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v16}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 133
    .end local v11    # "offset":I
    .end local v12    # "fract":F
    :cond_3
    return-void
.end method

.method protected final lsample([IFFIII[F)V
    .locals 16

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;, "Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer<TT;>;"
    move-object/from16 v1, p1

    .local v1, "img":[I
    move/from16 v2, p2

    .local v2, "floc_x":F
    move/from16 v3, p3

    .local v3, "floc_y":F
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "scan":I
    move-object/from16 v7, p7

    .local v7, "fvals":[F
    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 58
    move-object v12, v7

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 59
    move-object v12, v7

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 60
    move-object v12, v7

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 64
    move v12, v2

    move v13, v4

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    move v2, v12

    .line 65
    move v12, v3

    move v13, v5

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    move v3, v12

    .line 66
    move v12, v2

    float-to-int v12, v12

    move v8, v12

    .line 67
    .local v8, "iloc_x":I
    move v12, v3

    float-to-int v12, v12

    move v9, v12

    .line 70
    .local v9, "iloc_y":I
    move v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    move v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    move v12, v8

    move v13, v4

    if-gt v12, v13, :cond_3

    move v12, v9

    move v13, v5

    if-gt v12, v13, :cond_3

    .line 71
    move v12, v2

    move v13, v8

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move v2, v12

    .line 72
    move v12, v3

    move v13, v9

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move v3, v12

    .line 74
    move v12, v9

    move v13, v6

    mul-int/2addr v12, v13

    move v13, v8

    add-int/2addr v12, v13

    move v10, v12

    .line 75
    .local v10, "offset":I
    move v12, v2

    move v13, v3

    mul-float/2addr v12, v13

    move v11, v12

    .line 76
    .local v11, "fract":F
    move v12, v9

    move v13, v5

    if-ge v12, v13, :cond_1

    .line 77
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_0

    .line 78
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    aget v13, v13, v14

    move v14, v11

    move-object v15, v7

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 80
    :cond_0
    move v12, v8

    if-lez v12, :cond_1

    .line 81
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move v14, v3

    move v15, v11

    sub-float/2addr v14, v15

    move-object v15, v7

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 84
    :cond_1
    move v12, v9

    if-lez v12, :cond_3

    .line 85
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_2

    .line 86
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move v15, v6

    sub-int/2addr v14, v15

    aget v13, v13, v14

    move v14, v2

    move v15, v11

    sub-float/2addr v14, v15

    move-object v15, v7

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 88
    :cond_2
    move v12, v8

    if-lez v12, :cond_3

    .line 89
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    move v15, v2

    sub-float/2addr v14, v15

    move v15, v3

    sub-float/2addr v14, v15

    move v15, v11

    add-float/2addr v14, v15

    move-object v15, v7

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/scenario/effect/impl/sw/java/JSWEffectPeer;->laccum(IF[F)V

    .line 93
    .end local v10    # "offset":I
    .end local v11    # "fract":F
    :cond_3
    return-void
.end method
