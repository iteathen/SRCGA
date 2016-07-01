.class public abstract Lcom/sun/scenario/effect/impl/EffectPeer;
.super Ljava/lang/Object;
.source "EffectPeer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private destBounds:Lcom/sun/javafx/geom/Rectangle;

.field private final destNativeBounds:Lcom/sun/javafx/geom/Rectangle;

.field private effect:Lcom/sun/scenario/effect/Effect;

.field private final fctx:Lcom/sun/scenario/effect/FilterContext;

.field private final inputBounds:[Lcom/sun/javafx/geom/Rectangle;

.field private final inputNativeBounds:[Lcom/sun/javafx/geom/Rectangle;

.field private final inputTransforms:[Lcom/sun/javafx/geom/transform/BaseTransform;

.field private pass:I

.field private renderState:Lcom/sun/scenario/effect/impl/state/RenderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final renderer:Lcom/sun/scenario/effect/impl/Renderer;

.field private final uniqueName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/impl/Renderer;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, p3

    .local v3, "uniqueName":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 130
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sun/javafx/geom/Rectangle;

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->inputBounds:[Lcom/sun/javafx/geom/Rectangle;

    .line 150
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->inputTransforms:[Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 158
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sun/javafx/geom/Rectangle;

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->inputNativeBounds:[Lcom/sun/javafx/geom/Rectangle;

    .line 391
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->destNativeBounds:Lcom/sun/javafx/geom/Rectangle;

    .line 53
    move-object v4, v1

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "FilterContext must be non-null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->fctx:Lcom/sun/scenario/effect/FilterContext;

    .line 57
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->renderer:Lcom/sun/scenario/effect/impl/Renderer;

    .line 58
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/scenario/effect/impl/EffectPeer;->uniqueName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static getSourceRegion(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)[F
    .locals 15

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "srcBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v1, p1

    .local v1, "srcNativeBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v2, p2

    .local v2, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v3, v9

    .line 246
    .local v3, "x1":F
    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v4, v9

    .line 247
    .local v4, "y1":F
    move v9, v3

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v5, v9

    .line 248
    .local v5, "x2":F
    move v9, v4

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    move v6, v9

    .line 249
    .local v6, "y2":F
    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v9, v9

    move v7, v9

    .line 250
    .local v7, "sw":F
    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v9, v9

    move v8, v9

    .line 251
    .local v8, "sh":F
    const/4 v9, 0x4

    new-array v9, v9, [F

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v3

    move v13, v7

    div-float/2addr v12, v13

    aput v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move v12, v4

    move v13, v8

    div-float/2addr v12, v13

    aput v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move v12, v5

    move v13, v7

    div-float/2addr v12, v13

    aput v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    move v12, v6

    move v13, v8

    div-float/2addr v12, v13

    aput v12, v10, v11

    move-object v0, v9

    .end local v0    # "srcBounds":Lcom/sun/javafx/geom/Rectangle;
    return-object v0
.end method

.method public static getTextureCoordinates([FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 22

    .prologue
    .line 354
    move-object/from16 v0, p0

    .local v0, "coords":[F
    move/from16 v1, p1

    .local v1, "srcX":F
    move/from16 v2, p2

    .local v2, "srcY":F
    move/from16 v3, p3

    .local v3, "srcNativeWidth":F
    move/from16 v4, p4

    .local v4, "srcNativeHeight":F
    move-object/from16 v5, p5

    .local v5, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p6

    .local v6, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 355
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 356
    move-object v9, v0

    const/4 v10, 0x2

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v5

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 357
    move-object v9, v0

    const/4 v10, 0x3

    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object v12, v5

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 359
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 360
    move v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v10

    double-to-float v10, v10

    add-float/2addr v9, v10

    move v1, v9

    .line 361
    move v9, v2

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v10

    double-to-float v10, v10

    add-float/2addr v9, v10

    move v2, v9

    .line 362
    const/4 v9, 0x4

    move v7, v9

    .line 376
    .local v7, "numCoords":I
    :goto_0
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_1

    .line 377
    move-object v9, v0

    move v10, v8

    move-object v11, v0

    move v12, v8

    aget v11, v11, v12

    move v12, v1

    sub-float/2addr v11, v12

    move v12, v3

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 378
    move-object v9, v0

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    move v12, v2

    sub-float/2addr v11, v12

    move v12, v4

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 376
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 364
    .end local v7    # "numCoords":I
    .end local v8    # "i":I
    :cond_0
    move-object v9, v0

    const/4 v10, 0x4

    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    .line 365
    move-object v9, v0

    const/4 v10, 0x5

    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 366
    move-object v9, v0

    const/4 v10, 0x6

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    .line 367
    move-object v9, v0

    const/4 v10, 0x7

    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    aput v11, v9, v10

    .line 368
    const/16 v9, 0x8

    move v7, v9

    .line 370
    .restart local v7    # "numCoords":I
    move-object v9, v6

    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x4

    :try_start_0
    invoke-virtual/range {v9 .. v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform([FI[FII)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_0

    .line 371
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 372
    .local v8, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v0

    const/4 v12, 0x1

    move-object v13, v0

    const/4 v14, 0x2

    move-object v15, v0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v19, v15

    move/from16 v20, v16

    move/from16 v21, v17

    move/from16 v15, v21

    move-object/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    aput v18, v16, v17

    move-object/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v13, v21

    move-object/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v21

    aput v16, v14, v15

    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v11, v21

    move-object/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    aput v14, v12, v13

    aput v11, v9, v10

    .line 373
    const/4 v9, 0x4

    move v0, v9

    .line 380
    .end local v0    # "coords":[F
    .end local v8    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :goto_2
    return v0

    .restart local v0    # "coords":[F
    .local v8, "i":I
    :cond_1
    move v9, v7

    move v0, v9

    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-void
.end method

.method public varargs abstract filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/Effect;",
            "TT;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Lcom/sun/javafx/geom/Rectangle;",
            "[",
            "Lcom/sun/scenario/effect/ImageData;",
            ")",
            "Lcom/sun/scenario/effect/ImageData;"
        }
    .end annotation
.end method

.method public getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->renderer:Lcom/sun/scenario/effect/impl/Renderer;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/Renderer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getDestBounds()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->destBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getDestNativeBounds()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->destNativeBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->effect:Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getFilterContext()Lcom/sun/scenario/effect/FilterContext;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->inputBounds:[Lcom/sun/javafx/geom/Rectangle;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->inputNativeBounds:[Lcom/sun/javafx/geom/Rectangle;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected final getInputTransform(I)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->inputTransforms:[Lcom/sun/javafx/geom/transform/BaseTransform;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method public final getPass()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->pass:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return v0
.end method

.method protected getRenderState()Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->renderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected getRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->renderer:Lcom/sun/scenario/effect/impl/Renderer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/EffectPeer;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected getSamplerData(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "i":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method protected getSourceRegion(I)[F
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/EffectPeer;->getInputBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    .line 216
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/impl/EffectPeer;->getInputNativeBounds(I)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v3

    move-object v4, v0

    .line 217
    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/EffectPeer;->getDestBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v4

    .line 215
    invoke-static {v2, v3, v4}, Lcom/sun/scenario/effect/impl/EffectPeer;->getSourceRegion(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)[F

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method public getTextureCoordinates(I[FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I
    .locals 16

    .prologue
    .line 303
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move/from16 v1, p1

    .local v1, "inputIndex":I
    move-object/from16 v2, p2

    .local v2, "coords":[F
    move/from16 v3, p3

    .local v3, "srcX":F
    move/from16 v4, p4

    .local v4, "srcY":F
    move/from16 v5, p5

    .local v5, "srcNativeWidth":F
    move/from16 v6, p6

    .local v6, "srcNativeHeight":F
    move-object/from16 v7, p7

    .local v7, "dstBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v8, p8

    .local v8, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/sun/scenario/effect/impl/EffectPeer;->getTextureCoordinates([FFFFFLcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)I

    move-result v9

    move v0, v9

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/EffectPeer;->uniqueName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return-object v0
.end method

.method public isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/EffectPeer;->getRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/Renderer;->isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return v0
.end method

.method protected isOriginUpperLeft()Z
    .locals 3

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/EffectPeer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v1

    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->OPENGL:Lcom/sun/scenario/effect/Effect$AccelType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final setDestBounds(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 4

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->destBounds:Lcom/sun/javafx/geom/Rectangle;

    .line 386
    return-void
.end method

.method protected final setDestNativeBounds(II)V
    .locals 5

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/EffectPeer;->destNativeBounds:Lcom/sun/javafx/geom/Rectangle;

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 397
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/EffectPeer;->destNativeBounds:Lcom/sun/javafx/geom/Rectangle;

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 398
    return-void
.end method

.method protected setEffect(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->effect:Lcom/sun/scenario/effect/Effect;

    .line 108
    return-void
.end method

.method protected final setInputBounds(ILcom/sun/javafx/geom/Rectangle;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

    .local v2, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/EffectPeer;->inputBounds:[Lcom/sun/javafx/geom/Rectangle;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 148
    return-void
.end method

.method protected final setInputNativeBounds(ILcom/sun/javafx/geom/Rectangle;)V
    .locals 6

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

    .local v2, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/EffectPeer;->inputNativeBounds:[Lcom/sun/javafx/geom/Rectangle;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 183
    return-void
.end method

.method protected final setInputTransform(ILcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/impl/EffectPeer;->inputTransforms:[Lcom/sun/javafx/geom/transform/BaseTransform;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 156
    return-void
.end method

.method public setPass(I)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move v1, p1

    .local v1, "pass":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->pass:I

    .line 124
    return-void
.end method

.method protected setRenderState(Lcom/sun/scenario/effect/impl/state/RenderState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/EffectPeer;, "Lcom/sun/scenario/effect/impl/EffectPeer<TT;>;"
    move-object v1, p1

    .local v1, "renderState":Lcom/sun/scenario/effect/impl/state/RenderState;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/EffectPeer;->renderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    .line 116
    return-void
.end method
