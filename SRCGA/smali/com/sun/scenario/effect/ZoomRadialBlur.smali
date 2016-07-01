.class public Lcom/sun/scenario/effect/ZoomRadialBlur;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "ZoomRadialBlur.java"


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
.field private centerX:F

.field private centerY:F

.field private r:I

.field private final state:Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/ZoomRadialBlur;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move v1, p1

    .local v1, "radius":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/scenario/effect/ZoomRadialBlur;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/effect/ZoomRadialBlur;-><init>(ILcom/sun/scenario/effect/Effect;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ILcom/sun/scenario/effect/Effect;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move v1, p1

    .local v1, "radius":I
    move-object v2, p2

    .local v2, "input":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 43
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;-><init>(Lcom/sun/scenario/effect/ZoomRadialBlur;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->state:Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;

    .line 83
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ZoomRadialBlur;->setRadius(I)V

    .line 84
    return-void
.end method

.method private updatePeer()V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    const/4 v2, 0x4

    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->r:I

    add-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->r:I

    const/4 v4, 0x4

    rem-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    move v1, v2

    .line 148
    .local v1, "psize":I
    move-object v2, v0

    const-string v3, "ZoomRadialBlur"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/ZoomRadialBlur;->updatePeerKey(Ljava/lang/String;I)V

    .line 149
    return-void
.end method


# virtual methods
.method public varargs filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 13

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;
    move-object/from16 v5, p5

    .local v5, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v7, v5

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    move-object v6, v7

    .line 197
    .local v6, "bnd":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/ZoomRadialBlur;->state:Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v6

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v10, v6

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->updateDeltas(FF)V

    .line 198
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-super/range {v7 .. v12}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/ZoomRadialBlur;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    move-object v3, v6

    .line 222
    .local v3, "di":Lcom/sun/scenario/effect/Effect;
    move-object v6, v3

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v6

    move-object v4, v6

    .line 224
    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/ZoomRadialBlur;->getRadius()I

    move-result v6

    move v5, v6

    .line 225
    .local v5, "radius":I
    move-object v6, v4

    move v7, v5

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->grow(II)V

    .line 227
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ZoomRadialBlur;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method public getRadius()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ZoomRadialBlur;->r:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
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
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->UserSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ZoomRadialBlur;->state:Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    return v0
.end method

.method public setCenterX(F)V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move v1, p1

    .local v1, "centerX":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerX:F

    move v2, v3

    .line 167
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerX:F

    .line 168
    return-void
.end method

.method public setCenterY(F)V
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move v1, p1

    .local v1, "centerY":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerY:F

    move v2, v3

    .line 186
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->centerY:F

    .line 187
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/ZoomRadialBlur;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 109
    return-void
.end method

.method public setRadius(I)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move v1, p1

    .local v1, "radius":I
    move v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x40

    if-le v3, v4, :cond_1

    .line 135
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Radius must be in the range [1,64]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->r:I

    move v2, v3

    .line 138
    .local v2, "old":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->r:I

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ZoomRadialBlur;->state:Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->invalidateDeltas()V

    .line 140
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/effect/ZoomRadialBlur;->updatePeer()V

    .line 141
    return-void
.end method
