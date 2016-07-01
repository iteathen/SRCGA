.class public Lcom/sun/scenario/effect/ColorAdjust;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "ColorAdjust.java"


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
.field private brightness:F

.field private contrast:F

.field private hue:F

.field private saturation:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/ColorAdjust;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/ColorAdjust;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/ColorAdjust;->hue:F

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/ColorAdjust;->saturation:F

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/ColorAdjust;->brightness:F

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/scenario/effect/ColorAdjust;->contrast:F

    .line 68
    move-object v2, v0

    const-string v3, "ColorAdjust"

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/ColorAdjust;->updatePeerKey(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
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

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return-object v0
.end method

.method public getBrightness()F
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ColorAdjust;->brightness:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return v0
.end method

.method public getContrast()F
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ColorAdjust;->contrast:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return v0
.end method

.method public getHue()F
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ColorAdjust;->hue:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ColorAdjust;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
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
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return-object v0
.end method

.method public getSaturation()F
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ColorAdjust;->saturation:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return v0
.end method

.method public reducesOpaquePixels()Z
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/ColorAdjust;->getInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 225
    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/ColorAdjust;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBrightness(F)V
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move v1, p1

    .local v1, "brightness":F
    move v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Brightness must be in the range [-1, 1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ColorAdjust;->brightness:F

    move v2, v3

    .line 179
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ColorAdjust;->brightness:F

    .line 180
    return-void
.end method

.method public setContrast(F)V
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move v1, p1

    .local v1, "contrast":F
    move v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 206
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Contrast must be in the range [-1, 1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ColorAdjust;->contrast:F

    move v2, v3

    .line 209
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ColorAdjust;->contrast:F

    .line 210
    return-void
.end method

.method public setHue(F)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move v1, p1

    .local v1, "hue":F
    move v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 116
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Hue must be in the range [-1, 1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ColorAdjust;->hue:F

    move v2, v3

    .line 119
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ColorAdjust;->hue:F

    .line 120
    return-void
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/ColorAdjust;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 90
    return-void
.end method

.method public setSaturation(F)V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ColorAdjust;
    move v1, p1

    .local v1, "saturation":F
    move v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 146
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Saturation must be in the range [-1, 1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/ColorAdjust;->saturation:F

    move v2, v3

    .line 149
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/ColorAdjust;->saturation:F

    .line 150
    return-void
.end method
