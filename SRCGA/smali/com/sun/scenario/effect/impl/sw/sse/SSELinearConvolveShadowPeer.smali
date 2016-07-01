.class public Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
.super Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;
.source "SSELinearConvolveShadowPeer.java"


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
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

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolvePeer;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static native filterHV([IIIII[IIIII[F[F)V
.end method

.method private static native filterVector([IIII[IIII[FIFFFFFF[FFFFF)V
.end method

.method private getShadowColor()[F
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;->getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassShadowColorComponents()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
    return-object v0
.end method


# virtual methods
.method filterHV([IIIII[IIIII[F)V
    .locals 24

    .prologue
    .line 93
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
    move-object/from16 v1, p1

    .local v1, "dstPixels":[I
    move/from16 v2, p2

    .local v2, "dstcols":I
    move/from16 v3, p3

    .local v3, "dstrows":I
    move/from16 v4, p4

    .local v4, "dcolinc":I
    move/from16 v5, p5

    .local v5, "drowinc":I
    move-object/from16 v6, p6

    .local v6, "srcPixels":[I
    move/from16 v7, p7

    .local v7, "srccols":I
    move/from16 v8, p8

    .local v8, "srcrows":I
    move/from16 v9, p9

    .local v9, "scolinc":I
    move/from16 v10, p10

    .local v10, "srowinc":I
    move-object/from16 v11, p11

    .local v11, "weights":[F
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v0

    .line 95
    invoke-direct/range {v23 .. v23}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;->getShadowColor()[F

    move-result-object v23

    .line 93
    invoke-static/range {v12 .. v23}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;->filterHV([IIIII[IIIII[F[F)V

    .line 96
    return-void
.end method

.method filterVector([IIII[IIII[FIFFFFFFFFFF)V
    .locals 42

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;
    move-object/from16 v1, p1

    .local v1, "dstPixels":[I
    move/from16 v2, p2

    .local v2, "dstw":I
    move/from16 v3, p3

    .local v3, "dsth":I
    move/from16 v4, p4

    .local v4, "dstscan":I
    move-object/from16 v5, p5

    .local v5, "srcPixels":[I
    move/from16 v6, p6

    .local v6, "srcw":I
    move/from16 v7, p7

    .local v7, "srch":I
    move/from16 v8, p8

    .local v8, "srcscan":I
    move-object/from16 v9, p9

    .local v9, "weights":[F
    move/from16 v10, p10

    .local v10, "count":I
    move/from16 v11, p11

    .local v11, "srcx0":F
    move/from16 v12, p12

    .local v12, "srcy0":F
    move/from16 v13, p13

    .local v13, "offsetx":F
    move/from16 v14, p14

    .local v14, "offsety":F
    move/from16 v15, p15

    .local v15, "deltax":F
    move/from16 v16, p16

    .local v16, "deltay":F
    move/from16 v17, p17

    .local v17, "dxcol":F
    move/from16 v18, p18

    .local v18, "dycol":F
    move/from16 v19, p19

    .local v19, "dxrow":F
    move/from16 v20, p20

    .local v20, "dyrow":F
    move-object/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v15

    move/from16 v36, v16

    move-object/from16 v37, v0

    .line 70
    invoke-direct/range {v37 .. v37}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;->getShadowColor()[F

    move-result-object v37

    move/from16 v38, v17

    move/from16 v39, v18

    move/from16 v40, v19

    move/from16 v41, v20

    .line 65
    invoke-static/range {v21 .. v41}, Lcom/sun/scenario/effect/impl/sw/sse/SSELinearConvolveShadowPeer;->filterVector([IIII[IIII[FIFFFFFF[FFFFF)V

    .line 72
    return-void
.end method
