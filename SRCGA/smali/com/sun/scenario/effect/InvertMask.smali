.class public Lcom/sun/scenario/effect/InvertMask;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "InvertMask.java"


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
.field private pad:I

.field private xoff:I

.field private yoff:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/InvertMask;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move v1, p1

    .local v1, "pad":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/scenario/effect/InvertMask;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/InvertMask;-><init>(ILcom/sun/scenario/effect/Effect;)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move v1, p1

    .local v1, "pad":I
    move-object v2, p2

    .local v2, "input":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 94
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InvertMask;->setPad(I)V

    .line 95
    move-object v3, v0

    const-string v4, "InvertMask"

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InvertMask;->updatePeerKey(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/16 v3, 0xa

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/InvertMask;-><init>(ILcom/sun/scenario/effect/Effect;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sun/scenario/effect/InvertMask;)I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/InvertMask;->pad:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/effect/InvertMask;
    return v0
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/scenario/effect/CoreEffect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v3, v5

    .line 202
    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v5, Lcom/sun/javafx/geom/RectBounds;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v8

    move-object v9, v3

    .line 203
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v4, v5

    .line 204
    .local v4, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v4

    check-cast v5, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/InvertMask;->pad:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/InvertMask;->pad:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 205
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/sun/scenario/effect/InvertMask;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 208
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 10

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/InvertMask;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    move-object v3, v6

    .line 275
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v6, v3

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v6

    move-object v4, v6

    .line 277
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/InvertMask;->xoff:I

    if-nez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/InvertMask;->yoff:I

    if-eqz v6, :cond_1

    .line 278
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 279
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/InvertMask;->xoff:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/InvertMask;->yoff:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->translate(FFF)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    .end local v5    # "i":I
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/InvertMask;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public getOffsetX()I
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/InvertMask;->xoff:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return v0
.end method

.method public getOffsetY()I
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/InvertMask;->yoff:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return v0
.end method

.method public getPad()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/InvertMask;->pad:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 10

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
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
    new-instance v6, Lcom/sun/scenario/effect/InvertMask$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/scenario/effect/InvertMask$1;-><init>(Lcom/sun/scenario/effect/InvertMask;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 11

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Lcom/sun/scenario/effect/CoreEffect;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    move-object v4, v6

    .line 217
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    new-instance v6, Lcom/sun/javafx/geom/Rectangle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v5, v6

    .line 218
    .local v5, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v5

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/InvertMask;->pad:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/InvertMask;->pad:I

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 219
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask;
    return v0
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/InvertMask;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 116
    return-void
.end method

.method public setOffsetX(I)V
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move v1, p1

    .local v1, "xoff":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/InvertMask;->xoff:I

    move v2, v3

    .line 171
    .local v2, "old":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/InvertMask;->xoff:I

    .line 172
    return-void
.end method

.method public setOffsetY(I)V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move v1, p1

    .local v1, "yoff":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/InvertMask;->yoff:I

    int-to-float v3, v3

    move v2, v3

    .line 196
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/InvertMask;->yoff:I

    .line 197
    return-void
.end method

.method public setPad(I)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask;
    move v1, p1

    .local v1, "pad":I
    move v3, v1

    if-gez v3, :cond_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Pad value must be non-negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/InvertMask;->pad:I

    move v2, v3

    .line 146
    .local v2, "old":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/InvertMask;->pad:I

    .line 147
    return-void
.end method
