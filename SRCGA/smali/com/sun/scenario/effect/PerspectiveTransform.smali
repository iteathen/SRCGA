.class public Lcom/sun/scenario/effect/PerspectiveTransform;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "PerspectiveTransform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">;"
    }
.end annotation


# instance fields
.field private devcoords:[F

.field private llx:F

.field private lly:F

.field private lrx:F

.field private lry:F

.field private final state:Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

.field private tx:[[F

.field private ulx:F

.field private uly:F

.field private urx:F

.field private ury:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/PerspectiveTransform;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/PerspectiveTransform;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 12

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 39
    move-object v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    .line 41
    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    .line 42
    move-object v2, v0

    new-instance v3, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;-><init>()V

    iput-object v3, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->state:Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual/range {v2 .. v10}, Lcom/sun/scenario/effect/PerspectiveTransform;->setQuadMapping(FFFFFFFF)V

    .line 51
    move-object v2, v0

    const-string v3, "PerspectiveTransform"

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/PerspectiveTransform;->updatePeerKey(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private setUnitQuadMapping(FFFFFFFF)V
    .locals 22

    .prologue
    .line 108
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move/from16 v2, p1

    .local v2, "ulx":F
    move/from16 v3, p2

    .local v3, "uly":F
    move/from16 v4, p3

    .local v4, "urx":F
    move/from16 v5, p4

    .local v5, "ury":F
    move/from16 v6, p5

    .local v6, "lrx":F
    move/from16 v7, p6

    .local v7, "lry":F
    move/from16 v8, p7

    .local v8, "llx":F
    move/from16 v9, p8

    .local v9, "lly":F
    move/from16 v17, v2

    move/from16 v18, v4

    sub-float v17, v17, v18

    move/from16 v18, v6

    add-float v17, v17, v18

    move/from16 v18, v8

    sub-float v17, v17, v18

    move/from16 v10, v17

    .line 109
    .local v10, "dx3":F
    move/from16 v17, v3

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v18, v7

    add-float v17, v17, v18

    move/from16 v18, v9

    sub-float v17, v17, v18

    move/from16 v11, v17

    .line 111
    .local v11, "dy3":F
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 113
    move/from16 v17, v10

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v17, v11

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 114
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move/from16 v19, v4

    move/from16 v20, v2

    sub-float v19, v19, v20

    aput v19, v17, v18

    .line 115
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move/from16 v19, v6

    move/from16 v20, v4

    sub-float v19, v19, v20

    aput v19, v17, v18

    .line 116
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move/from16 v19, v2

    aput v19, v17, v18

    .line 117
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move/from16 v19, v5

    move/from16 v20, v3

    sub-float v19, v19, v20

    aput v19, v17, v18

    .line 118
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move/from16 v19, v7

    move/from16 v20, v5

    sub-float v19, v19, v20

    aput v19, v17, v18

    .line 119
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move/from16 v19, v3

    aput v19, v17, v18

    .line 120
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 121
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 138
    :goto_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->state:Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->updateTx([[F)V

    .line 139
    return-void

    .line 123
    :cond_0
    move/from16 v17, v4

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 124
    .local v12, "dx1":F
    move/from16 v17, v5

    move/from16 v18, v7

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 125
    .local v13, "dy1":F
    move/from16 v17, v8

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 126
    .local v14, "dx2":F
    move/from16 v17, v9

    move/from16 v18, v7

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 128
    .local v15, "dy2":F
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v12

    move/from16 v19, v15

    mul-float v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v13

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 129
    .local v16, "invdet":F
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v20, v15

    mul-float v19, v19, v20

    move/from16 v20, v14

    move/from16 v21, v11

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v20, v16

    mul-float v19, v19, v20

    aput v19, v17, v18

    .line 130
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move/from16 v19, v12

    move/from16 v20, v11

    mul-float v19, v19, v20

    move/from16 v20, v10

    move/from16 v21, v13

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v20, v16

    mul-float v19, v19, v20

    aput v19, v17, v18

    .line 131
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move/from16 v19, v4

    move/from16 v20, v2

    sub-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v21, v4

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 132
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move/from16 v19, v8

    move/from16 v20, v2

    sub-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v21, v8

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 133
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move/from16 v19, v2

    aput v19, v17, v18

    .line 134
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move/from16 v19, v5

    move/from16 v20, v3

    sub-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v21, v5

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 135
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move/from16 v19, v9

    move/from16 v20, v3

    sub-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v21, v9

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 136
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move/from16 v19, v3

    aput v19, v17, v18

    goto/16 :goto_0
.end method

.method private setupDevCoords(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->ulx:F

    aput v4, v2, v3

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->uly:F

    aput v4, v2, v3

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->urx:F

    aput v4, v2, v3

    .line 178
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->ury:F

    aput v4, v2, v3

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x4

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->lrx:F

    aput v4, v2, v3

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x5

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->lry:F

    aput v4, v2, v3

    .line 181
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x6

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->llx:F

    aput v4, v2, v3

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x7

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->lly:F

    aput v4, v2, v3

    .line 183
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 184
    return-void
.end method

.method private setupTransforms(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 12

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/PerspectiveTransform;->setupDevCoords(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 254
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/sun/scenario/effect/PerspectiveTransform;->setUnitQuadMapping(FFFFFFFF)V

    .line 258
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 22

    .prologue
    .line 193
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object/from16 v2, p1

    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v5, p4

    .local v5, "renderHelper":Ljava/lang/Object;
    move-object/from16 v6, p5

    .local v6, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v12, v1

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/scenario/effect/PerspectiveTransform;->setupTransforms(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 194
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/sun/scenario/effect/PerspectiveTransform;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;

    move-result-object v12

    move-object v7, v12

    .line 196
    .local v7, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object v12, v1

    const/4 v13, 0x0

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/effect/PerspectiveTransform;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v12

    move-object v8, v12

    .line 197
    .local v8, "input":Lcom/sun/scenario/effect/Effect;
    move-object v12, v7

    const/4 v13, 0x0

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Lcom/sun/scenario/effect/impl/state/RenderState;->getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v12

    move-object v9, v12

    .line 198
    .local v9, "inputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v12, v8

    move-object v13, v2

    sget-object v14, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v15, v9

    const/16 v16, 0x0

    move-object/from16 v17, v6

    .line 199
    invoke-virtual/range {v12 .. v17}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v12

    move-object v10, v12

    .line 201
    .local v10, "inputData":Lcom/sun/scenario/effect/ImageData;
    move-object v12, v10

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 202
    move-object v12, v10

    invoke-virtual {v12}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 203
    new-instance v12, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v2

    const/4 v15, 0x0

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v1, v12

    .line 207
    .end local v1    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    :goto_0
    return-object v1

    .line 205
    .restart local v1    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    :cond_0
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v7

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v10

    aput-object v20, v18, v19

    invoke-virtual/range {v12 .. v17}, Lcom/sun/scenario/effect/PerspectiveTransform;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v12

    move-object v11, v12

    .line 206
    .local v11, "ret":Lcom/sun/scenario/effect/ImageData;
    move-object v12, v10

    invoke-virtual {v12}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 207
    move-object v12, v11

    move-object v1, v12

    goto :goto_0
.end method

.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public bridge synthetic getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/PerspectiveTransform;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;
    .locals 15

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object/from16 v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/scenario/effect/PerspectiveTransform;->setupDevCoords(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 163
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    move v14, v8

    move v8, v14

    move v9, v14

    move v5, v9

    .local v5, "maxx":F
    move v3, v8

    .line 164
    .local v3, "minx":F
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move v14, v8

    move v8, v14

    move v9, v14

    move v6, v9

    .local v6, "maxy":F
    move v4, v8

    .line 165
    .local v4, "miny":F
    const/4 v8, 0x2

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 166
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v10, v7

    aget v9, v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v9, v7

    aget v8, v8, v9

    move v3, v8

    .line 168
    :cond_0
    :goto_1
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v4, v8

    .line 165
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 167
    :cond_2
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v10, v7

    aget v9, v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v9, v7

    aget v8, v8, v9

    move v5, v8

    goto :goto_1

    .line 169
    :cond_3
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/PerspectiveTransform;->devcoords:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move v6, v8

    goto :goto_2

    .line 171
    :cond_4
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 8

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    move-object v3, v4

    .line 285
    .local v3, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v3

    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/PerspectiveTransform;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->deriveWithNewRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    .line 287
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/PerspectiveTransform;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->UnclippedUserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 11

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/PerspectiveTransform;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v4, v5

    .line 216
    .local v4, "ob":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 217
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/PerspectiveTransform;->state:Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return v0
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/PerspectiveTransform;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 77
    return-void
.end method

.method public final setQuadMapping(FFFFFFFF)V
    .locals 11

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move v1, p1

    .local v1, "ulx":F
    move v2, p2

    .local v2, "uly":F
    move v3, p3

    .local v3, "urx":F
    move v4, p4

    .local v4, "ury":F
    move/from16 v5, p5

    .local v5, "lrx":F
    move/from16 v6, p6

    .local v6, "lry":F
    move/from16 v7, p7

    .local v7, "llx":F
    move/from16 v8, p8

    .local v8, "lly":F
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->ulx:F

    .line 147
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->uly:F

    .line 148
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->urx:F

    .line 149
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->ury:F

    .line 150
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->lrx:F

    .line 151
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->lry:F

    .line 152
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->llx:F

    .line 153
    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/scenario/effect/PerspectiveTransform;->lly:F

    .line 154
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 16

    .prologue
    .line 222
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object/from16 v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v10, v0

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-direct {v10, v11}, Lcom/sun/scenario/effect/PerspectiveTransform;->setupTransforms(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 223
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/PerspectiveTransform;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v10

    move-object v3, v10

    .line 224
    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v10, v3

    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v10

    move-object v1, v10

    .line 225
    move-object v10, v3

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v4, v10

    .line 226
    .local v4, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v11

    sub-float/2addr v10, v11

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v11

    div-float/2addr v10, v11

    move v5, v10

    .line 227
    .local v5, "sx":F
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v11

    sub-float/2addr v10, v11

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v11

    div-float/2addr v10, v11

    move v6, v10

    .line 228
    .local v6, "sy":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v7, v10

    .line 229
    .local v7, "dx":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v8, v10

    .line 230
    .local v8, "dy":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->tx:[[F

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget v11, v11, v12

    add-float/2addr v10, v11

    move v9, v10

    .line 231
    .local v9, "dw":F
    new-instance v10, Lcom/sun/javafx/geom/Point2D;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move v12, v7

    move v13, v9

    div-float/2addr v12, v13

    move v13, v8

    move v14, v9

    div-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v10

    .line 232
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 18

    .prologue
    .line 237
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    move-object/from16 v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v11, v0

    sget-object v12, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-direct {v11, v12}, Lcom/sun/scenario/effect/PerspectiveTransform;->setupTransforms(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 238
    move-object v11, v0

    const/4 v12, 0x0

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/scenario/effect/PerspectiveTransform;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    move-object v3, v11

    .line 239
    .local v3, "input":Lcom/sun/scenario/effect/Effect;
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->x:F

    move v4, v11

    .line 240
    .local v4, "dx":F
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    move v5, v11

    .line 241
    .local v5, "dy":F
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/PerspectiveTransform;->state:Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;

    invoke-virtual {v11}, Lcom/sun/scenario/effect/impl/state/PerspectiveTransformState;->getITX()[[F

    move-result-object v11

    move-object v6, v11

    .line 242
    .local v6, "itx":[[F
    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v4

    mul-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    move v13, v5

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    add-float/2addr v11, v12

    move v7, v11

    .line 243
    .local v7, "sx":F
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v4

    mul-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    move v13, v5

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    add-float/2addr v11, v12

    move v8, v11

    .line 244
    .local v8, "sy":F
    move-object v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v4

    mul-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget v12, v12, v13

    move v13, v5

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v6

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    add-float/2addr v11, v12

    move v9, v11

    .line 245
    .local v9, "sw":F
    move-object v11, v3

    sget-object v12, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v10, v11

    .line 246
    .local v10, "b":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v11, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v13

    move v14, v7

    move v15, v9

    div-float/2addr v14, v15

    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v10

    .line 247
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v14

    move v15, v8

    move/from16 v16, v9

    div-float v15, v15, v16

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v1, v11

    .line 248
    move-object v11, v0

    const/4 v12, 0x0

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/scenario/effect/PerspectiveTransform;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v11

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v11

    move-object v1, v11

    .line 249
    move-object v11, v1

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/scenario/effect/PerspectiveTransform;
    return-object v0
.end method
